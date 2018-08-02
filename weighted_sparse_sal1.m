% Copyright 2018 National Institute of Advanced Industrial Science and Technology (AIST)
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%    http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.

function sal = weighted_sparse_sal1(F,D,type)

Dictionary=D';

alpha=OMP(F',Dictionary,320);
recn_error=(F'-D'*alpha').^2; 



sal_sum=sum(abs(recn_error)); 
if strcmp(type,'back') 
    sal=sal_sum;
elseif strcmp(type,'sal')
    sal=mat2gray(exp(-1*sal_sum));%-5
end
end
