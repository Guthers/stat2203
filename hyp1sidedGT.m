function result = hyp1sidedGT(n1, mu1, sd1, hyp)
    if ~exist('hyp','var')
        hyp = 0;
    end
    tstat =  (mu1 - hyp) / (sd1 / sqrt(n1))
    pval = tcdf(tstat,n1-1,'upper')
    result = estrength(pval);
end