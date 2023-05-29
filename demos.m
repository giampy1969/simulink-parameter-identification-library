function tbxStruct  = demos

%DEMOS Demo list for the PIL Library.

% Version 2.4
% Giampiero Campa 5-Nov-2003

if nargout == 0, demo blockset; return; end

tbxStruct.Name='Parameter Identification';
tbxStruct.Type='Blockset';

tbxStruct.Help={
   
   'The Parameter Identification Library consists in a collection of blocks'
   'that implement several parameter identification schemes in simulink.'
};

 tbxStruct.DemoList = { ' PIL Blockset',           'pil';
    ' Beaver Example',        'beapilpath=which(''pil'');path(path,[ beapilpath(1:length(beapilpath)-8) ''\examples'' ]);clear beapilpath; load beadata; beapil;' 
    ' F22 Example'            'f22pilpath=which(''pil'');path(path,[ f22pilpath(1:length(f22pilpath)-8) ''\examples'' ]);clear f22pilpath; load f22data; f22pil;' };