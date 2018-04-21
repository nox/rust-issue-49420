; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%"core::option::Option<u8>::Some" = type { [1 x i8], i8, [0 x i8] }

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %tmp_ret.i = alloca i8*, align 8
  %_0.i = alloca { i1, i8 }, align 1
  %_8 = alloca { i1, i8 }, align 1
  %ptr = alloca i8*, align 8
  %iterator = alloca { i64, i8 }, align 8
  %tmp = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %tmp)
  %tmp1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  store i8 42, i8* %tmp1, align 1
  %tmp2 = bitcast { i64, i8 }* %iterator to i64*
  store i64 100000, i64* %tmp2, align 8
  %tmp3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp3)
  %tmp4 = bitcast [100000 x i8]* %result to i8*
  store i8* %tmp4, i8** %ptr, align 8
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %tmp5 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %tmp5)
  %0 = bitcast { i1, i8 }* %_0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %0)
  %tmp.i = bitcast { i64, i8 }* %iterator to i64*
  %tmp1.i = load i64, i64* %tmp.i, align 8
  %tmp2.i = icmp ne i64 %tmp1.i, 0
  br i1 %tmp2.i, label %bb1.i, label %bb2.i

bb1.i:                                            ; preds = %bb1
  %tmp3.i = bitcast { i64, i8 }* %iterator to i64*
  %tmp4.i = bitcast { i64, i8 }* %iterator to i64*
  %tmp5.i = load i64, i64* %tmp4.i, align 8
  %tmp6.i = sub i64 %tmp5.i, 1
  store i64 %tmp6.i, i64* %tmp3.i, align 8
  %tmp7.i = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  %tmp8.i = load i8, i8* %tmp7.i, align 1
  %tmp9.i = bitcast { i1, i8 }* %_0.i to %"core::option::Option<u8>::Some"*
  %tmp10.i = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp9.i, i32 0, i32 1
  store i8 %tmp8.i, i8* %tmp10.i, align 1
  %tmp11.i = bitcast { i1, i8 }* %_0.i to i8*
  store i8 1, i8* %tmp11.i, align 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  %tmp12.i = bitcast { i1, i8 }* %_0.i to i8*
  store i8 0, i8* %tmp12.i, align 1
  br label %next.exit

next.exit:                                        ; preds = %bb1.i, %bb2.i
  %tmp13.i = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0.i, i32 0, i32 0
  %tmp14.i = bitcast i1* %tmp13.i to i8*
  %tmp15.i = load i8, i8* %tmp14.i, align 1, !range !0
  %tmp16.i = trunc i8 %tmp15.i to i1
  %tmp17.i = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0.i, i32 0, i32 1
  %tmp18.i = load i8, i8* %tmp17.i, align 1
  %tmp19.i = insertvalue { i1, i8 } undef, i1 %tmp16.i, 0
  %tmp20.i = insertvalue { i1, i8 } %tmp19.i, i8 %tmp18.i, 1
  %1 = bitcast { i1, i8 }* %_0.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %1)
  store { i1, i8 } %tmp20.i, { i1, i8 }* %_8, align 1
  br label %bb2

bb2:                                              ; preds = %next.exit
  %tmp7 = bitcast { i1, i8 }* %_8 to i8*
  %tmp8 = load i8, i8* %tmp7, align 1, !range !0
  %tmp9 = trunc i8 %tmp8 to i1
  %tmp10 = zext i1 %tmp9 to i64
  %tmp11 = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_8, i32 0, i32 0
  %tmp13 = load i1, i1* %tmp11
  %tmp14 = zext i1 %tmp13 to i64
  switch i64 %tmp14, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %tmp15 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp15)
  %tmp16 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp16)
  %tmp17 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp17)
  ret void

bb4:                                              ; preds = %bb2
  %tmp18 = bitcast { i1, i8 }* %_8 to %"core::option::Option<u8>::Some"*
  %tmp19 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp18, i32 0, i32 1
  %tmp20 = load i8, i8* %tmp19, align 1
  %tmp21 = load i8*, i8** %ptr, align 8
  store i8 %tmp20, i8* %tmp21, align 1
  %tmp22 = load i8*, i8** %ptr, align 8
  %tmp.i1 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp.i1)
  %tmp1.i2 = getelementptr inbounds i8, i8* %tmp22, i64 1
  store i8* %tmp1.i2, i8** %tmp_ret.i, align 8
  %tmp2.i3 = load i8*, i8** %tmp_ret.i, align 8
  %tmp3.i4 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp3.i4)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %tmp2.i3, i8** %ptr, align 8
  %tmp24 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp24)
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }

!0 = !{i8 0, i8 2}
