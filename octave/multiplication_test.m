function multiplication_test

  A=floor(10000*rand(10,7))
  B=floor(10000*rand(7,2))
  A*B - standard_matrix_mult(A,B)
  A*B - matrix_times_columns_matrix_mult(A,B)
  A*B - row_times_column_matrix_mult(A,B)
  A*B - row_wise_matrix_mult(A,B)
  A*B - column_wise_matrix_mult(A,B)

end
