export PATH=D:/Xilinx/Vivado/2018.1/win64/tools/gcc/bin;D:/Xilinx/Vivado/2018.1/msys/bin;D:/Xilinx/Vivado/2018.1/bin;D:/Xilinx/Vivado/2018.1/win64/bin;D:/Xilinx/Vivado/2018.1/win64/tools/bin;D:/Xilinx/Vivado/2018.1/win64/tools/clang/bin;D:/Xilinx/Vivado/2018.1/bin;D:/Xilinx/Vivado/2018.1/lib/win64.o;D:/Xilinx/Vivado/2018.1/tps/win64/jre/bin/server;D:/Xilinx/Vivado/2018.1/tps/win64/jre/bin;D:/Xilinx/SDK/2018.1/bin;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2018.1/ids_lite/ISE/lib/nt64;D:\Xilinx\Vivado\2018.1\bin\..\msys\bin;D:/Xilinx/Vivado/2018.1/win64/tools/gcc/bin;D:/Xilinx/Vivado/2018.1/msys/bin;D:/Xilinx/Vivado/2018.1/win64/bin;D:/Xilinx/Vivado/2018.1/win64/tools/bin;D:/Xilinx/Vivado/2018.1/win64/tools/clang/bin;C:\Program Files (x86)\Common Files\Oracle\Java\java8path;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;D:\APP\VMware\bin\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;D:\APP\Git\cmd;C:\Users\nhuyh\AppData\Local\Microsoft\WindowsApps;D:\APP\Microsoft VS Code\bin;C:\Users\nhuyh\AppData\Local\GitHubDesktop\bin;;D:/Xilinx/Vivado/2018.1\tps\mingw\6.2.0\win64.o\nt\bin;D:/Xilinx/Vivado/2018.1\tps\mingw\6.2.0\win64.o\nt\libexec\gcc\x86_64-w64-mingw32\6.2.0;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v6_1;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/fft_v9_1;D:/Xilinx/Vivado/2018.1/win64/tools/opencv;D:/Xilinx/Vivado/2018.1/win64/tools/fir_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/dds_v6_0;D:/Xilinx/Vivado/2018.1/win64/lib/csim;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v6_1;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/fft_v9_1;D:/Xilinx/Vivado/2018.1/win64/tools/opencv;D:/Xilinx/Vivado/2018.1/win64/tools/fir_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/dds_v6_0;D:/Xilinx/Vivado/2018.1/win64/lib/csim
export LD_LIBRARY_PATH=D:/Xilinx/Vivado/2018.1/win64/tools/gdb_v7_2;D:/Xilinx/Vivado/2018.1/win64/tools/graphviz/lib;D:/Xilinx/Vivado/2018.1/win64/bin;D:/Xilinx/Vivado/2018.1/win64/tools/gdb_v7_2;D:/Xilinx/Vivado/2018.1/win64/tools/graphviz/lib;D:/Xilinx/Vivado/2018.1/win64/bin;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v6_1;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/fft_v9_1;D:/Xilinx/Vivado/2018.1/win64/tools/opencv;D:/Xilinx/Vivado/2018.1/win64/tools/fir_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/dds_v6_0;D:/Xilinx/Vivado/2018.1/win64/lib/csim;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v6_1;D:/Xilinx/Vivado/2018.1/win64/tools/fpo_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/fft_v9_1;D:/Xilinx/Vivado/2018.1/win64/tools/opencv;D:/Xilinx/Vivado/2018.1/win64/tools/fir_v7_0;D:/Xilinx/Vivado/2018.1/win64/tools/dds_v6_0;D:/Xilinx/Vivado/2018.1/win64/lib/csim
export HDI_APPROOT=D:/Xilinx/Vivado/2018.1
export XILINX_OPENCL_CLANG=D:/Xilinx/Vivado/2018.1/win64/tools/clang
export RDI_PLATFORM=win64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg   -interface-preproc -directive-preproc -interface-gen  -bram-byte-enable  -deadargelim -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -read-loop-dep -dce -bitwidth -loop-dep -check-stream -norm-name -legalize  -validate-dataflow  D:/Documents/GitHub/2D_Convolution_Vivado_HLS/doImgproc/solution1/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 
