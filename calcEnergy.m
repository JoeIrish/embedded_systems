function [ E ] = calcEnergy( placement, payLoad )
%CALCENERGY Summary of this function goes here
%   Detailed explanation goes here
maxNumber = length(placement);
xNetSum = zeros(3,4);
yNetSum = zeros(2,5);
xNet = zeros(3,4,maxNumber);
yNet = zeros(2,5,maxNumber);
n = zeros(maxNumber);

%% Calculate 
for i=1:maxNumber
    [xNetTmp,yNetTmp] = getPath(placement(i));
    xNet(:,:,i) = xNetTmp;
    yNet(:,:,i) = yNetTmp;
    xNetSum = xNetSum + xNetTmp;
    yNetSum = yNetSum + yNetTmp;
    
    n(i)       = sum(xNetTmp(:)) + sum(yNetTmp(:));
end

E = 0;
for i=1:maxNumber
    sharedConnectionX = xNetSum .* xNet(:,:,i);
    sharedConnectionX = sum(sharedConnectionX(:));
    sharedConnectionY = yNetSum .* yNet(:,:,i);
    sharedConnectionY = sum(sharedConnectionY(:));
    E = E + (n(i) * payLoad(i)) + (sharedConnectionX + sharedConnectionY) * payLoad(i);
end

end

