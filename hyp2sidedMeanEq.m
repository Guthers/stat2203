function result = hyp2sided(n1, mu1, sd1, n2, mu2, sd2, hyp)
    if ~exist('hyp','var')
        hyp = 0;
    end
    poolsqrd  =  (((n1 - 1) * sd1^2) + (n2 - 1) * sd2^2)/ (n1 + n2 - 2)
    tstat =  ((mu1 - mu2) - hyp) / (sqrt(poolsqrd)*sqrt((1/n1) + (1/n2)))
    pval = 2 * min(tcdf(tstat,n1+n2),tcdf(tstat,n1+n2,'upper'))
    result = estrength(pval);
end