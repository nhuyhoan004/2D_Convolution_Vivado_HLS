; ModuleID = 'D:/Documents/GitHub/2D_Convolution_Vivado_HLS/doImgproc/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@hls_KD_KD_LineBuffe = internal unnamed_addr constant [63 x i8] c"hls::LineBuffer<3, 240, unsigned char, 0>::LineBuffer.1.region\00"
@doImgproc_str = internal unnamed_addr constant [10 x i8] c"doImgproc\00"
@RAM_1P_str = internal unnamed_addr constant [7 x i8] c"RAM_1P\00"
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str4 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str3 = private unnamed_addr constant [11 x i8] c"KERNEL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @doImgproc(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [9 x i8]* %kernel) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_data_V), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_keep_V), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_strb_V), !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %inStream_V_user_V), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %inStream_V_id_V), !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %inStream_V_dest_V), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V_data_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_keep_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_strb_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %outStream_V_user_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %outStream_V_id_V), !map !133
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %outStream_V_dest_V), !map !137
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i8]* %kernel), !map !141
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @doImgproc_str) nounwind
  %lineBuff_val_0 = alloca [240 x i8], align 1
  %lineBuff_val_1 = alloca [240 x i8], align 1
  %lineBuff_val_2 = alloca [240 x i8], align 1
  %empty = call i32 (...)* @_ssdm_op_SpecMemCore([9 x i8]* %kernel, [1 x i8]* @p_str8, [7 x i8]* @RAM_1P_str, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecInterface([9 x i8]* %kernel, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [11 x i8]* @p_str3, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [9 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %rbegin_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([63 x i8]* @hls_KD_KD_LineBuffe) nounwind
  %rend_i = call i32 (...)* @_ssdm_op_SpecRegionEnd([63 x i8]* @hls_KD_KD_LineBuffe, i32 %rbegin_i) nounwind
  %kernel_addr = getelementptr [9 x i8]* %kernel, i64 0, i64 0
  %kernel_addr_1 = getelementptr [9 x i8]* %kernel, i64 0, i64 1
  %kernel_addr_2 = getelementptr [9 x i8]* %kernel, i64 0, i64 2
  %kernel_addr_3 = getelementptr [9 x i8]* %kernel, i64 0, i64 3
  %kernel_addr_4 = getelementptr [9 x i8]* %kernel, i64 0, i64 4
  %kernel_addr_5 = getelementptr [9 x i8]* %kernel, i64 0, i64 5
  %kernel_addr_6 = getelementptr [9 x i8]* %kernel, i64 0, i64 6
  %kernel_addr_7 = getelementptr [9 x i8]* %kernel, i64 0, i64 7
  %kernel_addr_8 = getelementptr [9 x i8]* %kernel, i64 0, i64 8
  br label %1

; <label>:1                                       ; preds = %._crit_edge128, %0
  %dataOutSideChannel_i = phi i5 [ undef, %0 ], [ %tmp_id_V, %._crit_edge128 ]
  %dataOutSideChannel_u = phi i2 [ undef, %0 ], [ %tmp_user_V, %._crit_edge128 ]
  %dataOutSideChannel_s = phi i1 [ undef, %0 ], [ %tmp_strb_V, %._crit_edge128 ]
  %dataOutSideChannel_k = phi i1 [ undef, %0 ], [ %tmp_keep_V, %._crit_edge128 ]
  %dataOutSideChannel_d = phi i6 [ undef, %0 ], [ %tmp_dest_V, %._crit_edge128 ]
  %col_assign = phi i32 [ 0, %0 ], [ %idxCol_1, %._crit_edge128 ]
  %idxRow = phi i32 [ 0, %0 ], [ %idxRow_1, %._crit_edge128 ]
  %pixConvolved = phi i32 [ 0, %0 ], [ %pixConvolved_2, %._crit_edge128 ]
  %countWait = phi i17 [ 1, %0 ], [ %phitmp, %._crit_edge128 ]
  %exitcond1 = icmp eq i17 %countWait, -54271
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 76800, i64 76800, i64 76800)
  br i1 %exitcond1, label %.preheader.preheader, label %._crit_edge.i.i_ifconv

.preheader.preheader:                             ; preds = %1
  br label %.preheader

._crit_edge.i.i_ifconv:                           ; preds = %1
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %empty_10 = call { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %inStream_V_data_V, i1* %inStream_V_keep_V, i1* %inStream_V_strb_V, i2* %inStream_V_user_V, i1* %inStream_V_last_V, i5* %inStream_V_id_V, i6* %inStream_V_dest_V)
  %tmp_data_V_1 = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 0
  %tmp_keep_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 1
  %tmp_strb_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 2
  %tmp_user_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 3
  %tmp_last_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 4
  %tmp_id_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 5
  %tmp_dest_V = extractvalue { i8, i1, i1, i2, i1, i5, i6 } %empty_10, 6
  %tmp_s = zext i32 %col_assign to i64
  %lineBuff_val_1_addr = getelementptr [240 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_s
  %lineBuff_val_1_load = load i8* %lineBuff_val_1_addr, align 1
  %lineBuff_val_0_addr = getelementptr [240 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_s
  store i8 %lineBuff_val_1_load, i8* %lineBuff_val_0_addr, align 1
  %lineBuff_val_2_addr = getelementptr [240 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_s
  %lineBuff_val_2_load = load i8* %lineBuff_val_2_addr, align 1
  store i8 %lineBuff_val_2_load, i8* %lineBuff_val_1_addr, align 1
  store i8 %tmp_data_V_1, i8* %lineBuff_val_2_addr, align 1
  %tmp_6 = zext i32 %pixConvolved to i64
  %lineBuff_val_0_addr_1 = getelementptr [240 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_6
  %lineBuff_val_0_load = load i8* %lineBuff_val_0_addr_1, align 1
  %val = zext i8 %lineBuff_val_0_load to i16
  %kernel_load = load i8* %kernel_addr, align 1
  %tmp_2 = sext i8 %kernel_load to i16
  %window_val_0_0 = mul i16 %tmp_2, %val
  %pixConvolved_3 = add nsw i32 1, %pixConvolved
  %tmp_20_0_1 = zext i32 %pixConvolved_3 to i64
  %lineBuff_val_0_addr_2 = getelementptr [240 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_20_0_1
  %lineBuff_val_0_load_1 = load i8* %lineBuff_val_0_addr_2, align 1
  %val_0_1 = zext i8 %lineBuff_val_0_load_1 to i16
  %kernel_load_1 = load i8* %kernel_addr_1, align 1
  %tmp_24_0_1 = sext i8 %kernel_load_1 to i16
  %window_val_0_1 = mul i16 %tmp_24_0_1, %val_0_1
  %col_assign_1_0_2 = add nsw i32 2, %pixConvolved
  %tmp_20_0_2 = zext i32 %col_assign_1_0_2 to i64
  %lineBuff_val_0_addr_3 = getelementptr [240 x i8]* %lineBuff_val_0, i64 0, i64 %tmp_20_0_2
  %lineBuff_val_0_load_2 = load i8* %lineBuff_val_0_addr_3, align 1
  %val_0_2 = zext i8 %lineBuff_val_0_load_2 to i16
  %kernel_load_2 = load i8* %kernel_addr_2, align 1
  %tmp_24_0_2 = sext i8 %kernel_load_2 to i16
  %window_val_0_2 = mul i16 %tmp_24_0_2, %val_0_2
  %lineBuff_val_1_addr_1 = getelementptr [240 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_6
  %lineBuff_val_1_load_1 = load i8* %lineBuff_val_1_addr_1, align 1
  %val_1 = zext i8 %lineBuff_val_1_load_1 to i16
  %kernel_load_3 = load i8* %kernel_addr_3, align 1
  %tmp_24_1 = sext i8 %kernel_load_3 to i16
  %window_val_1_0 = mul i16 %tmp_24_1, %val_1
  %lineBuff_val_1_addr_2 = getelementptr [240 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_20_0_1
  %lineBuff_val_1_load_2 = load i8* %lineBuff_val_1_addr_2, align 1
  %val_1_1 = zext i8 %lineBuff_val_1_load_2 to i16
  %kernel_load_4 = load i8* %kernel_addr_4, align 1
  %tmp_24_1_1 = sext i8 %kernel_load_4 to i16
  %window_val_1_1 = mul i16 %tmp_24_1_1, %val_1_1
  %lineBuff_val_1_addr_3 = getelementptr [240 x i8]* %lineBuff_val_1, i64 0, i64 %tmp_20_0_2
  %lineBuff_val_1_load_3 = load i8* %lineBuff_val_1_addr_3, align 1
  %val_1_2 = zext i8 %lineBuff_val_1_load_3 to i16
  %kernel_load_5 = load i8* %kernel_addr_5, align 1
  %tmp_24_1_2 = sext i8 %kernel_load_5 to i16
  %window_val_1_2 = mul i16 %tmp_24_1_2, %val_1_2
  %lineBuff_val_2_addr_1 = getelementptr [240 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_6
  %lineBuff_val_2_load_1 = load i8* %lineBuff_val_2_addr_1, align 1
  %val_s = zext i8 %lineBuff_val_2_load_1 to i16
  %kernel_load_6 = load i8* %kernel_addr_6, align 1
  %tmp_24_2 = sext i8 %kernel_load_6 to i16
  %window_val_2_0 = mul i16 %tmp_24_2, %val_s
  %lineBuff_val_2_addr_2 = getelementptr [240 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_20_0_1
  %lineBuff_val_2_load_2 = load i8* %lineBuff_val_2_addr_2, align 1
  %val_233_1 = zext i8 %lineBuff_val_2_load_2 to i16
  %kernel_load_7 = load i8* %kernel_addr_7, align 1
  %tmp_24_2_1 = sext i8 %kernel_load_7 to i16
  %window_val_2_1 = mul i16 %tmp_24_2_1, %val_233_1
  %lineBuff_val_2_addr_3 = getelementptr [240 x i8]* %lineBuff_val_2, i64 0, i64 %tmp_20_0_2
  %lineBuff_val_2_load_3 = load i8* %lineBuff_val_2_addr_3, align 1
  %val_233_2 = zext i8 %lineBuff_val_2_load_3 to i16
  %kernel_load_8 = load i8* %kernel_addr_8, align 1
  %tmp_24_2_2 = sext i8 %kernel_load_8 to i16
  %window_val_2_2 = mul i16 %tmp_24_2_2, %val_233_2
  %tmp_3 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %idxRow, i32 1, i32 31)
  %icmp = icmp sgt i31 %tmp_3, 0
  %tmp_4 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %col_assign, i32 1, i32 31)
  %icmp3 = icmp sgt i31 %tmp_4, 0
  %or_cond = and i1 %icmp, %icmp3
  %tmp8 = add i16 %window_val_2_1, %window_val_2_0
  %tmp9 = add i16 %window_val_1_1, %window_val_1_2
  %tmp7 = add i16 %tmp8, %tmp9
  %tmp1 = add i16 %window_val_0_0, %window_val_0_1
  %tmp2 = add i16 %window_val_2_2, %window_val_0_2
  %tmp3 = add i16 %window_val_1_0, %tmp2
  %tmp4 = add i16 %tmp1, %tmp3
  %accumulator_2_2_2_i = add i16 %tmp7, %tmp4
  %tmp_10_tr = sext i16 %accumulator_2_2_2_i to i17
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i16.i32(i16 %accumulator_2_2_2_i, i32 15)
  %p_neg = sub i17 0, %tmp_10_tr
  %tmp_7 = call i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17 %p_neg, i32 3, i32 16)
  %tmp_6_cast = zext i14 %tmp_7 to i15
  %tmp_8 = call i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16 %accumulator_2_2_2_i, i32 3, i32 15)
  %tmp_9 = sext i13 %tmp_8 to i14
  %tmp_1 = sub i15 0, %tmp_6_cast
  %tmp_10_cast = zext i14 %tmp_9 to i15
  %valOutput = select i1 %tmp_5, i15 %tmp_1, i15 %tmp_10_cast
  %tmp_10 = trunc i15 %valOutput to i8
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i15.i32(i15 %valOutput, i32 14)
  %phitmp1 = select i1 %tmp_11, i8 0, i8 %tmp_10
  %pixConvolved_1 = select i1 %or_cond, i32 %pixConvolved_3, i32 %pixConvolved
  %dataOutSideChannel_d_1 = select i1 %or_cond, i8 %phitmp1, i8 0
  %tmp_12 = icmp slt i32 %col_assign, 239
  %idxCol = add nsw i32 1, %col_assign
  %idxRow_2 = add nsw i32 1, %idxRow
  %idxCol_1 = select i1 %tmp_12, i32 %idxCol, i32 0
  %idxRow_1 = select i1 %tmp_12, i32 %idxRow, i32 %idxRow_2
  %pixConvolved_2 = select i1 %tmp_12, i32 %pixConvolved_1, i32 0
  %tmp_13 = icmp ugt i17 %countWait, 241
  br i1 %tmp_13, label %2, label %._crit_edge128

; <label>:2                                       ; preds = %._crit_edge.i.i_ifconv
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 %dataOutSideChannel_d_1, i1 %tmp_keep_V, i1 %tmp_strb_V, i2 %tmp_user_V, i1 %tmp_last_V, i5 %tmp_id_V, i6 %tmp_dest_V)
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %2, %._crit_edge.i.i_ifconv
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp)
  %phitmp = add i17 %countWait, 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %countWait_1 = phi i8 [ %countWait_2, %3 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i8 %countWait_1, -15
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 241, i64 241, i64 241)
  %countWait_2 = add i8 %countWait_1, 1
  br i1 %exitcond, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  %dataOutSideChannel_l = icmp ugt i8 %countWait_1, -17
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i2* %outStream_V_user_V, i1* %outStream_V_last_V, i5* %outStream_V_id_V, i6* %outStream_V_dest_V, i8 0, i1 %dataOutSideChannel_k, i1 %dataOutSideChannel_s, i2 %dataOutSideChannel_u, i1 %dataOutSideChannel_l, i5 %dataOutSideChannel_i, i6 %dataOutSideChannel_d)
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*, i8, i1, i1, i2, i1, i5, i6) {
entry:
  store i8 %7, i8* %0
  store i1 %8, i1* %1
  store i1 %9, i1* %2
  store i2 %10, i2* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i6 %13, i6* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecMemCore(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i8, i1, i1, i2, i1, i5, i6 } @_ssdm_op_Read.axis.volatile.i8P.i1P.i1P.i2P.i1P.i5P.i6P(i8*, i1*, i1*, i2*, i1*, i5*, i6*) {
entry:
  %empty = load i8* %0
  %empty_13 = load i1* %1
  %empty_14 = load i1* %2
  %empty_15 = load i2* %3
  %empty_16 = load i1* %4
  %empty_17 = load i5* %5
  %empty_18 = load i6* %6
  %mrv_0 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv_0, i1 %empty_13, 1
  %mrv2 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv1, i1 %empty_14, 2
  %mrv3 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv2, i2 %empty_15, 3
  %mrv4 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv3, i1 %empty_16, 4
  %mrv5 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv4, i5 %empty_17, 5
  %mrv6 = insertvalue { i8, i1, i1, i2, i1, i5, i6 } %mrv5, i6 %empty_18, 6
  ret { i8, i1, i1, i2, i1, i5, i6 } %mrv6
}

declare i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_19 = trunc i32 %empty to i31
  ret i31 %empty_19
}

define weak i14 @_ssdm_op_PartSelect.i14.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_20 = trunc i17 %empty to i14
  ret i14 %empty_20
}

define weak i13 @_ssdm_op_PartSelect.i13.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_21 = trunc i16 %empty to i13
  ret i13 %empty_21
}

define weak i1 @_ssdm_op_BitSelect.i1.i16.i32(i16, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i16
  %empty_22 = shl i16 1, %empty
  %empty_23 = and i16 %0, %empty_22
  %empty_24 = icmp ne i16 %empty_23, 0
  ret i1 %empty_24
}

define weak i1 @_ssdm_op_BitSelect.i1.i15.i32(i15, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i15
  %empty_25 = shl i15 1, %empty
  %empty_26 = and i15 %0, %empty_25
  %empty_27 = icmp ne i15 %empty_26, 0
  ret i1 %empty_27
}

declare void @_ssdm_SpecDependence(...) nounwind

!opencl.kernels = !{!0, !7, !13, !19, !19, !23, !23, !29, !32, !32, !34, !37, !37, !13, !41, !41, !44, !44, !46, !48, !48, !23, !50, !23, !23, !52, !48, !48, !23, !55, !23, !23, !23, !58, !58, !60, !60, !62, !63, !19, !19, !23, !23, !64, !23, !23, !23, !66, !68, !23, !23, !23, !23, !23, !70, !19, !19, !23, !72, !23, !23, !23, !23, !23, !23, !74, !76, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!78}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint_8_side_channel> &", metadata !"hls::stream<int_8_side_channel> &", metadata !"char*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream", metadata !"kernel"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::Window<3, 3, short>*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"window"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col"}
!19 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space"}
!25 = metadata !{metadata !"kernel_arg_access_qual"}
!26 = metadata !{metadata !"kernel_arg_type"}
!27 = metadata !{metadata !"kernel_arg_type_qual"}
!28 = metadata !{metadata !"kernel_arg_name"}
!29 = metadata !{null, metadata !20, metadata !9, metadata !30, metadata !11, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis<8, 2, 5, 6> &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!32 = metadata !{null, metadata !20, metadata !9, metadata !33, metadata !11, metadata !22, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"short"}
!34 = metadata !{null, metadata !20, metadata !9, metadata !35, metadata !11, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!37 = metadata !{null, metadata !38, metadata !2, metadata !39, metadata !4, metadata !40, metadata !6}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"value", metadata !"row", metadata !"col"}
!41 = metadata !{null, metadata !14, metadata !15, metadata !42, metadata !17, metadata !43, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"value", metadata !"col"}
!44 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !45, metadata !6}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"col"}
!46 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !47, metadata !6}
!47 = metadata !{metadata !"kernel_arg_name", metadata !""}
!48 = metadata !{null, metadata !20, metadata !9, metadata !21, metadata !11, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!50 = metadata !{null, metadata !20, metadata !9, metadata !51, metadata !11, metadata !36, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!52 = metadata !{null, metadata !14, metadata !15, metadata !53, metadata !17, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!55 = metadata !{null, metadata !14, metadata !15, metadata !56, metadata !17, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!58 = metadata !{null, metadata !20, metadata !9, metadata !59, metadata !11, metadata !49, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!60 = metadata !{null, metadata !20, metadata !9, metadata !61, metadata !11, metadata !49, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!62 = metadata !{null, metadata !14, metadata !15, metadata !53, metadata !17, metadata !57, metadata !6}
!63 = metadata !{null, metadata !20, metadata !9, metadata !59, metadata !11, metadata !36, metadata !6}
!64 = metadata !{null, metadata !20, metadata !9, metadata !65, metadata !11, metadata !36, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!66 = metadata !{null, metadata !20, metadata !9, metadata !67, metadata !11, metadata !36, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<6> &"}
!68 = metadata !{null, metadata !20, metadata !9, metadata !69, metadata !11, metadata !36, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!70 = metadata !{null, metadata !20, metadata !9, metadata !71, metadata !11, metadata !36, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!72 = metadata !{null, metadata !20, metadata !9, metadata !73, metadata !11, metadata !36, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!74 = metadata !{null, metadata !20, metadata !9, metadata !75, metadata !11, metadata !47, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<8, 2, 5, 6> &"}
!76 = metadata !{null, metadata !20, metadata !9, metadata !77, metadata !11, metadata !36, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!78 = metadata !{metadata !79, [0 x i32]* @llvm_global_ctors_0}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"llvm.global_ctors.0", metadata !83, metadata !"", i32 0, i32 31}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, i32 1}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 7, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"inStream.V.data.V", metadata !83, metadata !"uint8", i32 0, i32 7}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"inStream.V.keep.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 0, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"inStream.V.strb.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 1, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"inStream.V.user.V", metadata !83, metadata !"uint2", i32 0, i32 1}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 0, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"inStream.V.last.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 4, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"inStream.V.id.V", metadata !83, metadata !"uint5", i32 0, i32 4}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 5, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"inStream.V.dest.V", metadata !83, metadata !"uint6", i32 0, i32 5}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 7, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"outStream.V.data.V", metadata !83, metadata !"int8", i32 0, i32 7}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"outStream.V.keep.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 0, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"outStream.V.strb.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 1, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"outStream.V.user.V", metadata !83, metadata !"uint2", i32 0, i32 1}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"outStream.V.last.V", metadata !83, metadata !"uint1", i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 4, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"outStream.V.id.V", metadata !83, metadata !"uint5", i32 0, i32 4}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 5, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"outStream.V.dest.V", metadata !83, metadata !"uint6", i32 0, i32 5}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 7, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"kernel", metadata !145, metadata !"char", i32 0, i32 7}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 8, i32 1}
