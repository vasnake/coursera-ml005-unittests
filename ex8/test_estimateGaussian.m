function test_estimateGaussian()
% 1 / 6	Estimate Gaussian Parameters (estimateGaussian.m)
    epsilon = 1e-4;

    X = [sin(1:10) ; cos(1:10)]';
    [mu sigma2] = estimateGaussian(X);

    a = [0.14112
        -0.14174];
    assert(mu, a, epsilon);

    a = [0.48023
        0.47977];
    assert(sigma2, a, epsilon);

    X = reshape(sin(1:30), 5, 6);
    [mu sigma2] = estimateGaussian(X);

    a = [0.035232
        0.247005
        0.104900
        -0.187493
        -0.211269
        0.067635];
    assert(mu, a, epsilon);

    a = [0.60818
        0.32986
        0.56272
        0.45026
        0.40612
        0.59266];
    assert(sigma2, a, epsilon);

endfunction
