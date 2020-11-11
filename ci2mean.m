function result = ci2mean(n1, mu1, sd1, n2, mu2, sd2, ci)
    if ~exist('hyp','var')
        hyp = 0;
    end
    poolsqrd  =  (((n1 - 1) * sd1^2) + (n2 - 1) * sd2^2)/ (n1 + n2 - 2)
    tstat =  ((mu1 - mu2) - hyp) / (sqrt(poolsqrd)*sqrt((1/n1) + (1/n2)))
    pval = tcdf(tstat,n1+n2-2)
    result = estrength(pval);

    alpha = 1 - ci;
    sprintf("alpha = 1 - ci = %f", alpha)
    z = tinv(1 - (alpha/2),n1+n2-2);
    sprintf("t_dof_alpha = tinv(1 - (alpha/2),n1+n2-2) = %f", z)
    
    serror = sqrt(poolsqrd)*sqrt((1/n1) + (1/n2));
    sprintf("err = sqrt(poolsqrd)*sqrt((1/n1) + (1/n2)) = %f", serror)
    
    sprintf("CI is (mu1-mu2) ± (z*err) = %f ± %f", (mu1-mu2), z*serror)
    sprintf("A range of [%f,%f]", ((mu1-mu2) - z*serror),((mu1-mu2) + z*serror))
    
end