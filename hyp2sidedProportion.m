function result = hyp2sidedProportion(n1, p1, n2, p2, hyp)
    if ~exist('hyp','var')
        hyp = 0;
    end
    ph1 = p1/n1;
    sprintf("ph1 = p1/n1 = %f", ph1)
    ph2 = p2/n2;
    sprintf("ph2 = p2/n2 = %f", ph2)
    phdiff = ph1-ph2;
    sprintf("phdiff = ph1-ph2 = %f", phdiff);
    
    pooledP = (p1 + p2) / (n1 + n2);
    sprintf("pooledP = (p1 + p2) / (n1 + n2) = %f", pooledP)
    
    z = ((ph1 - ph2) - hyp)/(sqrt(pooledP * (1 - pooledP))*sqrt((1/n1) + (1/n2)));
    sprintf("z = ((ph1 - ph2) - hyp)/(sqrt(pooledP * (1 - pooledP))*sqrt((1/n1) + (1/n2))) = %f", z)
    
    sprintf("P(<=z) =>  = %f| %s", normcdf(z), estrength(normcdf(z)))
    sprintf("P(>=z) =>  = %f| %s", 1 - normcdf(z), estrength(1 - normcdf(z)))
    sprintf("P(!=z) =>  = %f| %s", 2 * min(normcdf(z), 1 - normcdf(z)), estrength(2 * min(normcdf(z), 1 - normcdf(z))))
end