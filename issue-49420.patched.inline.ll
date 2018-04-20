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
  %5 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2, i8* %5)
  %6 = bitcast { i1, i8 }* %_0.i to i8*
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
  %16 = bitcast { i1, i8 }* %_0.i to %"core::option::Option<u8>::Some"*
  %17 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %16, i32 0, i32 1
  store i8 %15, i8* %17, align 1
  %18 = bitcast { i1, i8 }* %_0.i to i8*
  store i8 1, i8* %18, align 1
  br label %next.exit

bb2.i:                                            ; preds = %bb1
  %19 = bitcast { i1, i8 }* %_0.i to i8*
  store i8 0, i8* %19, align 1
  br label %next.exit

next.exit:                                        ; preds = %bb1.i, %bb2.i
  %20 = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0.i, i32 0, i32 0
  %21 = bitcast i1* %20 to i8*
  %22 = load i8, i8* %21, align 1, !range !0
  %23 = trunc i8 %22 to i1
  %24 = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0.i, i32 0, i32 1
  %25 = load i8, i8* %24, align 1
  %26 = insertvalue { i1, i8 } undef, i1 %23, 0
  %27 = insertvalue { i1, i8 } %26, i8 %25, 1
  %28 = bitcast { i1, i8 }* %_0.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %28)
  store { i1, i8 } %27, { i1, i8 }* %_8, align 1
  br label %bb2

bb2:                                              ; preds = %next.exit
  %29 = bitcast { i1, i8 }* %_8 to i8*
  %30 = load i8, i8* %29, align 1, !range !0
  %31 = trunc i8 %30 to i1
  %32 = zext i1 %31 to i64
  %33 = bitcast { i1, i8 }* %_8 to i8*
  %34 = load i8, i8* %33, align 1, !range !0
  %35 = trunc i8 %34 to i1
  %36 = zext i1 %35 to i64
  switch i64 %36, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %37 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %37)
  %38 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38)
  %39 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %39)
  ret void

bb4:                                              ; preds = %bb2
  %40 = bitcast { i1, i8 }* %_8 to %"core::option::Option<u8>::Some"*
  %41 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %40, i32 0, i32 1
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %ptr, align 8
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %ptr, align 8
  %45 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %45)
  %46 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %46, i8** %tmp_ret.i, align 8
  %47 = load i8*, i8** %tmp_ret.i, align 8
  %48 = bitcast i8** %tmp_ret.i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %47, i8** %ptr, align 8
  %49 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %49)
  br label %bb1
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }

!0 = !{i8 0, i8 2}
