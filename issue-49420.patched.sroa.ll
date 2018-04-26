; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %tmp4 = bitcast [100000 x i8]* %result to i8*
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %ptr.0 = phi i8* [ %tmp4, %start ], [ %tmp1.i2, %bb5 ]
  %iterator.sroa.0.0 = phi i64 [ 100000, %start ], [ %iterator.sroa.0.1, %bb5 ]
  %tmp2.i = icmp ne i64 %iterator.sroa.0.0, 0
  br i1 %tmp2.i, label %bb1.i, label %bb2.i

bb1.i:                                            ; preds = %bb1
  %tmp6.i = sub i64 %iterator.sroa.0.0, 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  br label %next.exit

next.exit:                                        ; preds = %bb2.i, %bb1.i
  %_0.i.sroa.0.0 = phi i1 [ true, %bb1.i ], [ false, %bb2.i ]
  %iterator.sroa.0.1 = phi i64 [ %tmp6.i, %bb1.i ], [ %iterator.sroa.0.0, %bb2.i ]
  %tmp17.i = insertvalue { i1, i8 } undef, i1 %_0.i.sroa.0.0, 0
  %tmp18.i = insertvalue { i1, i8 } %tmp17.i, i8 42, 1
  %tmp18.i.fca.0.extract = extractvalue { i1, i8 } %tmp18.i, 0
  %tmp18.i.fca.1.extract = extractvalue { i1, i8 } %tmp18.i, 1
  br label %bb2

bb2:                                              ; preds = %next.exit
  %tmp9 = zext i1 %tmp18.i.fca.0.extract to i64
  %tmp12 = zext i1 %tmp18.i.fca.0.extract to i64
  switch i64 %tmp12, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %bb2
  store i8 %tmp18.i.fca.1.extract, i8* %ptr.0, align 1
  %tmp1.i2 = getelementptr inbounds i8, i8* %ptr.0, i64 1
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
