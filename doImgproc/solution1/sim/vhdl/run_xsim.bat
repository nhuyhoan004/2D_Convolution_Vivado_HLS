
call D:/Xilinx/Vivado/2018.1/bin/xelab xil_defaultlib.apatb_doImgproc_top glbl -prj doImgproc.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims --initfile "D:/Xilinx/Vivado/2018.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s doImgproc 
call D:/Xilinx/Vivado/2018.1/bin/xsim --noieeewarnings doImgproc -tclbatch doImgproc.tcl

