function test_cofiCostFunc_costReg()
% 5 / 6	Regularized Cost (cofiCostFunc.m)
    epsilon = 1e-4;

    lambda = 2;
    nu = 5;
    nm = 6;
    n = 2;
    Y = reshape(sin(1:30), 6, 5);
    R = (reshape(sin(1:30), 6, 5) > 0.5);
    params = [sin(1:12)'; cos(1:10)'];

    [J grad] = cofiCostFunc(params, Y, R, nu, nm, n, lambda);
    assert(J, 19.653869, epsilon);

    lambda = 1.5;
    nu = 4; nm = 5; n = 3;
    X = reshape(sin(1: nm*n), nm, n);
    Theta = reshape(cos(1: nu*n), nu, n);
    Y = reshape(sin(1:2:2 * nm*nu), nm, nu);
    R = Y > 0.5;
    params = [X(:); Theta(:)];

    [J grad] = cofiCostFunc(params, Y, R, nu, nm, n, lambda);
    assert(J, 16.12474, epsilon);

endfunction
