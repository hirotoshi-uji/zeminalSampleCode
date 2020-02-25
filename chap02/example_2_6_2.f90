program example_2_6_2
	implicit none
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer,dimension(4) :: left = (/ 1,2,3,4 /)
	integer,dimension(4) :: Element = 0 , Vector = 0
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: 要素ごとにスカラー倍
	Element(1) = 2 * left(1)
	Element(2) = 2 * left(2)
	Element(3) = 2 * left(3)
	Element(4) = 2 * left(4)
	!! :: Vector 全体へスカラー倍
	Vector = 2 * left
	write(6,'(4(i3.1x))')Element(1),Element(2),Element(3),Element(4)
	write(6,'(4(i3.1x))')Vector
	write(6,*)""
	write(6,*)"end program"
	stop
end program example_2_6_2
