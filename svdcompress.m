% Copyright (c) 2019 Kane Norman and Evan Pearlman Morales, SMU
% All rights reserved.

function [Z, ratio] = svdcompress(X, block_size, compression_ratio)
    % Input:
    %   X: Image to be compressed
    %   block_size: Desired block size
    %   compression_ratio: Constant between 0 and 1
    % Output:
    %   Z: New compressed image
    %   ratio: Compression ratio

    [m, n] = size(X); % m: number of rows, n: number of columns
    residual_bottom = mod(m, block_size); % Residual on the bottom of the image
    residual_right = mod(n, block_size); % Residual on the right of the image
    
    Z = X; % Store X as Z. We will then return Z as a compressed image of A.

    total_elements = (n * residual_bottom) + (m * residual_right) - (residual_bottom * residual_right);

    % Use nested loops to break X into bxb blocks
    for i = 1:block_size:m - block_size
        for j = 1:block_size:n - block_size
            block = X(i:i + (block_size - 1), j:j + (block_size - 1)); % Extract a bxb block

            [U, S, V] = svd(block); % Compute the SVD of the bxb block
            singular_values = diag(S); % Extract the singular values

            k = cutoff(singular_values, compression_ratio); % Determine the cutoff value

            % When k >= b/2, use A instead of Ak for efficiency
            if k >= block_size / 2
                total_elements = total_elements + (block_size^2);
            else
                Ak = U(:, 1:k) * S(1:k, 1:k) * V(:, 1:k)'; % Compute Ak
                total_elements = total_elements + k * (2 * block_size + 1);
                block = Ak; % Use Ak instead of A
            end

            Z(i:i + (block_size - 1), j:j + (block_size - 1)) = block; % Assign the block to Z
        end
    end

    ratio = total_elements / (m * n); % Calculate compression ratio
end
