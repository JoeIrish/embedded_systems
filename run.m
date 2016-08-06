tic
payLoad = [190,600,0.5,0.5,910,40,32];
counter = 1;
E = zeros(1,32432400);
first = true;

for i=1:15
    fprintf('i = %i\n',i);
    for j=1:15
        if j == i
            continue;
        end
        fprintf('j = %i\n',j);
        
        for k=1:15
            if (k==i) || (k==j)
                continue;
            end
            
            for l=1:15
                if (l==i) || (l==j) || (l==k)
                    continue
                end
               
                for m=1:15
                    if(m==i) || (m==j) || (m==k) || (m==l)
                        continue;
                    end
                   
                    for n=1:15
                        if(n==i) || (n==j) || (n==k) || (n==l) || (n==m)
                            continue;
                        end 
                        
                        for o=1:15
                            if(o==i) || (o==j) || (o==k) || (o==l) || (o==m) || (o==n)
                                continue;
                            end 
                            
                            %% Write code here
                            placement = [i j k l m n o];
                            energy = calcEnergy( placement, payLoad );
                            
                            if first
                                minEnergy   = energy;
                                comb        = placement;
                                first = false;
                            end
                            
                            if energy < minEnergy
                                minEnergy   = energy;
                                comb        = placement;
                            end
                            
                            E(counter) = energy;
                            counter = counter +1;
                        end
                    end
                end
            end
        end
    end
end

time = toc;