function ci2mean(n1, p1, n2, p2, ci)
    ;; Not completed!!!
    if ~exist('hyp','var')
        hyp = 0;
    end
    tstat =  (mu1 - hyp) / (sd1 / sqrt(n1))
    alpha = 1 - ci;
    sprintf("alpha = 1 - ci = %f", alpha)
    z = norminv(1 - (alpha/2));
    sprintf("z = norminv(1 - (alpha/2)) = %f", z)
    err = z * serror;
    
    
end