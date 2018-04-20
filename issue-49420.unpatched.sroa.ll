; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %0 = bitcast [100000 x i8]* %result to i8*
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %ptr.0 = phi i8* [ %0, %start ], [ %7, %bb5 ]
  %iterator.sroa.0.0 = phi i64 [ 100000, %start ], [ %iterator.sroa.0.1, %bb5 ]
  %1 = icmp ne i64 %iterator.sroa.0.0, 0
  br i1 %1, label %bb1.i, label %bb2.i

bb1.i:                                            ; preds = %bb1
  %2 = sub i64 %iterator.sroa.0.0, 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  br label %next.exit

next.exit:                                        ; preds = %bb2.i, %bb1.i
  %_0.i.sroa.0.0 = phi i8 [ 1, %bb1.i ], [ 0, %bb2.i ]
  %iterator.sroa.0.1 = phi i64 [ %2, %bb1.i ], [ %iterator.sroa.0.0, %bb2.i ]
  %_0.i.sroa.5.0.insert.ext = zext i8 42 to i16
  %_0.i.sroa.5.0.insert.shift = shl i16 %_0.i.sroa.5.0.insert.ext, 8
  %_0.i.sroa.5.0.insert.mask = and i16 undef, 255
  %_0.i.sroa.5.0.insert.insert = or i16 %_0.i.sroa.5.0.insert.mask, %_0.i.sroa.5.0.insert.shift
  %_0.i.sroa.0.0.insert.ext = zext i8 %_0.i.sroa.0.0 to i16
  %_0.i.sroa.0.0.insert.mask = and i16 %_0.i.sroa.5.0.insert.insert, -256
  %_0.i.sroa.0.0.insert.insert = or i16 %_0.i.sroa.0.0.insert.mask, %_0.i.sroa.0.0.insert.ext
  %abi_cast.sroa.0.0.extract.trunc = trunc i16 %_0.i.sroa.0.0.insert.insert to i8
  %abi_cast.sroa.4.0.extract.shift = lshr i16 %_0.i.sroa.0.0.insert.insert, 8
  %abi_cast.sroa.4.0.extract.trunc = trunc i16 %abi_cast.sroa.4.0.extract.shift to i8
  br label %bb2

bb2:                                              ; preds = %next.exit
  %3 = trunc i8 %abi_cast.sroa.0.0.extract.trunc to i1
  %4 = zext i1 %3 to i64
  %5 = trunc i8 %abi_cast.sroa.0.0.extract.trunc to i1
  %6 = zext i1 %5 to i64
  switch i64 %6, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %bb2
  store i8 %abi_cast.sroa.4.0.extract.trunc, i8* %ptr.0, align 1
  %7 = getelementptr inbounds i8, i8* %ptr.0, i64 1
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
