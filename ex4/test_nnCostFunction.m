function test_nnCostFunction ()

  tolerance = 1e-3;

  % Test case 1
  % from Apurva Dubey https://class.coursera.org/ml-005/forum/thread?thread_id=1783
  J_exp = 10.93;

  [J] = nnCostFunction(sec(1:1:32)', 2, 4, 4, reshape(tan(1:32), 16, 2) / 5, 1 + mod(1:16,4)', 0)
  assert(J, J_exp, tolerance);

endfunction
