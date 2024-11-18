function retval = standard_matrix_mult (A,B)
  m = rows(A);
  n = columns(A);
  p = columns(B);
  retval=zeros(m,p)
  if (columns(A) != rows(B))
    error('columns of A and rows of B dont match');
  end
  for (j=1:m)
    for (k=1:p)
      for (r=1:n)
        retval(j,k)=retval(j,k)+A(j,r)*B(r,k);
      end
    end
  end
end
