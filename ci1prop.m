function ci1prop(n, p, ci)
    ph1 = p/n;
    sprintf("ph1 = p1/n1 = %f", ph1)

    serror = sqrt(ph1*(1-ph1)/n);
    sprintf("serror = sqrt(ph1*(1-ph1)/n) = %f", serror)
    alpha = 1 - ci;
    sprintf("alpha = 1 - ci = %f", alpha)
    z = norminv(1 - (alpha/2));
    sprintf("z = norminv(1 - (alpha/2)) = %f", z)
    err = z * serror;
    sprintf("err = z * serror = %f", err)
    sprintf("phdiff ± err = %f ± %f", ph1, err)
    sprintf("range of [%f,%f]", ph1 - err, ph1 + err)
end