function y = add_one(x)
    if true
        assert(isnumeric(x), 'Input must be numeric.')
        y = x + 1;
    else
        %Never hit
        y = x + 2
    end
end
