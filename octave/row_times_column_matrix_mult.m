function retval = row_wise_matrix_mult (A,B)
  m = rows(A);
  n = columns(A); % = rows(B)
  p = columns(B);
  retval=zeros(m,p)
  if (columns(A) != rows(B))
    error('columns of A and rows of B dont match');
  end
  for (j=1:m)
    for (k=1:p)
      retval(j,k)=A(j,:)*B(:,k);
    end
  end
end