function retval = matrix_times_columns_matrix_mult (A,B)
  m = rows(A);
  p = columns(B);
  retval=zeros(m,p)
  if (columns(A) != rows(B))
    error('columns of A and rows of B dont match');
  end
  for (k=1:p)
    retval(:,k)=A*B(:,k);
  end
end
