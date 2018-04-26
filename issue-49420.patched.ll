; ModuleID = 'issue-49420.patched.ll'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%"core::option::Option<u8>::Some" = type { [1 x i8], i8, [0 x i8] }

; Function Attrs: uwtable
define void @repeat_take_collect([100000 x i8]* dereferenceable(100000) %result) unnamed_addr #0 {
start:
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
  %tmp6 = call { i1, i8 } @next({ i64, i8 }* dereferenceable(16) %iterator)
  store { i1, i8 } %tmp6, { i1, i8 }* %_8, align 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %tmp7 = bitcast { i1, i8 }* %_8 to i1*
  %tmp8 = load i1, i1* %tmp7, align 1
  %tmp9 = zext i1 %tmp8 to i64
  %tmp10 = bitcast { i1, i8 }* %_8 to i1*
  %tmp11 = load i1, i1* %tmp10, align 1
  %tmp12 = zext i1 %tmp11 to i64
  switch i64 %tmp12, label %bb3 [
    i64 1, label %bb4
  ]

bb3:                                              ; preds = %bb2
  %tmp13 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp13)
  %tmp14 = bitcast i8** %ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %tmp14)
  %tmp15 = bitcast { i64, i8 }* %iterator to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %tmp15)
  ret void

bb4:                                              ; preds = %bb2
  %tmp16 = bitcast { i1, i8 }* %_8 to %"core::option::Option<u8>::Some"*
  %tmp17 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp16, i32 0, i32 1
  %tmp18 = load i8, i8* %tmp17, align 1
  %tmp19 = load i8*, i8** %ptr, align 8
  store i8 %tmp18, i8* %tmp19, align 1
  %tmp20 = load i8*, i8** %ptr, align 8
  %tmp21 = call i8* @offset(i8* %tmp20, i64 1)
  br label %bb5

bb5:                                              ; preds = %bb4
  store i8* %tmp21, i8** %ptr, align 8
  %tmp22 = bitcast { i1, i8 }* %_8 to i8*
  call void @llvm.lifetime.end.p0i8(i64 2, i8* %tmp22)
  br label %bb1
}

; Function Attrs: uwtable
define internal { i1, i8 } @next({ i64, i8 }* dereferenceable(16) %iter) unnamed_addr #0 {
start:
  %_0 = alloca { i1, i8 }, align 1
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
  %tmp9 = bitcast { i1, i8 }* %_0 to %"core::option::Option<u8>::Some"*
  %tmp10 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %tmp9, i32 0, i32 1
  store i8 %tmp8, i8* %tmp10, align 1
  %tmp11 = bitcast { i1, i8 }* %_0 to i1*
  store i1 true, i1* %tmp11, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %tmp12 = bitcast { i1, i8 }* %_0 to i1*
  store i1 false, i1* %tmp12, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %tmp13 = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0, i32 0, i32 0
  %tmp14 = load i1, i1* %tmp13, align 1
  %tmp15 = getelementptr inbounds { i1, i8 }, { i1, i8 }* %_0, i32 0, i32 1
  %tmp16 = load i8, i8* %tmp15, align 1
  %tmp17 = insertvalue { i1, i8 } undef, i1 %tmp14, 0
  %tmp18 = insertvalue { i1, i8 } %tmp17, i8 %tmp16, 1
  ret { i1, i8 } %tmp18
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
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { argmemonly nounwind }
