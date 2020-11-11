function contTable(x)
    rowSum = sum(x,2)
    colSum = sum(x,1)
    totSum = sum(x,'all')
    
    sprintf("Expected count (x,y) = col(y)*row(x)/sum table")
    expectedCounts = (rowSum*colSum) / totSum
    
    chisquare = sum((x-expectedCounts).^2./(expectedCounts),'all')
    sprintf("chisquare = Sum((ei - oi)^2 / ei) = %f", chisquare);
    
    dof = (length(rowSum)-1)*(length(colSum) - 1);
    sprintf("Dof = (#rows - 1)(#cols - 1) = %d",dof)
    
    chi2cdfVal = chi2cdf(chisquare,dof,'upper') 
    estrength(chi2cdfVal)
end