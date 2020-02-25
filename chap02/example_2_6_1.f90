program example_2_6_1
	implicit none
	!! :: variables --- --- --- --- --- --- --- --- --- ---
	integer,dimension(4) :: left = (/ 1,2,3,4 /)
	integer,dimension(4) :: right = (/ 0,2,0,0 /)
	integer,dimension(4) :: Element = 0 , Vector = 0
	!! :: treatment --- --- --- --- --- --- --- --- --- ---
	!! :: 初期値として，left を Element に代入．
	!! :: これで，すべての要素に代入可能である．
	Element = left									
	!! :: 要素ごとの足し算
	Element(2) = left(2) + right(2)
	!! :: Vector 全体での足し算
	Vector = left + right
	write(6,'(4(i3.1x))')Element(1),Element(2),Element(3),Element(4)
	write(6,'(4(i3.1x))')Vector
	write(6,*)""
	write(6,*)"end program"
	stop
end program example_2_6_1
