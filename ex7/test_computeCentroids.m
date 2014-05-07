function test_computeCentroids()
% 2 / 5	Compute Centroid Means (computeCentroids.m)

    epsilon = 1e-4;

    X = reshape(cos(1:30), 15, 2);
    idx = (1 + mod(1:15, 3))';
    K = 3;
    centroids = computeCentroids(X, idx, K);
    a = [-0.171357   0.079776
        0.141787  -0.188064
        -0.027364  -0.100211];
    assert(centroids, a, epsilon);

    X = reshape(tan(1:45), 15, 3);
    idx = (1 + mod(1:15, 5))';
    K = 5;
    centroids = computeCentroids(X, idx, K);
    a = [-1.196049   -1.433899    0.325458
        -74.894815   -0.016038    2.489811
        -0.649817    0.076355    0.703874
        -2.159746    0.056470  -25.500364
        2.650037   -0.365388    1.002920];
    assert(centroids, a, epsilon);

endfunction
