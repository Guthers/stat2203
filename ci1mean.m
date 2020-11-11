function ci1mean(n1, m1,sd1, ci)
    alpha = 1 - ci;
    sprintf("alpha = 1 - ci = %f", alpha)
    z = tinv(1 - (alpha/2),n1-1);
    sprintf("z = tinv(1 - (alpha/2),n1-1) = %f", z)
    
    serror = sd1 / sqrt(n1);
    sprintf("err = sd1 / sqrt(n1) = %f", serror)
    
    sprintf("CI is mean ± (z*err) = %f ± %f", m1, z*serror)
    sprintf("A range of [%f,%f]", (m1 - z*serror),(m1 + z*serror))
end