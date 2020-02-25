program example_2_8_0
	implicit none
	integer :: a = 0
	write(6,*)"Please enter integer : "
	read(5,*)a
	if (mod(a,2) == 0) then 
		write(6,*)a,"is even."
	else
		write(6,*)a,"is odd."
	end if
	write(6,*)"end program"
	stop
end program example_2_8_0
