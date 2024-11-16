function retval = column_wise_matrix_mult (C,R)
  m = rows(C);
  c = columns(C);
  n = columns (R);
  retval=zeros(m,n);
  if (c != rows(R))
    error('columns of C and rows of R dont match');
  end
  for (k=1:n)
    for (i=1:c)
      retval(:,k)=retval(:,k)+C(:,i)*R(i,k);
    end
  end
end

