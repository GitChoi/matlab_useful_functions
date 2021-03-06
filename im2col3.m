function out = im2col3(in,ps,stride)
% GitChoi
% im2col with 'stride' option

ind1 = 1:stride:size(in,1)-ps+1;
ind2 = 1:stride:size(in,2)-ps+1;
out = zeros(ps^2,length(ind1)*length(ind2),'single');
ii = 1;
for j = ind2
    for i = ind1
        pp = in(i:i+ps-1,j:j+ps-1);
        out(:,ii) = pp(:);
        ii = ii+1;
    end    
end