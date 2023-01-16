function f = palindrome(in)

% Function written by Eleni Christoforidou in MATLAB R2022b.

% This function takes one input argument, a char vector and recursively
% determines whether that argument is a palindrome. The function returns
% true or false. Capitalisation, spaces, and punctuation all matter.

pad='';
if length(in)==1
    first_half=in;
    second_half=in;
else %split input in two
    tf=isspace(in);
    if mod(length(tf),2)==1 %odd number of characters
        first_half=in(1:floor(length(in)/2));
        second_half=in(ceil(length(in)/2)+1:end);
        if tf(length(first_half)+1)==1
            pad=' ';
        end
    else %even number of characters
        first_half=in(1:length(in)/2);
        second_half=in(length(in)/2+1:end);
    end
end

if first_half(1)==second_half(end)
    if length(first_half)==1
        f=true;
    else
        f=palindrome([first_half(2:end),pad,second_half(1:end-1)]);
    end
else
    f=false;
end
end