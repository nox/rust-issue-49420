; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %_8.sroa.0 = alloca i8
  %tmp4 = bitcast [100000 x i8]* %result to i8*
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %ptr.0 = phi i8* [ %tmp4, %start ], [ %tmp1.i2, %bb5 ]
  %iterator.sroa.0.0 = phi i64 [ 100000, %start ], [ %iterator.sroa.0.1, %bb5 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %_8.sroa.0)
  %tmp2.i = icmp ne i64 %iterator.sroa.0.0, 0
  br i1 %tmp2.i, label %bb1.i, label %bb2.i

bb1.i:                                            ; preds = %bb1
  %tmp6.i = sub i64 %iterator.sroa.0.0, 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  br label %next.exit

next.exit:                                        ; preds = %bb2.i, %bb1.i
  %_0.i.sroa.0.0 = phi i8 [ 1, %bb1.i ], [ 0, %bb2.i ]
  %iterator.sroa.0.1 = phi i64 [ %tmp6.i, %bb1.i ], [ %iterator.sroa.0.0, %bb2.i ]
  %tmp16.i = trunc i8 %_0.i.sroa.0.0 to i1
  %tmp19.i = insertvalue { i1, i8 } undef, i1 %tmp16.i, 0
  %tmp20.i = insertvalue { i1, i8 } %tmp19.i, i8 42, 1
  %tmp20.i.fca.0.extract = extractvalue { i1, i8 } %tmp20.i, 0
  %_8.sroa.0.0.sroa_cast6 = bitcast i8* %_8.sroa.0 to i1*
  store i1 %tmp20.i.fca.0.extract, i1* %_8.sroa.0.0.sroa_cast6
  %tmp20.i.fca.1.extract = extractvalue { i1, i8 } %tmp20.i, 1
  br label %bb2

bb2:                                              ; preds = %next.exit
  %_8.sroa.0.0._8.sroa.0.0.tmp8 = load i8, i8* %_8.sroa.0
  %tmp9 = trunc i8 %_8.sroa.0.0._8.sroa.0.0.tmp8 to i1
  %tmp10 = zext i1 %tmp9 to i64
  %_8.sroa.0.0.sroa_cast5 = bitcast i8* %_8.sroa.0 to i1*
  %_8.sroa.0.0._8.sroa.0.0.tmp13 = load i1, i1* %_8.sroa.0.0.sroa_cast5
  %tmp14 = zext i1 %_8.sroa.0.0._8.sroa.0.0.tmp13 to i64
  switch i64 %tmp14, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %_8.sroa.0)
  ret void

bb4:                                              ; preds = %bb2
  store i8 %tmp20.i.fca.1.extract, i8* %ptr.0, align 1
  %tmp1.i2 = getelementptr inbounds i8, i8* %ptr.0, i64 1
  br label %bb5

bb5:                                              ; preds = %bb4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %_8.sroa.0)
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
