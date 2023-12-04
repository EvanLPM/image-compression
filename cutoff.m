% Copyright (c) 2019 Kane Norman and Evan Pearlman Morales, SMU
% All rights reserved.

function k = cutoff(sigma, p)
    % Input:
    %   sigma: an array that contains the diagonal elements of matrix S (sigma1, sigma2, ..., sigmaN)
    %   p: a constant where 0 < p < 1
    % Output:
    %   k: a constant where 1 <= k <= N (locates sigma_k)

    % Calculate the denominator: sum of squares of all sigma values
    denominator = sum(sigma.^2);

    numerator = 0;
    k = 1; % Start at k=1 since we want to test all values between 1 and N

    % Use a while loop to find the minimum value of k
    while numerator < (p^2) * denominator
        numerator = numerator + sigma(k)^2;
        k = k + 1;
    end
end
