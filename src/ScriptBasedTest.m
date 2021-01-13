%% Test double class
expSolution = 'double';
actSolution = ones;
assert(isa(actSolution,expSolution))

%% Test single class
expSolution = 'single';
actSolution = ones('single');
assert(isa(actSolution,expSolution))

%% Test uint16 class
expSolution = 'uint16';
actSolution = ones('uint16');
assert(isa(actSolution,expSolution))

%% Test that fails
assert(false==true);

%% Another test that fails
assert(strcmp('correlation','causation'))
