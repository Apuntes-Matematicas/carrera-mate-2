% This is a practical proof for my recurrence solution. The output
% turns out to be 212.7695 which is wrong because it should be 462.
% So this program proves I was wrong (check class notes, I missed lots
% of scenarios when discarded couples overlap.

a=f(15);
a=a/(factorial(5));
a=a/32
function x=f(n)
    if n<=7
        x=n
    else
        x=n*(f(n-3)+f(n-2))
    end
end