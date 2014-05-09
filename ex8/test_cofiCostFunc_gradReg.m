function test_cofiCostFunc_gradReg()
% 6 / 6	Gradient with regularization (cofiCostFunc.m)
    epsilon = 1e-4;

    lambda = 2;
    nu = 5;
    nm = 6;
    n = 2;
    Y = reshape(sin(1:30), 6, 5);
    R = (reshape(sin(1:30), 6, 5) > 0.5);
    params = [sin(1:12)'; cos(1:10)'];

    [J, grad] = cofiCostFunc(params, Y, R, nu, nm, n, lambda);

    %~ assert(J, 19.653869, epsilon);
    a = [2.02778
        5.57503
        1.61828
        -1.51360
        -1.91785
        -0.55883
        1.16236
        5.63134
        3.19540
        -1.08804
        -1.99998
        -1.07315
        1.76962
        -1.82848
        -3.95013
        -3.68162
        -0.82449
        2.60693
        0.55626
        -2.65439
        -4.74293
        -3.51886];
    assert(grad, a, epsilon);

    lambda = 1.5;
    nu = 4; nm = 5; n = 3;
    X = reshape(sin(1: nm*n), nm, n);
    Theta = reshape(cos(1: nu*n), nu, n);
    Y = reshape(sin(1:2:2 * nm*nu), nm, nu);
    R = Y > 0.5;
    params = [X(:); Theta(:)];

    [J grad] = cofiCostFunc(params, Y, R, nu, nm, n, lambda);

    %~ assert(J, 16.12474, epsilon);
    a = [3.36858
        2.76448
        0.25813
        -2.24246
        -1.62853
        -1.71382
        1.29724
        1.37687
        0.17433
        -0.85836
        -1.91382
        -2.61294
        0.72390
        3.17340
        1.22091
        2.58621
        -0.63997
        -3.15266
        -3.20772
        -0.46192
        1.32983
        1.70197
        -1.78420
        -3.64590
        -1.30550
        1.99832
        2.60464];
    assert(grad, a, epsilon);

endfunction
