; ModuleID = 'issue-49420.unpatched.ll'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%"core::option::Option<u8>" = type { [0 x i8], i8, [1 x i8] }
%"core::option::Option<u8>::Some" = type { [1 x i8], i8, [0 x i8] }

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %abi_cast = alloca i16, align 2
  %_8 = alloca %"core::option::Option<u8>", align 1
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
  %tmp5 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %tmp5)
  %tmp6 = call i16 @next({ i64, i8 }* dereferenceable(16) %iterator)
  %tmp7 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %tmp7)
  store i16 %tmp6, i16* %abi_cast, align 2
  %tmp8 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %tmp9 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp8, i8* %tmp9, i64 2, i32 1, i1 false)
  %tmp10 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp10)
  br label %bb2

bb2:                                              ; preds = %bb1
  %tmp11 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %tmp12 = load i8, i8* %tmp11, align 1, !range !0
  %tmp13 = trunc i8 %tmp12 to i1
  %tmp14 = zext i1 %tmp13 to i64
  %tmp15 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %tmp16 = load i8, i8* %tmp15, align 1, !range !0
  %tmp17 = trunc i8 %tmp16 to i1
  %tmp18 = zext i1 %tmp17 to i64
  switch i64 %tmp18, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %tmp19 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp19)
  %tmp20 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp20)
  %tmp21 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp21)
  ret void

bb4:                                              ; preds = %bb2
  %tmp22 = bitcast %"core::option::Option<u8>"* %_8 to %"core::option::Option<u8>::Some"*
  %tmp23 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp22, i32 0, i32 1
  %tmp24 = load i8, i8* %tmp23, align 1
  %tmp25 = load i8*, i8** %ptr, align 8
  store i8 %tmp24, i8* %tmp25, align 1
  %tmp26 = load i8*, i8** %ptr, align 8
  %tmp27 = call i8* @offset(i8* %tmp26, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %tmp27, i8** %ptr, align 8
  %tmp28 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp28)
  br label %bb1
}

; Function Attrs: uwtable
define internal i16 @next({ i64, i8 }* dereferenceable(16) %iter) unnamed_addr #0 {
start:
  %_0 = alloca %"core::option::Option<u8>", align 1
  %tmp = bitcast { i64, i8 }* %iter to i64*
  %tmp1 = load i64, i64* %tmp, align 8
  %tmp2 = icmp ne i64 %tmp1, 0
  br i1 %tmp2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %tmp3 = bitcast { i64, i8 }* %iter to i64*
  %tmp4 = bitcast { i64, i8 }* %iter to i64*
  %tmp5 = load i64, i64* %tmp4, align 8
  %tmp6 = sub i64 %tmp5, 1
  store i64 %tmp6, i64* %tmp3, align 8
  %tmp7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iter, i32 0, i32 1
  %tmp8 = load i8, i8* %tmp7, align 1
  %tmp9 = bitcast %"core::option::Option<u8>"* %_0 to %"core::option::Option<u8>::Some"*
  %tmp10 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp9, i32 0, i32 1
  store i8 %tmp8, i8* %tmp10, align 1
  %tmp11 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 1, i8* %tmp11, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %tmp12 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 0, i8* %tmp12, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %tmp13 = bitcast %"core::option::Option<u8>"* %_0 to i16*
  %tmp14 = load i16, i16* %tmp13, align 1
  ret i16 %tmp14
}

; Function Attrs: uwtable
define internal i8* @offset(i8* %ptr, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i8*, align 8
  %tmp = bitcast i8** %tmp_ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %tmp)
  %tmp1 = getelementptr inbounds i8, i8* %ptr, i64 %count
  store i8* %tmp1, i8** %tmp_ret, align 8
  %tmp2 = load i8*, i8** %tmp_ret, align 8
  %tmp3 = bitcast i8** %tmp_ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %tmp2
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }

!0 = !{i8 0, i8 2}
