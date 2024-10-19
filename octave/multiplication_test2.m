function multiplication_test2

  for (n=1:20)
    for (m=1:20)
      for (p=1:20)
          A=floor(10000*rand(m,n));
          B=floor(10000*rand(n,p));
          res = A*B - matrix_times_columns_matrix_mult(A,B);
          zzeros = zeros(m,p);
          if ( res != zzeros)
            error('looser');
          endif
      end
    end
  end
  %A=floor(10000*rand(10,7))
  %B=floor(10000*rand(7,2))

  %A*B - standard_matrix_mult(A,B)
  %A*B - matrix_times_columns_matrix_mult(A,B)
  %A*B - row_times_column_matrix_mult(A,B)
  %A*B - row_wise_matrix_mult(A,B)
  %A*B - column_wise_matrix_mult(A,B)

end
