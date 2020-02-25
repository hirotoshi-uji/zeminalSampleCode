program example_2_6_3
	implicit none
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer :: i = 0
	integer,dimension(4,3) :: left = 0
	integer,dimension(4,3) :: Element = 0 
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: 初期値の設定 :: 反復計算は後に解説あり．
	do i = 1,3 
		left(:,i) = (/ 1,2,3,4 /)
	end do
	Element = left
	!! :: 足し算
	Element(2,:) = left(2,:) + 2
	!! :: 出力 :: 反復計算は後に解説あり．
	do i = 1,4
		write(6,'(3(i3.1x))')Element(i,1),Element(i,2),Element(i,3)
	end do
	write(6,*)""
	write(6,*)"end program"
	stop
end program example_2_6_3
