; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %_8.sroa.0 = alloca i8, align 1
  %tmp4 = getelementptr inbounds [100000 x i8], [100000 x i8]* %result, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %_8.sroa.0)
  %_8.sroa.0.0.sroa_cast4 = bitcast i8* %_8.sroa.0 to i1*
  store i1 true, i1* %_8.sroa.0.0.sroa_cast4, align 1
  %_8.sroa.0.0._8.sroa.0.0.tmp121 = load i8, i8* %_8.sroa.0, align 1
  %0 = and i8 %_8.sroa.0.0._8.sroa.0.0.tmp121, 1
  %cond2 = icmp eq i8 %0, 0
  br i1 %cond2, label %bb3, label %bb4.lr.ph

bb4.lr.ph:                                        ; preds = %start
  br label %bb4

bb1.bb3_crit_edge:                                ; preds = %bb4
  br label %bb3

bb3:                                              ; preds = %bb1.bb3_crit_edge, %start
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %_8.sroa.0)
  ret void

bb4:                                              ; preds = %bb4.lr.ph, %bb4
  %tmp2.i5 = phi i1 [ true, %bb4.lr.ph ], [ %tmp2.i, %bb4 ]
  %iterator.sroa.0.04 = phi i64 [ 100000, %bb4.lr.ph ], [ %iterator.sroa.0.1, %bb4 ]
  %ptr.03 = phi i8* [ %tmp4, %bb4.lr.ph ], [ %tmp1.i2, %bb4 ]
  %tmp6.i = add i64 %iterator.sroa.0.04, -1
  %iterator.sroa.0.1 = select i1 %tmp2.i5, i64 %tmp6.i, i64 0
  store i8 42, i8* %ptr.03, align 1
  %tmp1.i2 = getelementptr inbounds i8, i8* %ptr.03, i64 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %_8.sroa.0)
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %_8.sroa.0)
  %tmp2.i = icmp ne i64 %iterator.sroa.0.1, 0
  store i1 %tmp2.i, i1* %_8.sroa.0.0.sroa_cast4, align 1
  %_8.sroa.0.0._8.sroa.0.0.tmp12 = load i8, i8* %_8.sroa.0, align 1
  %1 = and i8 %_8.sroa.0.0._8.sroa.0.0.tmp12, 1
  %cond = icmp eq i8 %1, 0
  br i1 %cond, label %bb1.bb3_crit_edge, label %bb4
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
