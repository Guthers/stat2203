function ci2prop(n1, p1, n2, p2, ci)
    ph1 = p1/n1;
    sprintf("ph1 = p1/n1 = %f", ph1)
    ph2 = p2/n2;
    sprintf("ph2 = p2/n2 = %f", ph2)
    phdiff = ph1-ph2;
    sprintf("phdiff = ph1-ph2 = %f", phdiff);
    serror = sqrt(((ph1*(1-ph1))/n1)+((ph2*(1-ph2))/n2));
    sprintf("serror = sqrt(((ph1*(1-ph1))/n1)+((ph2*(1-ph2))/n2)) = %f", serror)
    alpha = 1 - ci;
    sprintf("alpha = 1 - ci = %f", alpha)
    z = norminv(1 - (alpha/2));
    sprintf("z = norminv(1 - (alpha/2)) = %f", z)
    err = z * serror;
    sprintf("err = z * serror = %f", err)
    sprintf("phdiff ± err = %f ± %f", phdiff, err)
end