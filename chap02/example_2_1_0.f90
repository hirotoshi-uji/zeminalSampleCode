program example_2_1_0
	implicit none	!! :: 暗黙の型宣言といい，後に解説あり．
	!! :: ===========================================
	!! :: 以下，変数の宣言
	integer a,b
	real(8) :: c = 5.3d0
	!! :: ===========================================
	!! :: ===========================================
	!! :: 以下，処理内容
	a = 2
	b = a * 3
	c = c * dble(a)
	print *, a,b,c
	!! :: ===========================================
end program example_2_1_0
