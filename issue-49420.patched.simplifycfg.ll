; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %_8.sroa.0 = alloca i8
  %0 = bitcast [100000 x i8]* %result to i8*
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %ptr.0 = phi i8* [ %0, %start ], [ %10, %bb4 ]
  %iterator.sroa.0.0 = phi i64 [ 100000, %start ], [ %iterator.sroa.0.1, %bb4 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %_8.sroa.0)
  %1 = icmp ne i64 %iterator.sroa.0.0, 0
  %2 = sub i64 %iterator.sroa.0.0, 1
  %_0.i.sroa.0.0 = select i1 %1, i8 1, i8 0
  %iterator.sroa.0.1 = select i1 %1, i64 %2, i64 %iterator.sroa.0.0
  %3 = trunc i8 %_0.i.sroa.0.0 to i1
  %4 = insertvalue { i1, i8 } undef, i1 %3, 0
  %5 = insertvalue { i1, i8 } %4, i8 42, 1
  %.fca.0.extract = extractvalue { i1, i8 } %5, 0
  %_8.sroa.0.0.sroa_cast7 = bitcast i8* %_8.sroa.0 to i1*
  store i1 %.fca.0.extract, i1* %_8.sroa.0.0.sroa_cast7
  %.fca.1.extract = extractvalue { i1, i8 } %5, 1
  %_8.sroa.0.0._8.sroa.0.0. = load i8, i8* %_8.sroa.0
  %6 = trunc i8 %_8.sroa.0.0._8.sroa.0.0. to i1
  %7 = zext i1 %6 to i64
  %_8.sroa.0.0._8.sroa.0.0.6 = load i8, i8* %_8.sroa.0
  %8 = trunc i8 %_8.sroa.0.0._8.sroa.0.0.6 to i1
  %9 = zext i1 %8 to i64
  %cond = icmp eq i64 %9, 1
  br i1 %cond, label %bb4, label %bb3

bb3:                                              ; preds = %bb1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %_8.sroa.0)
  ret void

bb4:                                              ; preds = %bb1
  store i8 %.fca.1.extract, i8* %ptr.0, align 1
  %10 = getelementptr inbounds i8, i8* %ptr.0, i64 1
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %_8.sroa.0)
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
