function test_selectThreshold()
% 2 / 6	Select Threshold (selectThreshold.m)
    epsilon = 1e-4;

    yval = floor(abs(tan(1:10000)))' > 0.5;
    pval = multivariateGaussian(sin(1:10000)', 0, 0.01);

    [bestEpsilon bestF1] = selectThreshold(yval, pval);

    assert(bestEpsilon, 0.0039894, epsilon);
    assert(bestF1, 0.79685, epsilon);

    Y = reshape(sin(1:2:40), 5, 4);
    R = Y > 0.5;
    pval = [abs(Y(:)) ; 0.001; 1];
    yval = [R(:) ; 1; 0];

    [bestEpsilon bestF1] = selectThreshold(yval, pval);

    assert(bestEpsilon, 1, epsilon);
    assert(bestF1, 0.55172, epsilon);

endfunction
