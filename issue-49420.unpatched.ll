; ModuleID = 'issue_494200-8787f43e282added376259c1adb08b80.rs'
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
  %0 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %0)
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  store i8 42, i8* %1, align 1
  %2 = bitcast { i64, i8 }* %iterator to i64*
  store i64 100000, i64* %2, align 8
  %3 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3)
  %4 = bitcast [100000 x i8]* %result to i8*
  store i8* %4, i8** %ptr, align 8
  br label %bb1

bb1:                                              ; preds = %bb5, %start
  %5 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5)
  %6 = call i16 @next({ i64, i8 }* dereferenceable(16) %iterator)
  %7 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %7)
  store i16 %6, i16* %abi_cast, align 2
  %8 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %9 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 2, i32 1, i1 false)
  %10 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %10)
  br label %bb2

bb2:                                              ; preds = %bb1
  %11 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %12 = load i8, i8* %11, align 1, !range !0
  %13 = trunc i8 %12 to i1
  %14 = zext i1 %13 to i64
  %15 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %16 = load i8, i8* %15, align 1, !range !0
  %17 = trunc i8 %16 to i1
  %18 = zext i1 %17 to i64
  switch i64 %18, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %19 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %19)
  %20 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20)
  %21 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %21)
  ret void

bb4:                                              ; preds = %bb2
  %22 = bitcast %"core::option::Option<u8>"* %_8 to %"core::option::Option<u8>::Some"*
  %23 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %ptr, align 8
  store i8 %24, i8* %25, align 1
  %26 = load i8*, i8** %ptr, align 8
  %27 = call i8* @offset(i8* %26, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %27, i8** %ptr, align 8
  %28 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %28)
  br label %bb1
}

; Function Attrs: uwtable
define internal i16 @next({ i64, i8 }* dereferenceable(16) %iter) unnamed_addr #0 {
start:
  %_0 = alloca %"core::option::Option<u8>", align 1
  %0 = bitcast { i64, i8 }* %iter to i64*
  %1 = load i64, i64* %0, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = bitcast { i64, i8 }* %iter to i64*
  %4 = bitcast { i64, i8 }* %iter to i64*
  %5 = load i64, i64* %4, align 8
  %6 = sub i64 %5, 1
  store i64 %6, i64* %3, align 8
  %7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iter, i32 0, i32 1
  %8 = load i8, i8* %7, align 1
  %9 = bitcast %"core::option::Option<u8>"* %_0 to %"core::option::Option<u8>::Some"*
  %10 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %9, i32 0, i32 1
  store i8 %8, i8* %10, align 1
  %11 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 1, i8* %11, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %12 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 0, i8* %12, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %13 = bitcast %"core::option::Option<u8>"* %_0 to i16*
  %14 = load i16, i16* %13, align 1
  ret i16 %14
}

; Function Attrs: uwtable
define internal i8* @offset(i8* %ptr, i64 %count) unnamed_addr #0 {
start:
  %tmp_ret = alloca i8*, align 8
  %0 = bitcast i8** %tmp_ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0)
  %1 = getelementptr inbounds i8, i8* %ptr, i64 %count
  store i8* %1, i8** %tmp_ret, align 8
  %2 = load i8*, i8** %tmp_ret, align 8
  %3 = bitcast i8** %tmp_ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %2
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
