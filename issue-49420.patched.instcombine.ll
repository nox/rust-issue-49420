; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %tmp4 = getelementptr inbounds [100000 x i8], [100000 x i8]* %result, i64 0, i64 0
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %ptr.0 = phi i8* [ %tmp4, %start ], [ %tmp1.i2, %bb4 ]
  %iterator.sroa.0.0 = phi i64 [ 100000, %start ], [ %tmp6.i, %bb4 ]
  %tmp2.i = icmp eq i64 %iterator.sroa.0.0, 0
  br i1 %tmp2.i, label %bb3, label %bb4

bb3:                                              ; preds = %bb1
  ret void

bb4:                                              ; preds = %bb1
  %tmp6.i = add i64 %iterator.sroa.0.0, -1
  store i8 42, i8* %ptr.0, align 1
  %tmp1.i2 = getelementptr inbounds i8, i8* %ptr.0, i64 1
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
