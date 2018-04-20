; ModuleID = '<stdin>'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%"core::option::Option<u8>" = type { [0 x i8], i8, [1 x i8] }
%"core::option::Option<u8>::Some" = type { [1 x i8], i8, [0 x i8] }

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
  %tmp_ret.i = alloca i8*, align 8
  %_0.i = alloca %"core::option::Option<u8>", align 1
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
  %6 = bitcast %"core::option::Option<u8>"* %_0.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %6)
  %7 = bitcast { i64, i8 }* %iterator to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %bb1.i, label %bb2.i

bb1.i:                                            ; preds = %bb1
  %10 = bitcast { i64, i8 }* %iterator to i64*
  %11 = bitcast { i64, i8 }* %iterator to i64*
  %12 = load i64, i64* %11, align 8
  %13 = sub i64 %12, 1
  store i64 %13, i64* %10, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  %15 = load i8, i8* %14, align 1
  %16 = bitcast %"core::option::Option<u8>"* %_0.i to %"core::option::Option<u8>::Some"*
  %17 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %16, i32 0, i32 1
  store i8 %15, i8* %17, align 1
  %18 = bitcast %"core::option::Option<u8>"* %_0.i to i8*
  store i8 1, i8* %18, align 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  %19 = bitcast %"core::option::Option<u8>"* %_0.i to i8*
  store i8 0, i8* %19, align 1
  br label %next.exit

next.exit:                                        ; preds = %bb1.i, %bb2.i
  %20 = bitcast %"core::option::Option<u8>"* %_0.i to i16*
  %21 = load i16, i16* %20, align 1
  %22 = bitcast %"core::option::Option<u8>"* %_0.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %22)
  %23 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %23)
  store i16 %21, i16* %abi_cast, align 2
  %24 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %25 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 2, i32 1, i1 false)
  %26 = bitcast i16* %abi_cast to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %26)
  br label %bb2

bb2:                                              ; preds = %next.exit
  %27 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %28 = load i8, i8* %27, align 1, !range !0
  %29 = trunc i8 %28 to i1
  %30 = zext i1 %29 to i64
  %31 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  %32 = load i8, i8* %31, align 1, !range !0
  %33 = trunc i8 %32 to i1
  %34 = zext i1 %33 to i64
  switch i64 %34, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %35 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %35)
  %36 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36)
  %37 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %37)
  ret void

bb4:                                              ; preds = %bb2
  %38 = bitcast %"core::option::Option<u8>"* %_8 to %"core::option::Option<u8>::Some"*
  %39 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %ptr, align 8
  store i8 %40, i8* %41, align 1
  %42 = load i8*, i8** %ptr, align 8
  %43 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43)
  %44 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %44, i8** %tmp_ret.i, align 8
  %45 = load i8*, i8** %tmp_ret.i, align 8
  %46 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %45, i8** %ptr, align 8
  %47 = bitcast %"core::option::Option<u8>"* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %47)
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

!0 = !{i8 0, i8 2}
