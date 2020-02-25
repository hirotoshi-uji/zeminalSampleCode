program example_2_4_0
	implicit none	!! :: 暗黙の型宣言といい，後に解説あり．
	write(6,'(4(f4.1x))')-1.5,-0.5,0.5,1.5
	write(6,*)""
	write(6,'(4(i4.1x),a)')int(-1.5),int(-0.5),int(0.5),int(1.5),"int"
	write(6,'(4(i4.1x),a)')nint(-1.5),nint(-0.5),nint(0.5),nint(1.5),"nint"
	write(6,'(4(i4.1x),a)')ceiling(-1.5),ceiling(-0.5),ceiling(0.5),ceiling(1.5),"ceiling"
	write(6,'(4(i4.1x),a)')floor(-1.5),floor(-0.5),floor(0.5),floor(1.5),"floor"
	write(6,*)"end program"
	stop
end program example_2_4_0
