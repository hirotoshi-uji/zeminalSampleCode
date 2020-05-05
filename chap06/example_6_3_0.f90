program example_6_3_0
	implicit none
	!! :: parameter --- --- --- --- --- --- --- --- --- ---
	integer,parameter :: fnumDAT = 11
	integer,parameter :: Nj = 100
	real(8),parameter :: pi = acos(-1d0)
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer :: i = 0 , j = 0 , jp1 = 0
	real(8) :: dx , xd 
	!! :: dx は，空間刻み幅 h のことで，xd は，その逆数 ( 1 / dx ) のこと．
	real(8),dimension(0:Nj-1) :: x , y , y_pr , y_ex
	!! :: _pr は，prime の略　筆者は，微分された関数にこれを付している．
	!! :: なお，dy とするほうが一般的な気がする．
	!! :: y_ex は，exact であり，解析解との比較のために宣言している．
	character(20) :: fnameDAT = "./Re_6_3_0_diff.dat"
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: 初期値の設定
	dx = 1d0 / dble(Nj)
	xd = dble(Nj) 
	do j = 0,Nj-1
		x(j) = dble(j) * dx
		y(j) = cos( 2d0 * pi * dble(j) * dx )  
	end do
	!! :: 微分計算
	do j = 0 , Nj-1
		jp1 = mod( j+1 , Nj )
		y_pr(j) =( y(jp1) - y(j) ) * xd 
		y_ex(j) = - sin( 2d0 * pi * dble(j) * dx )
	end do 
	y_pr = y_pr / ( 2d0 * pi )
	!! :: 比較しやすくため，値域を [-1,1] にした
	!! :: 行列の出力
	open( unit = fnumDAT, file = fnameDAT, action = 'write', form = 'formatted', status = 'replace' ) 
	do i = 0,Nj-1
		write(fnumDAT,'(4(f8.4),x)')x(i),y(i),y_pr(i),y_ex(i)
	end do
	close(fnumDAT)
	write(6,*)""
	write(6,*)"end program"
	stop
end program example_6_3_0
