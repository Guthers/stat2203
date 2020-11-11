function result = estrength(x)
    if x < 0.01
        result = 'strong';
    elseif x < 0.05
        result = 'moderate';
    elseif x < 0.1
        result = 'weak';
    else
        result = 'inconclusive';
    end
end