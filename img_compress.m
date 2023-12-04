% Copyright (c) 2019 Kane Norman and Evan Pearlman Morales, SMU
% All rights reserved.

function img_compress
    % Input: None
    % Output: None

    % Load and preprocess the image
    A = imread('image.jpg');
    X0 = double(rgb2gray(A));
    block_size = 8;
    compression_ratio = 0.5; 

    % Compress the image using SVD
    [Z, ratio] = svdcompress(X0, block_size, compression_ratio);

    % Display the compressed image
    figure
    colormap('gray');
    label = sprintf('SVD compression: ratio=%8.4f, error=%8.4f', ratio, norm(Z - X0, 'fro') / norm(X0, 'fro'));
    imagesc(Z);
    title(label);
end
