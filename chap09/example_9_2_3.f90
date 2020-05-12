program example_9_2_3
	implicit none
	!! :: parameter --- --- --- --- --- --- --- --- --- ---
	integer,parameter :: fnum = 11
	character(30) :: fname = "./Result/adv_t00000.dat"
	real(8),parameter :: x0 = 0d0								!! :: 区間下限
	real(8),parameter :: xn = 1d0 								!! :: 区間上限
	real(8),parameter :: dx = 1d-2								!! :: 空間刻み
	real(8),parameter :: xd = 1d0 / dx						!! :: 空間刻み逆数
	integer,parameter :: Nj = int( ( xn - x0 ) * xd )		!! :: 空間ステップ数
	
	real(8),parameter :: t0 = 0d0								!! :: 開始時刻
	real(8),parameter :: tn = 1.2d0								!! :: 終了時刻
	real(8),parameter :: dt = 1d-4								!! :: 時間刻み
	real(8),parameter :: td = 1d0 / dt							!! :: 時間刻みの逆数
	integer,parameter :: Nt = int( ( tn - t0 ) * td )		!! :: 時間ステップ数
	
	real(8),parameter :: u = 1d0 								!! :: 移流速度
	real(8),parameter :: pi = acos(-1d0)  					!! :: 円周率
	
	real(8),parameter :: r_CFL = u * dt * xd				!! :: Courant 条件
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer :: i = 0
	integer :: j = 0 , jp1 = 0 , jm1 = 0
	real(8),dimension(0:Nj-1) :: x = 0d0 , y = 0d0 , y_pr = 0d0 , y_new = 0d0
	
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: Courant 条件の判定
	if( r_CFL >= 1d0 .OR. r_CFL <= 0 ) then
		write(6,*)"Courant condition is unsuitable. So, program is stopped."
		stop
	end if
	!! :: 初期化
	do j = 0,Nj/2
		x(j) = x0 + dble(j) * dx
		y(j) = sin( 2d0 * pi * dble(j) * dx )
	end do
	do j = Nj/2 + 1 , Nj-1
		x(j) = x0 + dble(j) * dx
		y(j) = 0d0
	end do
	!! :: 初期値の保存
	open(unit = fnum,file=fname,action='write',form='formatted',status='replace')
	do j = 0,Nj-1
		write(fnum,'(2(f10.5))')x(j),y(j)
	end do
	close(fnum)
	!! :: 移流方程式を解く
	do i = 1 , Nt 
		do j = 0,Nj-1
			jp1 = mod(j+1,Nj) ; jm1 = mod(j-1 + Nj , Nj)
			y_pr(j) = ( y(jp1) - y(jm1) ) * 0.5d0 * xd
		end do
		y_new = y - u * y_pr * dt
		y = y_new
		
		if( mod( i , Nt/120 ) == 0 ) then
			write(fname(15:19),'(i5.5)')i
			open(unit = fnum,file=fname,action='write',form='formatted',status='replace')
			do j = 0,Nj-1
				write(fnum,'(2(f10.5))')x(j),y(j)
			end do
		end if
	end do
	write(6,*)"end program"
	stop
end program