program example_2_7_0
	implicit none
	integer :: sum = 0 , i = 0
	do i = 1,10									!! :: 反復計算
		sum = sum + i
		!! :: i は，反復の度に値が更新されるので，1から順に足し上げることになる．
	end do
	write (6,*) "sum = ",sum	
	write(6,*)"end program"
	stop
end program example_2_7_0
