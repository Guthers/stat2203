function hyp2Mean(n1, mu1, sd1, n2, mu2, sd2, hyp)
    if ~exist('hyp','var')
        hyp = 0;
    end
    poolsqrd  =  (((n1 - 1) * sd1^2) + (n2 - 1) * sd2^2)/ (n1 + n2 - 2);
    sprintf("poolsqrd  =  (((n1 - 1) * sd1^2) + (n2 - 1) * sd2^2)/ (n1 + n2 - 2) = %f",poolsqrd)
    
    tstat =  ((mu1 - mu2) - hyp) / (sqrt(poolsqrd)*sqrt((1/n1) + (1/n2)));
    sprintf("tstat =  ((mu1 - mu2) - hyp) / (sqrt(poolsqrd)*sqrt((1/n1) + (1/n2))) = %f", tstat)

    EQpval = 2 * min(tcdf(tstat,n1+n2-2),tcdf(tstat,n1+n2-2,'upper'));
    sprintf("EQpval = 2 * min(tcdf(tstat,n1+n2-2),tcdf(tstat,n1+n2-2,'upper')) | %f | %s", EQpval, estrength(EQpval))
    GTpval = tcdf(tstat,n1+n2-2,'upper');
    sprintf("GTpval = tcdf(tstat,n1+n2-2,'upper') | %f | %s", GTpval, estrength(GTpval))
    LTpval = tcdf(tstat,n1+n2-2);
    sprintf("LTpval = tcdf(tstat,n1+n2-2) | %f | %s", LTpval, estrength(LTpval))
end