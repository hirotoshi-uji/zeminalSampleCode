program example_2_9_0
	implicit none
	!! :: parameter --- --- --- --- --- --- --- --- --- ---
	integer,parameter :: fnumDAT = 11
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer :: i = 0
	integer,dimension(4,4) :: A = 0 , B = 0
	integer,dimension(4,4) :: C = 0
	character(20) :: fnameDAT_A = "./matrixA.dat"
	character(20) :: fnameDAT_B = "./matrixB.dat"
	character(20) :: fnameDAT_C = "./matrixC.dat"
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: 行列の入力
	open( unit = fnumDAT, file = fnameDAT_A, action = 'read', form = 'formatted', status = 'old' ) 
	do i = 1,4
		read(fnumDAT,*)A(i,1),A(i,2),A(i,3),A(i,4)
	end do
	close(fnumDAT)
	open( unit = fnumDAT, file = fnameDAT_B, action = 'read', form = 'formatted', status = 'old' ) 
	do i = 1,4
		read(fnumDAT,*)B(i,1),B(i,2),B(i,3),B(i,4)
	end do
	close(fnumDAT)
	!! :: 行列の足し算
	C = A + B
	!! :: 行列の出力
	open( unit = fnumDAT, file = fnameDAT_C, action = 'write', form = 'formatted', status = 'replace' ) 
	do i = 1,4
		write(fnumDAT,*)C(i,1),C(i,2),C(i,3),C(i,4)
	end do
	close(fnumDAT)
	write(6,*)""
	write(6,*)"end program"
	stop
end program example_2_9_0
