
% long
[n,p] = size(ThLg);
i=1;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CDa');
i=2;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CDq');
i=3;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CDde');

i=4;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CLa');
i=5;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CLq');
i=6;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('CLde');

i=7;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('Cma');
i=8;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('Cmq');
i=9;figure,plot(data.time((n-200):n),ThLg((n-200):n,i));title('Cmde');

% lat
[n,p] = size(ThLt);

i=1;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cyb');
i=2;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cyp');
i=3;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cyr');
i=4;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cyda');
i=5;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cydr');

i=5+1;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Clb');
i=5+2;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Clp');
i=5+3;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Clr');
i=5+4;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Clda');
i=5+5;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cldr');

i=10+1;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cnb');
i=10+2;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cnp');
i=10+3;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cnr');
i=10+4;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cnda');
i=10+5;figure,plot(data.time((n-200):n),ThLt((n-200):n,i));title('Cndr');

