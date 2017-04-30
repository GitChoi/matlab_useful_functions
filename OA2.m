function ims = OA2(imsv,psh,stride,sh)
% GitChoi - GitHub

ims = zeros(sh);
imsw = zeros(sh);
ii = 0;
for j = 1:stride:sh(2)-psh+1
    for i = 1:stride:sh(1)-psh+1
        ii = ii+1;
        ims(i:i+psh-1,j:j+psh-1) = ims(i:i+psh-1,j:j+psh-1) + reshape(imsv(:,ii),[psh,psh]);
        imsw(i:i+psh-1,j:j+psh-1) = imsw(i:i+psh-1,j:j+psh-1) + 1;
    end
end
ims = ims./imsw;










