function retval = row_wise_matrix_mult (C,R)
  m = rows(C);
  c = columns(C); % = rows(R)
  n = columns (R);
  retval=zeros(m,n);
  if (columns(C) != rows(R))
    error('columns of C and rows of R dont match');
  end
  for (j=1:m)
    for (i=1:c)
      retval(j,:) = retval(j,:) + C(j,i) * R(i,:);
    end
  end
end
