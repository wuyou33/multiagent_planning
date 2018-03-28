function violation = CheckforColl (p,l,k,r_min)
violation = false;
if (~isempty(l))
    for i = 1:size(l,3) %Iterate through the number of obstacles (other agents)
        pj = l(:,:,i); %position vector of the i-th neighbour over k iterations
        dist = norm(p-pj(:,k));
        if dist < r_min
            violation = true;
            break;
        end
    end  
end
end