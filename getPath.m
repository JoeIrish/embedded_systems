function [ xNet, yNet ] = getPath( prcNr )
%GETPATH Summary of this function goes here
%   Detailed explanation goes here
    switch(prcNr)
        case 1        
            xNet = [1     1     1     1;
                    0     0     0     0;
                    0     0     0     0];
                    
        case 2        
            xNet = [0     1     1     1;
                    0     0     0     0;
                    0     0     0     0];
                    
        case 3      
            xNet = [0     0     1     1;
                    0     0     0     0;
                    0     0     0     0];
                    
        case 4        
            xNet = [0     0     0     1;
                    0     0     0     0;
                    0     0     0     0];
                    
        case 5        
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     0     0     0];
        
        case 6 
            xNet = [0     0     0     0;
                    1     1     1     1;
                    0     0     0     0];

        case 7 
            xNet = [0     0     0     0;
                    0     1     1     1;
                    0     0     0     0];

        case 8 
            xNet = [0     0     0     0;
                    0     0     1     1;
                    0     0     0     0];

        case 9 
            xNet = [0     0     0     0;
                    0     0     0     1;
                    0     0     0     0];

        case 10
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     0     0     0];

        case 11 
            xNet = [0     0     0     0;
                    0     0     0     0;
                    1     1     1     1];

        case 12
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     1     1     1];

        case 13
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     0     1     1];

        case 14 
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     0     0     1];

        case 15 
            xNet = [0     0     0     0;
                    0     0     0     0;
                    0     0     0     0];
    end
    
    if prcNr <= 5
        yNet =  [0     0     0     0     1;
                 0     0     0     0     0];
    elseif prcNr <= 10
        yNet =  [0     0     0     0     0;
                 0     0     0     0     0];
    else
        yNet =  [0     0     0     0     0;
                 0     0     0     0     1];
    end
end

