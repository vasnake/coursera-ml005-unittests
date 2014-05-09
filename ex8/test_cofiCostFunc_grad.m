function test_cofiCostFunc_grad()
% 4 / 6	Collaborative Filtering Gradient (cofiCostFunc.m)
    epsilon = 1e-4;

    lambda = 0;
    nu = 5;
    nm = 6;
    n = 2;
    Y = reshape(sin(1:30), 6, 5);
    R = (reshape(sin(1:30), 6, 5)>0.5);
    params = [sin(1:12)';cos(1:10)'];

    [J, grad] = cofiCostFunc(params, Y, R, nu, nm,n, lambda);

    %~ assert(J, 8.3660, epsilon);
    a = [0.34484
        3.75643
        1.33604
        0.00000
        0.00000
        0.00000
        -0.15161
        3.65262
        2.37117
        0.00000
        0.00000
        0.00000
        0.68902
        -0.99619
        -1.97015
        -2.37433
        -1.39181
        0.68659
        -0.95155
        -2.36339
        -2.92067
        -1.84072];
    assert(grad, a, epsilon);

    lambda = 0;
    nu = 4; nm = 5; n = 3;
    X = reshape(sin(1: nm*n), nm, n);
    Theta = reshape(cos(1: nu*n), nu, n);
    Y = reshape(sin(1:2:2 * nm*nu), nm, nu);
    R = Y > 0.5;
    params = [X(:); Theta(:)];

    [J grad] = cofiCostFunc(params, Y, R, nu, nm, n, lambda);

    %~ assert(J, 5.9392, epsilon);
    a = [2.106377
        1.400529
        0.046447
        -1.107255
        -0.190147
        -1.294701
        0.311756
        -0.107167
        -0.443845
        -0.042326
        -0.413830
        -1.808083
        0.093651
        1.687489
        0.245479
        1.775752
        -0.015751
        -1.667675
        -2.227259
        -0.887412
        -0.110425
        0.571119
        -1.565949
        -2.279203
        -0.046896
        1.991685
        1.338858];
    assert(grad, a, epsilon);

endfunction
