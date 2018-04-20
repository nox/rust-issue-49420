; ModuleID = 'issue_494200-8787f43e282added376259c1adb08b80.rs'
source_filename = "issue_494200-8787f43e282added376259c1adb08b80.rs"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin"

%"alloc::vec::Vec<u8>" = type { [0 x i64], { i8*, i64 }, [0 x i64], i64, [0 x i64] }
%"core::option::Option<usize>" = type { [0 x i64], i64, [1 x i64] }
%"core::option::Option<u8>" = type { [0 x i8], i8, [1 x i8] }
%"core::option::Option<u8>::Some" = type { [1 x i8], i8, [0 x i8] }
%"core::option::Option<core::heap::Layout>" = type { [0 x i64], i64, [2 x i64] }
%"core::option::Option<(core::heap::Layout, usize)>" = type { [0 x i64], i64, [3 x i64] }
%"core::option::Option<(core::heap::Layout, usize)>::Some" = type { [1 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }
%"core::option::Option<core::heap::Layout>::Some" = type { [1 x i64], { i64, i64 }, [0 x i64] }
%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>" = type { [0 x i64], i64, [3 x i64] }
%"core::heap::CollectionAllocErr" = type { [0 x i64], i64, [2 x i64] }
%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err" = type { [1 x i64], %"core::heap::CollectionAllocErr", [0 x i64] }
%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok" = type { [1 x i64], { i64, i64 }, [0 x i64] }
%"core::result::Result<usize, core::heap::CollectionAllocErr>" = type { [0 x i64], i64, [3 x i64] }
%"core::result::Result<usize, core::heap::CollectionAllocErr>::Err" = type { [1 x i64], %"core::heap::CollectionAllocErr", [0 x i64] }
%"core::option::Option<usize>::Some" = type { [1 x i64], i64, [0 x i64] }
%"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok" = type { [1 x i64], i64, [0 x i64] }
%"core::result::Result<usize, core::option::NoneError>" = type { [0 x i64], i64, [1 x i64] }
%"core::result::Result<usize, core::option::NoneError>::Err" = type { [8 x i8], %"core::option::NoneError", [0 x i8] }
%"core::option::NoneError" = type {}
%"core::result::Result<usize, core::option::NoneError>::Ok" = type { [1 x i64], i64, [0 x i64] }
%"core::heap::AllocErr" = type { [0 x i64], i64, [2 x i64] }
%"core::mem::ManuallyDrop<core::heap::AllocErr>" = type { [3 x i64] }
%"core::mem::ManuallyDrop<core::mem::ManuallyDrop<core::heap::AllocErr>>" = type { [3 x i64] }
%"core::result::Result<(), core::heap::CollectionAllocErr>" = type { [0 x i64], i64, [2 x i64] }
%"core::result::Result<*mut u8, core::heap::AllocErr>" = type { [0 x i64], i64, [3 x i64] }
%"core::result::Result<(), core::heap::CollectionAllocErr>::Ok" = type { [0 x i8], {}, [0 x i8] }
%"core::result::Result<(), core::heap::CollectionAllocErr>::Err" = type { [0 x i64], %"core::heap::CollectionAllocErr", [0 x i64] }
%"alloc::heap::Heap" = type {}
%"core::result::Result<*mut u8, core::heap::AllocErr>::Ok" = type { [1 x i64], i8*, [0 x i64] }
%"core::result::Result<*mut u8, core::heap::AllocErr>::Err" = type { [1 x i64], %"core::heap::AllocErr", [0 x i64] }
%"core::heap::CollectionAllocErr::AllocErr" = type { [0 x i64], %"core::heap::AllocErr", [0 x i64] }
%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@byte_str.0 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@byte_str.1 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"libcore/option.rs" }>, align 1
@byte_str.2 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [43 x i8] }>, <{ [43 x i8] }>* @byte_str.0, i32 0, i32 0, i32 0), [8 x i8] c"+\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @byte_str.1, i32 0, i32 0, i32 0), [16 x i8] c"\11\00\00\00\00\00\00\00O\01\00\00\15\00\00\00" }>, align 8
@byte_str.3 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"capacity overflow" }>, align 1
@byte_str.4 = private unnamed_addr constant <{ [19 x i8] }> <{ [19 x i8] c"liballoc/raw_vec.rs" }>, align 1
@byte_str.5 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @byte_str.3, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [19 x i8] }>, <{ [19 x i8] }>* @byte_str.4, i32 0, i32 0, i32 0), [16 x i8] c"\13\00\00\00\00\00\00\00-\02\00\00&\00\00\00" }>, align 8

; <alloc::vec::Vec<T>>::extend_desugared
; Function Attrs: uwtable
define void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$16extend_desugared17hc3be24e30cdc442aE"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64, i8) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %abi_cast = alloca i16, align 2
  %personalityslot = alloca { i8*, i32 }, align 8
  %_35 = alloca i8, align 1
  %_15 = alloca { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, align 8
  %_3 = alloca %"core::option::Option<u8>", align 1
  %iterator = alloca { i64, i8 }, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  store i8 %1, i8* %3, align 8
  store i8 0, i8* %_35, align 1
  br label %bb1

bb1:                                              ; preds = %bb24, %start
; invoke <core::iter::Take<I> as core::iter::iterator::Iterator>::next
  %4 = invoke i16 @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hfda329eae2dac49aE"({ i64, i8 }* dereferenceable(16) %iterator)
          to label %bb4 unwind label %cleanup

bb2:                                              ; preds = %bb3
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb3:                                              ; preds = %bb21, %bb8, %cleanup
  br label %bb2

bb4:                                              ; preds = %bb1
  store i16 %4, i16* %abi_cast, align 2
  %11 = bitcast %"core::option::Option<u8>"* %_3 to i8*
  %12 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 2, i32 1, i1 false)
  %13 = bitcast %"core::option::Option<u8>"* %_3 to i8*
  %14 = load i8, i8* %13, align 1, !range !0
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i64
  %17 = bitcast %"core::option::Option<u8>"* %_3 to i8*
  %18 = load i8, i8* %17, align 1, !range !0
  %19 = trunc i8 %18 to i1
  %20 = zext i1 %19 to i64
  switch i64 %20, label %bb5 [
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_35, align 1
  br label %bb19

bb6:                                              ; preds = %bb4
  store i8 1, i8* %_35, align 1
  %21 = bitcast %"core::option::Option<u8>"* %_3 to %"core::option::Option<u8>::Some"*
  %22 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %21, i32 0, i32 1
  %23 = load i8, i8* %22, align 1
; invoke <alloc::vec::Vec<T>>::len
  %24 = invoke i64 @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$3len17h57dd735628443333E"(%"alloc::vec::Vec<u8>"* noalias readonly dereferenceable(24) %self)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
; invoke <alloc::vec::Vec<T>>::capacity
  %25 = invoke i64 @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$8capacity17h768ab211f26e0e05E"(%"alloc::vec::Vec<u8>"* noalias readonly dereferenceable(24) %self)
          to label %bb9 unwind label %cleanup1

bb8:                                              ; preds = %bb22, %bb23
  %26 = bitcast %"core::option::Option<u8>"* %_3 to i8*
  %27 = load i8, i8* %26, align 1, !range !0
  %28 = trunc i8 %27 to i1
  %29 = zext i1 %28 to i64
  switch i64 %29, label %bb21 [
    i64 1, label %bb3
  ]

bb9:                                              ; preds = %bb7
  %30 = icmp eq i64 %24, %25
  br i1 %30, label %bb10, label %bb14

bb10:                                             ; preds = %bb9
; invoke <core::iter::Take<I> as core::iter::iterator::Iterator>::size_hint
  invoke void @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$9size_hint17hb03148b3367ef39fE"({ [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* noalias nocapture sret dereferenceable(24) %_15, { i64, i8 }* noalias readonly dereferenceable(16) %iterator)
          to label %bb11 unwind label %cleanup1

bb11:                                             ; preds = %bb10
  %31 = bitcast { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %_15 to i64*
  %32 = load i64, i64* %31, align 8
; invoke core::num::<impl usize>::saturating_add
  %33 = invoke i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_add17hb5863fbb868e95b4E"(i64 %32, i64 1)
          to label %bb12 unwind label %cleanup1

bb12:                                             ; preds = %bb11
; invoke <alloc::vec::Vec<T>>::reserve
  invoke void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h1fd8857fdd17854dE"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %33)
          to label %bb13 unwind label %cleanup1

bb13:                                             ; preds = %bb12
  br label %bb14

bb14:                                             ; preds = %bb13, %bb9
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %34 = invoke { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h308e50c1ecab2c37E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self)
          to label %bb15 unwind label %cleanup1

bb15:                                             ; preds = %bb14
  %35 = extractvalue { [0 x i8]*, i64 } %34, 0
  %36 = extractvalue { [0 x i8]*, i64 } %34, 1
; invoke alloc::slice::<impl [T]>::get_unchecked_mut
  %37 = invoke align 1 dereferenceable(1) i8* @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h878dd993187a8722E"([0 x i8]* nonnull %35, i64 %36, i64 %24)
          to label %bb16 unwind label %cleanup1

bb16:                                             ; preds = %bb15
  store i8 0, i8* %_35, align 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h018aa1d81520d036E(i8* %37, i8 %23)
          to label %bb17 unwind label %cleanup1

bb17:                                             ; preds = %bb16
  %38 = add i64 %24, 1
; invoke <alloc::vec::Vec<T>>::set_len
  invoke void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7set_len17hc8c293ccfaae9367E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %38)
          to label %bb18 unwind label %cleanup1

bb18:                                             ; preds = %bb17
  store i8 0, i8* %_35, align 1
  %39 = bitcast %"core::option::Option<u8>"* %_3 to i8*
  %40 = load i8, i8* %39, align 1, !range !0
  %41 = trunc i8 %40 to i1
  %42 = zext i1 %41 to i64
  switch i64 %42, label %bb25 [
    i64 1, label %bb24
  ]

bb19:                                             ; preds = %bb5
  br label %bb20

bb20:                                             ; preds = %bb19
  ret void

bb21:                                             ; preds = %bb8
  br label %bb3

bb22:                                             ; preds = %bb23
  store i8 0, i8* %_35, align 1
  br label %bb8

bb23:                                             ; preds = %cleanup1
  %43 = load i8, i8* %_35, align 1, !range !0
  %44 = trunc i8 %43 to i1
  br i1 %44, label %bb22, label %bb8

bb24:                                             ; preds = %bb25, %bb18
  br label %bb1

bb25:                                             ; preds = %bb18
  br label %bb24

cleanup:                                          ; preds = %bb1
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %bb3

cleanup1:                                         ; preds = %bb17, %bb16, %bb15, %bb14, %bb12, %bb11, %bb10, %bb7, %bb6
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  %52 = extractvalue { i8*, i32 } %50, 1
  %53 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %bb23
}

; <alloc::vec::Vec<T>>::len
; Function Attrs: inlinehint uwtable
define i64 @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$3len17h57dd735628443333E"(%"alloc::vec::Vec<u8>"* noalias readonly dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; <alloc::vec::Vec<T>>::new
; Function Attrs: inlinehint uwtable
define void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$3new17h96e3d1cf7d588f4aE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T>>::new
  %1 = call { i8*, i64 } @"_ZN40_$LT$alloc..raw_vec..RawVec$LT$T$GT$$GT$3new17hc9e6c1ca79be4c06E"()
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %2, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 3
  store i64 0, i64* %7, align 8
  ret void
}

; <alloc::vec::Vec<T>>::reserve
; Function Attrs: uwtable
define void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h1fd8857fdd17854dE"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %additional) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %2 = load i64, i64* %1, align 8
; call <alloc::raw_vec::RawVec<T, A>>::reserve
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$7reserve17h42e2a3c690c9f31dE"({ i8*, i64 }* dereferenceable(16) %0, i64 %2, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T>>::set_len
; Function Attrs: inlinehint uwtable
define void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7set_len17hc8c293ccfaae9367E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %len) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  store i64 %len, i64* %0, align 8
  ret void
}

; <alloc::vec::Vec<T>>::capacity
; Function Attrs: inlinehint uwtable
define i64 @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$8capacity17h768ab211f26e0e05E"(%"alloc::vec::Vec<u8>"* noalias readonly dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_0.i = alloca i64, align 8
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call core::mem::size_of
  %1 = call i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E(), !noalias !1
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %start
  store i64 -1, i64* %_0.i, align 8, !noalias !1
  br label %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"

bb3.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8, !alias.scope !1
  store i64 %4, i64* %_0.i, align 8, !noalias !1
  br label %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"

"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit": ; preds = %bb2.i, %bb3.i
  %5 = load i64, i64* %_0.i, align 8, !noalias !1
  br label %bb1

bb1:                                              ; preds = %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"
  ret i64 %5
}

; <core::ptr::Unique<T>>::new_unchecked
; Function Attrs: uwtable
define nonnull i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$13new_unchecked17h0a918da6392e6f93E"(i8* %ptr) unnamed_addr #0 {
start:
  %_2 = alloca i8*, align 8
  %_0 = alloca i8*, align 8
  store i8* %ptr, i8** %_2, align 8
  %0 = load i8*, i8** %_2, align 8, !nonnull !4
  store i8* %0, i8** %_0, align 8
  %1 = load i8*, i8** %_0, align 8, !nonnull !4
  ret i8* %1
}

; <core::ptr::Unique<T>>::empty
; Function Attrs: uwtable
define nonnull i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$5empty17hba5405969704fe67E"() unnamed_addr #0 {
start:
; call core::mem::align_of
  %0 = call i64 @_ZN4core3mem8align_of17h368a78612243a4a4E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ule i64 %0, -1
  call void @llvm.assume(i1 %1)
  %2 = inttoptr i64 %0 to i8*
; call <core::ptr::Unique<T>>::new_unchecked
  %3 = call nonnull i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$13new_unchecked17h0a918da6392e6f93E"(i8* %2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %3
}

; <core::ptr::Unique<T>>::as_ptr
; Function Attrs: uwtable
define i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$6as_ptr17h0171b97c352c0cdcE"(i8* nonnull %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; <core::option::Option<T>>::map
; Function Attrs: inlinehint uwtable
define void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$3map17hdf45712f3c9c2e7fE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24), %"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_11 = alloca i8, align 1
  %_10 = alloca i8, align 1
  %_9 = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_8 = alloca { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }, align 8
  %x = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  store i8 0, i8* %_10, align 1
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_10, align 1
  store i8 1, i8* %_11, align 1
  %1 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !5
  %3 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %self to i64*
  %4 = load i64, i64* %3, align 8, !range !5
  switch i64 %4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  %11 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 0, i64* %11, align 8
  br label %bb6

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  store i8 0, i8* %_10, align 1
  %12 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %self to %"core::option::Option<(core::heap::Layout, usize)>::Some"*
  %13 = getelementptr inbounds %"core::option::Option<(core::heap::Layout, usize)>::Some", %"core::option::Option<(core::heap::Layout, usize)>::Some"* %12, i32 0, i32 1
  %14 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %13 to i8*
  %15 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %14, i64 24, i32 8, i1 false)
  store i8 0, i8* %_11, align 1
  %16 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %x to i8*
  %17 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %16, i64 24, i32 8, i1 false)
  %18 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_8 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
  %19 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_9 to i8*
  %20 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %19, i64 24, i32 8, i1 false)
  %21 = bitcast { [0 x i64], { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, [0 x i64] }* %_8 to { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }*
; invoke core::heap::Layout::array::{{closure}}
  %22 = invoke { i64, i64 } @"_ZN4core4heap6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17hf05d6ce84d89f619E"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %21)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  %25 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to %"core::option::Option<core::heap::Layout>::Some"*
  %26 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %25, i32 0, i32 1
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  store i64 %23, i64* %27, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  store i64 %24, i64* %28, align 8
  %29 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 1, i64* %29, align 8
  br label %bb6

bb6:                                              ; preds = %bb2, %bb5
  %30 = load i8, i8* %_11, align 1, !range !0
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb12, label %bb7

bb7:                                              ; preds = %bb12, %bb6
  %32 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %self to i64*
  %33 = load i64, i64* %32, align 8, !range !5
  switch i64 %33, label %bb16 [
    i64 1, label %bb14
  ]

bb8:                                              ; preds = %bb11
  %34 = load i8, i8* %_10, align 1, !range !0
  %35 = trunc i8 %34 to i1
  br i1 %35, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_10, align 1
  br label %bb1

bb10:                                             ; preds = %bb11
  br label %bb1

bb11:                                             ; preds = %cleanup
  %36 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %self to i64*
  %37 = load i64, i64* %36, align 8, !range !5
  switch i64 %37, label %bb10 [
    i64 1, label %bb8
  ]

bb12:                                             ; preds = %bb6
  store i8 0, i8* %_11, align 1
  br label %bb7

bb13:                                             ; preds = %bb15, %bb14, %bb16
  ret void

bb14:                                             ; preds = %bb7
  %38 = load i8, i8* %_10, align 1, !range !0
  %39 = trunc i8 %38 to i1
  br i1 %39, label %bb15, label %bb13

bb15:                                             ; preds = %bb14
  store i8 0, i8* %_10, align 1
  br label %bb13

bb16:                                             ; preds = %bb7
  br label %bb13

cleanup:                                          ; preds = %bb4
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = extractvalue { i8*, i32 } %40, 1
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %bb11
}

; <core::option::Option<T>>::ok_or
; Function Attrs: inlinehint uwtable
define void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17h21192d1da1a67064E"(%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), %"core::option::Option<core::heap::Layout>"* noalias nocapture dereferenceable(24) %self, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %err) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_7 = alloca %"core::heap::CollectionAllocErr", align 8
  store i8 0, i8* %_8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !5
  %3 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %4 = load i64, i64* %3, align 8, !range !5
  switch i64 %4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %11 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  %12 = bitcast %"core::heap::CollectionAllocErr"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %11, i64 24, i32 8, i1 false)
  %13 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err"*
  %14 = getelementptr inbounds %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err", %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err"* %13, i32 0, i32 1
  %15 = bitcast %"core::heap::CollectionAllocErr"* %_7 to i8*
  %16 = bitcast %"core::heap::CollectionAllocErr"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %15, i64 24, i32 8, i1 false)
  %17 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 1, i64* %17, align 8
  br label %bb5

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %18 = bitcast %"core::option::Option<core::heap::Layout>"* %self to %"core::option::Option<core::heap::Layout>::Some"*
  %19 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %18, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok"*
  %25 = getelementptr inbounds %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok"* %24, i32 0, i32 1
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  store i64 %21, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  store i64 %23, i64* %27, align 8
  %28 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 0, i64* %28, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %29 = load i8, i8* %_9, align 1, !range !0
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb11, label %bb7

bb6:                                              ; No predecessors!
  %31 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %32 = load i64, i64* %31, align 8, !range !5
  switch i64 %32, label %bb10 [
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb11, %bb5
  %33 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %34 = load i64, i64* %33, align 8, !range !5
  switch i64 %34, label %bb15 [
    i64 1, label %bb13
  ]

bb8:                                              ; preds = %bb6
  %35 = load i8, i8* %_8, align 1, !range !0
  %36 = trunc i8 %35 to i1
  br i1 %36, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_8, align 1
  br label %bb1

bb10:                                             ; preds = %bb6
  br label %bb1

bb11:                                             ; preds = %bb5
  store i8 0, i8* %_9, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  ret void

bb13:                                             ; preds = %bb7
  %37 = load i8, i8* %_8, align 1, !range !0
  %38 = trunc i8 %37 to i1
  br i1 %38, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_8, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; <core::option::Option<T>>::ok_or
; Function Attrs: inlinehint uwtable
define void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17h8fe67cef7bbe8281E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %self, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %err) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_7 = alloca %"core::heap::CollectionAllocErr", align 8
  store i8 0, i8* %_8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::option::Option<usize>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !5
  %3 = bitcast %"core::option::Option<usize>"* %self to i64*
  %4 = load i64, i64* %3, align 8, !range !5
  switch i64 %4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %11 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  %12 = bitcast %"core::heap::CollectionAllocErr"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %11, i64 24, i32 8, i1 false)
  %13 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"*
  %14 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"* %13, i32 0, i32 1
  %15 = bitcast %"core::heap::CollectionAllocErr"* %_7 to i8*
  %16 = bitcast %"core::heap::CollectionAllocErr"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %15, i64 24, i32 8, i1 false)
  %17 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 1, i64* %17, align 8
  br label %bb5

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %18 = bitcast %"core::option::Option<usize>"* %self to %"core::option::Option<usize>::Some"*
  %19 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"*
  %22 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 0, i64* %23, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %24 = load i8, i8* %_9, align 1, !range !0
  %25 = trunc i8 %24 to i1
  br i1 %25, label %bb11, label %bb7

bb6:                                              ; No predecessors!
  %26 = bitcast %"core::option::Option<usize>"* %self to i64*
  %27 = load i64, i64* %26, align 8, !range !5
  switch i64 %27, label %bb10 [
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb11, %bb5
  %28 = bitcast %"core::option::Option<usize>"* %self to i64*
  %29 = load i64, i64* %28, align 8, !range !5
  switch i64 %29, label %bb15 [
    i64 1, label %bb13
  ]

bb8:                                              ; preds = %bb6
  %30 = load i8, i8* %_8, align 1, !range !0
  %31 = trunc i8 %30 to i1
  br i1 %31, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_8, align 1
  br label %bb1

bb10:                                             ; preds = %bb6
  br label %bb1

bb11:                                             ; preds = %bb5
  store i8 0, i8* %_9, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  ret void

bb13:                                             ; preds = %bb7
  %32 = load i8, i8* %_8, align 1, !range !0
  %33 = trunc i8 %32 to i1
  br i1 %33, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_8, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; <core::option::Option<T>>::ok_or
; Function Attrs: inlinehint uwtable
define void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17heb5866c0f46239c5E"(%"core::result::Result<usize, core::option::NoneError>"* noalias nocapture sret dereferenceable(16), %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  store i8 0, i8* %_8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
  %1 = bitcast %"core::option::Option<usize>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !5
  %3 = bitcast %"core::option::Option<usize>"* %self to i64*
  %4 = load i64, i64* %3, align 8, !range !5
  switch i64 %4, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb9, %bb8, %bb10
  %5 = bitcast { i8*, i32 }* %personalityslot to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = insertvalue { i8*, i32 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i32 } %9, i32 %8, 1
  resume { i8*, i32 } %10

bb2:                                              ; preds = %start
  store i8 0, i8* %_9, align 1
  %11 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %0 to %"core::result::Result<usize, core::option::NoneError>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<usize, core::option::NoneError>::Err", %"core::result::Result<usize, core::option::NoneError>::Err"* %11, i32 0, i32 1
  %13 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  br label %bb5

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  store i8 0, i8* %_8, align 1
  %14 = bitcast %"core::option::Option<usize>"* %self to %"core::option::Option<usize>::Some"*
  %15 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %0 to %"core::result::Result<usize, core::option::NoneError>::Ok"*
  %18 = getelementptr inbounds %"core::result::Result<usize, core::option::NoneError>::Ok", %"core::result::Result<usize, core::option::NoneError>::Ok"* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %0 to i64*
  store i64 0, i64* %19, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %20 = load i8, i8* %_9, align 1, !range !0
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb11, label %bb7

bb6:                                              ; No predecessors!
  %22 = bitcast %"core::option::Option<usize>"* %self to i64*
  %23 = load i64, i64* %22, align 8, !range !5
  switch i64 %23, label %bb10 [
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb11, %bb5
  %24 = bitcast %"core::option::Option<usize>"* %self to i64*
  %25 = load i64, i64* %24, align 8, !range !5
  switch i64 %25, label %bb15 [
    i64 1, label %bb13
  ]

bb8:                                              ; preds = %bb6
  %26 = load i8, i8* %_8, align 1, !range !0
  %27 = trunc i8 %26 to i1
  br i1 %27, label %bb9, label %bb1

bb9:                                              ; preds = %bb8
  store i8 0, i8* %_8, align 1
  br label %bb1

bb10:                                             ; preds = %bb6
  br label %bb1

bb11:                                             ; preds = %bb5
  store i8 0, i8* %_9, align 1
  br label %bb7

bb12:                                             ; preds = %bb14, %bb13, %bb15
  ret void

bb13:                                             ; preds = %bb7
  %28 = load i8, i8* %_8, align 1, !range !0
  %29 = trunc i8 %28 to i1
  br i1 %29, label %bb14, label %bb12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_8, align 1
  br label %bb12

bb15:                                             ; preds = %bb7
  br label %bb12
}

; <core::option::Option<T>>::unwrap
; Function Attrs: inlinehint uwtable
define { i64, i64 } @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hf4abf504a703e03cE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %0 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %1 = load i64, i64* %0, align 8, !range !5
  %2 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %3 = load i64, i64* %2, align 8, !range !5
  switch i64 %3, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb1:                                              ; preds = %bb5
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
; invoke core::panicking::panic
  invoke void @_ZN4core9panicking5panic17hfa30b041999ce81dE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @byte_str.2 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
          to label %unreachable unwind label %cleanup

bb3:                                              ; preds = %start
  unreachable

bb4:                                              ; preds = %start
  %10 = bitcast %"core::option::Option<core::heap::Layout>"* %self to %"core::option::Option<core::heap::Layout>::Some"*
  %11 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %"core::option::Option<core::heap::Layout>"* %self to i64*
  %17 = load i64, i64* %16, align 8, !range !5
  switch i64 %17, label %bb7 [
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %cleanup
  br label %bb1

bb6:                                              ; preds = %bb7, %bb4
  %18 = insertvalue { i64, i64 } undef, i64 %13, 0
  %19 = insertvalue { i64, i64 } %18, i64 %15, 1
  ret { i64, i64 } %19

bb7:                                              ; preds = %bb4
  br label %bb6

unreachable:                                      ; preds = %bb2
  unreachable

cleanup:                                          ; preds = %bb2
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %bb5
}

; <alloc::raw_vec::RawVec<T>>::new
; Function Attrs: uwtable
define { i8*, i64 } @"_ZN40_$LT$alloc..raw_vec..RawVec$LT$T$GT$$GT$3new17hc9e6c1ca79be4c06E"() unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T, A>>::new_in
  %0 = call { i8*, i64 } @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$6new_in17h69a984c46603a3acE"()
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <core::mem::ManuallyDrop<T>>::into_inner
; Function Attrs: inlinehint uwtable
define void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$10into_inner17he83d70021740e619E"(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24), %"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %slot) unnamed_addr #1 {
start:
  %_2 = alloca %"core::heap::AllocErr", align 8
  %1 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %slot to %"core::heap::AllocErr"*
  %2 = bitcast %"core::heap::AllocErr"* %1 to i8*
  %3 = bitcast %"core::heap::AllocErr"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %2, i64 24, i32 8, i1 false)
  %4 = bitcast %"core::heap::AllocErr"* %_2 to i8*
  %5 = bitcast %"core::heap::AllocErr"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 24, i32 8, i1 false)
  ret void
}

; <core::mem::ManuallyDrop<T>>::new
; Function Attrs: inlinehint uwtable
define void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$3new17h278f4b4f6fbfacbcE"(%"core::mem::ManuallyDrop<core::mem::ManuallyDrop<core::heap::AllocErr>>"* noalias nocapture sret dereferenceable(24), %"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %value) unnamed_addr #1 {
start:
  %_2 = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %1 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %value to i8*
  %2 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::mem::ManuallyDrop<core::mem::ManuallyDrop<core::heap::AllocErr>>"* %0 to %"core::mem::ManuallyDrop<core::heap::AllocErr>"*
  %4 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_2 to i8*
  %5 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 24, i32 8, i1 false)
  ret void
}

; <core::mem::ManuallyDrop<T>>::new
; Function Attrs: inlinehint uwtable
define void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$3new17hf1c8d4e0b9283e99E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture sret dereferenceable(24), %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %value) unnamed_addr #1 {
start:
  %_2 = alloca %"core::heap::AllocErr", align 8
  %1 = bitcast %"core::heap::AllocErr"* %value to i8*
  %2 = bitcast %"core::heap::AllocErr"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %0 to %"core::heap::AllocErr"*
  %4 = bitcast %"core::heap::AllocErr"* %_2 to i8*
  %5 = bitcast %"core::heap::AllocErr"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 24, i32 8, i1 false)
  ret void
}

; <alloc::raw_vec::RawVec<T, A>>::try_reserve
; Function Attrs: uwtable
define void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11try_reserve17hca462b00eab0eeb1E"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), { i8*, i64 }* dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #0 {
start:
  %_0.i = alloca i64, align 8
  %_74 = alloca %"core::heap::AllocErr", align 8
  %_73 = alloca %"core::heap::CollectionAllocErr", align 8
  %err3 = alloca %"core::heap::AllocErr", align 8
  %_68 = alloca %"core::result::Result<*mut u8, core::heap::AllocErr>", align 8
  %_67 = alloca %"core::result::Result<*mut u8, core::heap::AllocErr>", align 8
  %_50 = alloca %"core::option::Option<core::heap::Layout>", align 8
  %res = alloca %"core::result::Result<*mut u8, core::heap::AllocErr>", align 8
  %_47 = alloca %"core::heap::CollectionAllocErr", align 8
  %_46 = alloca %"core::heap::CollectionAllocErr", align 8
  %err2 = alloca %"core::heap::CollectionAllocErr", align 8
  %_39 = alloca %"core::result::Result<(), core::heap::CollectionAllocErr>", align 8
  %_38 = alloca %"core::result::Result<(), core::heap::CollectionAllocErr>", align 8
  %_35 = alloca %"core::heap::CollectionAllocErr", align 8
  %_34 = alloca %"core::heap::CollectionAllocErr", align 8
  %err1 = alloca %"core::heap::CollectionAllocErr", align 8
  %_29 = alloca %"core::heap::CollectionAllocErr", align 8
  %_27 = alloca %"core::option::Option<core::heap::Layout>", align 8
  %_26 = alloca %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>", align 8
  %_25 = alloca %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  %_22 = alloca %"core::heap::CollectionAllocErr", align 8
  %_21 = alloca %"core::heap::CollectionAllocErr", align 8
  %err = alloca %"core::heap::CollectionAllocErr", align 8
  %_13 = alloca %"core::result::Result<usize, core::heap::CollectionAllocErr>", align 8
  %_12 = alloca %"core::result::Result<usize, core::heap::CollectionAllocErr>", align 8
; call core::mem::size_of
  %1 = call i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E(), !noalias !6
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %bb2.i, label %bb3.i

bb2.i:                                            ; preds = %start
  store i64 -1, i64* %_0.i, align 8, !noalias !6
  br label %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"

bb3.i:                                            ; preds = %start
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %4 = load i64, i64* %3, align 8, !alias.scope !6
  store i64 %4, i64* %_0.i, align 8, !noalias !6
  br label %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"

"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit": ; preds = %bb2.i, %bb3.i
  %5 = load i64, i64* %_0.i, align 8, !noalias !6
  br label %bb1

bb1:                                              ; preds = %"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE.exit"
; call core::num::<impl usize>::wrapping_sub
  %6 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %5, i64 %used_cap)
  br label %bb2

bb2:                                              ; preds = %bb1
  %7 = icmp uge i64 %6, %needed_extra_cap
  br i1 %7, label %bb3, label %bb4

bb3:                                              ; preds = %bb2
  %8 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"*
  %9 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"* %8 to {}*
  %10 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 3, i64* %10, align 8
  br label %bb5

bb4:                                              ; preds = %bb2
; call <alloc::raw_vec::RawVec<T, A>>::amortized_new_size
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$18amortized_new_size17he36b86715cfc6a1eE"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_13, { i8*, i64 }* noalias readonly dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap)
  br label %bb6

bb5:                                              ; preds = %bb41, %bb20, %bb12, %bb3
  ret void

bb6:                                              ; preds = %bb4
; call <core::result::Result<T, E> as core::ops::try::Try>::into_result
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h4564f75c6684d2c3E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_12, %"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(32) %_13)
  br label %bb7

bb7:                                              ; preds = %bb6
  %11 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_12 to i64*
  %12 = load i64, i64* %11, align 8, !range !5
  %13 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_12 to i64*
  %14 = load i64, i64* %13, align 8, !range !5
  switch i64 %14, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb10
  ]

bb8:                                              ; preds = %bb36, %bb29, %bb23, %bb15, %bb7
  unreachable

bb9:                                              ; preds = %bb7
  %15 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_12 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
; call core::heap::Layout::array
  call void @_ZN4core4heap6Layout5array17he8a13402ecace7b9E(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %_27, i64 %17)
  br label %bb13

bb10:                                             ; preds = %bb7
  %18 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_12 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"*
  %19 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"* %18, i32 0, i32 1
  %20 = bitcast %"core::heap::CollectionAllocErr"* %19 to i8*
  %21 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %20, i64 24, i32 8, i1 false)
  %22 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  %23 = bitcast %"core::heap::CollectionAllocErr"* %_22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %22, i64 24, i32 8, i1 false)
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha0c769c8ab5035d6E"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24) %_21, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_22)
  br label %bb11

bb11:                                             ; preds = %bb10
; call <core::result::Result<T, E> as core::ops::try::Try>::from_error
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h3a7eaf9ebd01545cE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %0, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_21)
  br label %bb12

bb12:                                             ; preds = %bb11
  br label %bb5

bb13:                                             ; preds = %bb9
  %24 = bitcast %"core::heap::CollectionAllocErr"* %_29 to i64*
  store i64 2, i64* %24, align 8
; call <core::option::Option<T>>::ok_or
  call void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17h21192d1da1a67064E"(%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_26, %"core::option::Option<core::heap::Layout>"* noalias nocapture dereferenceable(24) %_27, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_29)
  br label %bb14

bb14:                                             ; preds = %bb13
; call <core::result::Result<T, E> as core::ops::try::Try>::into_result
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hfd11e02d0f6ee120E"(%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_25, %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(32) %_26)
  br label %bb15

bb15:                                             ; preds = %bb14
  %25 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_25 to i64*
  %26 = load i64, i64* %25, align 8, !range !5
  %27 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_25 to i64*
  %28 = load i64, i64* %27, align 8, !range !5
  switch i64 %28, label %bb8 [
    i64 0, label %bb16
    i64 1, label %bb17
  ]

bb16:                                             ; preds = %bb15
  %29 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_25 to %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok"*
  %30 = getelementptr inbounds %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Ok"* %29, i32 0, i32 1
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %34, i64* %36, align 8
; call core::heap::Layout::size
  %37 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %new_layout)
  br label %bb21

bb17:                                             ; preds = %bb15
  %38 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_25 to %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err"*
  %39 = getelementptr inbounds %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err", %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>::Err"* %38, i32 0, i32 1
  %40 = bitcast %"core::heap::CollectionAllocErr"* %39 to i8*
  %41 = bitcast %"core::heap::CollectionAllocErr"* %err1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %41, i8* %40, i64 24, i32 8, i1 false)
  %42 = bitcast %"core::heap::CollectionAllocErr"* %err1 to i8*
  %43 = bitcast %"core::heap::CollectionAllocErr"* %_35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %42, i64 24, i32 8, i1 false)
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha0c769c8ab5035d6E"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24) %_34, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_35)
  br label %bb18

bb18:                                             ; preds = %bb17
; call <core::result::Result<T, E> as core::ops::try::Try>::from_error
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h3a7eaf9ebd01545cE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %0, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_34)
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb20

bb20:                                             ; preds = %bb28, %bb19
  br label %bb5

bb21:                                             ; preds = %bb16
; call alloc::raw_vec::alloc_guard
  call void @_ZN5alloc7raw_vec11alloc_guard17h4d8948f98a4e2f69E(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_39, i64 %37)
  br label %bb22

bb22:                                             ; preds = %bb21
; call <core::result::Result<T, E> as core::ops::try::Try>::into_result
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h51916b0afabff6eeE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_38, %"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(24) %_39)
  br label %bb23

bb23:                                             ; preds = %bb22
  %44 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_38 to i64*
  %45 = load i64, i64* %44, align 8, !range !9
  %46 = icmp eq i64 %45, 3
  %47 = select i1 %46, i64 0, i64 1
  %48 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_38 to i64*
  %49 = load i64, i64* %48, align 8, !range !9
  %50 = icmp eq i64 %49, 3
  %51 = select i1 %50, i64 0, i64 1
  switch i64 %51, label %bb8 [
    i64 0, label %bb24
    i64 1, label %bb25
  ]

bb24:                                             ; preds = %bb23
; call <alloc::raw_vec::RawVec<T, A>>::current_layout
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$14current_layout17hc1c51f6618ba7e3fE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %_50, { i8*, i64 }* noalias readonly dereferenceable(16) %self)
  br label %bb29

bb25:                                             ; preds = %bb23
  %52 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_38 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"*
  %53 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"* %52 to %"core::heap::CollectionAllocErr"*
  %54 = bitcast %"core::heap::CollectionAllocErr"* %53 to i8*
  %55 = bitcast %"core::heap::CollectionAllocErr"* %err2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %54, i64 24, i32 8, i1 false)
  %56 = bitcast %"core::heap::CollectionAllocErr"* %err2 to i8*
  %57 = bitcast %"core::heap::CollectionAllocErr"* %_47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %56, i64 24, i32 8, i1 false)
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha0c769c8ab5035d6E"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24) %_46, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_47)
  br label %bb26

bb26:                                             ; preds = %bb25
; call <core::result::Result<T, E> as core::ops::try::Try>::from_error
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h3a7eaf9ebd01545cE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %0, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_46)
  br label %bb27

bb27:                                             ; preds = %bb26
  br label %bb28

bb28:                                             ; preds = %bb40, %bb27
  br label %bb20

bb29:                                             ; preds = %bb24
  %58 = bitcast %"core::option::Option<core::heap::Layout>"* %_50 to i64*
  %59 = load i64, i64* %58, align 8, !range !5
  %60 = bitcast %"core::option::Option<core::heap::Layout>"* %_50 to i64*
  %61 = load i64, i64* %60, align 8, !range !5
  switch i64 %61, label %bb8 [
    i64 0, label %bb30
    i64 1, label %bb31
  ]

bb30:                                             ; preds = %bb29
  %62 = bitcast { i8*, i64 }* %self to %"alloc::heap::Heap"*
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
; call <alloc::heap::Heap as core::heap::Alloc>::alloc
  call void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$5alloc17hcfd1aca7bc22a9c6E"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32) %res, %"alloc::heap::Heap"* nonnull %62, i64 %64, i64 %66)
  br label %bb35

bb31:                                             ; preds = %bb29
  %67 = bitcast %"core::option::Option<core::heap::Layout>"* %_50 to %"core::option::Option<core::heap::Layout>::Some"*
  %68 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %67, i32 0, i32 1
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = bitcast { i8*, i64 }* %self to i8**
  %74 = load i8*, i8** %73, align 8, !nonnull !4
; call <core::ptr::Unique<T>>::as_ptr
  %75 = call i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$6as_ptr17h0171b97c352c0cdcE"(i8* nonnull %74)
  br label %bb33

bb32:                                             ; preds = %bb35, %bb34
  %76 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %res to i8*
  %77 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %76, i64 32, i32 8, i1 false)
; call <core::result::Result<T, E> as core::ops::try::Try>::into_result
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h76c26abd7319d0adE"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32) %_67, %"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture dereferenceable(32) %_68)
  br label %bb36

bb33:                                             ; preds = %bb31
  %78 = bitcast { i8*, i64 }* %self to %"alloc::heap::Heap"*
  %79 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
; call <alloc::heap::Heap as core::heap::Alloc>::realloc
  call void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$7realloc17hb2220f4ae5578c6eE"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32) %res, %"alloc::heap::Heap"* nonnull %78, i8* %75, i64 %70, i64 %72, i64 %80, i64 %82)
  br label %bb34

bb34:                                             ; preds = %bb33
  br label %bb32

bb35:                                             ; preds = %bb30
  br label %bb32

bb36:                                             ; preds = %bb32
  %83 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_67 to i64*
  %84 = load i64, i64* %83, align 8, !range !5
  %85 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_67 to i64*
  %86 = load i64, i64* %85, align 8, !range !5
  switch i64 %86, label %bb8 [
    i64 0, label %bb37
    i64 1, label %bb38
  ]

bb37:                                             ; preds = %bb36
  %87 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_67 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"*
  %88 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok", %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
; call <core::ptr::Unique<T>>::new_unchecked
  %90 = call nonnull i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$13new_unchecked17h0a918da6392e6f93E"(i8* %89)
  br label %bb41

bb38:                                             ; preds = %bb36
  %91 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_67 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"*
  %92 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Err", %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"* %91, i32 0, i32 1
  %93 = bitcast %"core::heap::AllocErr"* %92 to i8*
  %94 = bitcast %"core::heap::AllocErr"* %err3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* %93, i64 24, i32 8, i1 false)
  %95 = bitcast %"core::heap::AllocErr"* %err3 to i8*
  %96 = bitcast %"core::heap::AllocErr"* %_74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %95, i64 24, i32 8, i1 false)
; call <core::heap::CollectionAllocErr as core::convert::From<core::heap::AllocErr>>::from
  call void @"_ZN98_$LT$core..heap..CollectionAllocErr$u20$as$u20$core..convert..From$LT$core..heap..AllocErr$GT$$GT$4from17h16f5c0b22e46952cE"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24) %_73, %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %_74)
  br label %bb39

bb39:                                             ; preds = %bb38
; call <core::result::Result<T, E> as core::ops::try::Try>::from_error
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h3a7eaf9ebd01545cE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %0, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_73)
  br label %bb40

bb40:                                             ; preds = %bb39
  br label %bb28

bb41:                                             ; preds = %bb37
  %97 = bitcast { i8*, i64 }* %self to i8**
  store i8* %90, i8** %97, align 8
  %98 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %17, i64* %98, align 8
  %99 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"*
  %100 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"* %99 to {}*
  %101 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 3, i64* %101, align 8
  br label %bb5
}

; <alloc::raw_vec::RawVec<T, A>>::current_layout
; Function Attrs: uwtable
define void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$14current_layout17hc1c51f6618ba7e3fE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24), { i8*, i64 }* noalias readonly dereferenceable(16) %self) unnamed_addr #0 {
start:
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb6

bb2:                                              ; preds = %start
; call core::mem::align_of
  %5 = call i64 @_ZN4core3mem8align_of17h368a78612243a4a4E()
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::mem::size_of
  %6 = call i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E()
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %6, %8
; call core::heap::Layout::from_size_align_unchecked
  %10 = call { i64, i64 } @_ZN4core4heap6Layout25from_size_align_unchecked17h9496403f299c253eE(i64 %9, i64 %5)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %13 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to %"core::option::Option<core::heap::Layout>::Some"*
  %14 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %11, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %12, i64* %16, align 8
  %17 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 1, i64* %17, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  ret void
}

; <alloc::raw_vec::RawVec<T, A>>::dealloc_buffer
; Function Attrs: uwtable
define void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$14dealloc_buffer17h8854a88e40fa2b2cE"({ i8*, i64 }* dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_5 = alloca %"core::option::Option<core::heap::Layout>", align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %bb2, label %bb8

bb2:                                              ; preds = %bb1
; call <alloc::raw_vec::RawVec<T, A>>::current_layout
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$14current_layout17hc1c51f6618ba7e3fE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %_5, { i8*, i64 }* noalias readonly dereferenceable(16) %self)
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::option::Option<core::heap::Layout>"* %_5 to i64*
  %3 = load i64, i64* %2, align 8, !range !5
  %4 = bitcast %"core::option::Option<core::heap::Layout>"* %_5 to i64*
  %5 = load i64, i64* %4, align 8, !range !5
  switch i64 %5, label %bb5 [
    i64 1, label %bb4
  ]

bb4:                                              ; preds = %bb3
  %6 = bitcast %"core::option::Option<core::heap::Layout>"* %_5 to %"core::option::Option<core::heap::Layout>::Some"*
  %7 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
; call <alloc::raw_vec::RawVec<T, A>>::ptr
  %12 = call i8* @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3ptr17h1eea10f0e1b51578E"({ i8*, i64 }* noalias readonly dereferenceable(16) %self)
  br label %bb6

bb5:                                              ; preds = %bb7, %bb3
  br label %bb8

bb6:                                              ; preds = %bb4
  %13 = bitcast { i8*, i64 }* %self to %"alloc::heap::Heap"*
; call <alloc::heap::Heap as core::heap::Alloc>::dealloc
  call void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$7dealloc17h3d99e8177bcc23d1E"(%"alloc::heap::Heap"* nonnull %13, i8* %12, i64 %9, i64 %11)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb5

bb8:                                              ; preds = %bb5, %bb1
  ret void
}

; <alloc::raw_vec::RawVec<T, A>>::amortized_new_size
; Function Attrs: uwtable
define void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$18amortized_new_size17he36b86715cfc6a1eE"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), { i8*, i64 }* noalias readonly dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #0 {
start:
  %_16 = alloca %"core::heap::CollectionAllocErr", align 8
  %_15 = alloca %"core::heap::CollectionAllocErr", align 8
  %err = alloca %"core::heap::CollectionAllocErr", align 8
  %_10 = alloca %"core::heap::CollectionAllocErr", align 8
  %_7 = alloca %"core::option::Option<usize>", align 8
  %_6 = alloca %"core::result::Result<usize, core::heap::CollectionAllocErr>", align 8
  %_5 = alloca %"core::result::Result<usize, core::heap::CollectionAllocErr>", align 8
; call core::num::<impl usize>::checked_add
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hd8b78b1a3dda7ec6E"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16) %_7, i64 %used_cap, i64 %needed_extra_cap)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::heap::CollectionAllocErr"* %_10 to i64*
  store i64 2, i64* %1, align 8
; call <core::option::Option<T>>::ok_or
  call void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17h8fe67cef7bbe8281E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_6, %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %_7, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_10)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::result::Result<T, E> as core::ops::try::Try>::into_result
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h4564f75c6684d2c3E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %_5, %"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(32) %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_5 to i64*
  %3 = load i64, i64* %2, align 8, !range !5
  %4 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_5 to i64*
  %5 = load i64, i64* %4, align 8, !range !5
  switch i64 %5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb4:                                              ; preds = %bb3
  unreachable

bb5:                                              ; preds = %bb3
  %6 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"*
  %7 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = mul i64 %10, 2
; call core::cmp::max
  %12 = call i64 @_ZN4core3cmp3max17h483ae55f24462c06E(i64 %11, i64 %8)
  br label %bb10

bb6:                                              ; preds = %bb3
  %13 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_5 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"*
  %14 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"* %13, i32 0, i32 1
  %15 = bitcast %"core::heap::CollectionAllocErr"* %14 to i8*
  %16 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %15, i64 24, i32 8, i1 false)
  %17 = bitcast %"core::heap::CollectionAllocErr"* %err to i8*
  %18 = bitcast %"core::heap::CollectionAllocErr"* %_16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %17, i64 24, i32 8, i1 false)
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha0c769c8ab5035d6E"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24) %_15, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_16)
  br label %bb7

bb7:                                              ; preds = %bb6
; call <core::result::Result<T, E> as core::ops::try::Try>::from_error
  call void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h6f95c036f0632321E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32) %0, %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %_15)
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb10, %bb8
  ret void

bb10:                                             ; preds = %bb5
  %19 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"*
  %20 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Ok"* %19, i32 0, i32 1
  store i64 %12, i64* %20, align 8
  %21 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 0, i64* %21, align 8
  br label %bb9
}

; <alloc::raw_vec::RawVec<T, A>>::ptr
; Function Attrs: uwtable
define i8* @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3ptr17h1eea10f0e1b51578E"({ i8*, i64 }* noalias readonly dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %1 = load i8*, i8** %0, align 8, !nonnull !4
; call <core::ptr::Unique<T>>::as_ptr
  %2 = call i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$6as_ptr17h0171b97c352c0cdcE"(i8* nonnull %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %2
}

; <alloc::raw_vec::RawVec<T, A>>::new_in
; Function Attrs: uwtable
define { i8*, i64 } @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$6new_in17h69a984c46603a3acE"() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %cap = alloca i64, align 8
  %_0 = alloca { i8*, i64 }, align 8
; invoke core::mem::size_of
  %0 = invoke i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E()
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = icmp eq i64 %0, 0
  br i1 %7, label %bb4, label %bb5

bb3:                                              ; preds = %cleanup
  br label %bb1

bb4:                                              ; preds = %bb2
  store i64 -1, i64* %cap, align 8
  br label %bb6

bb5:                                              ; preds = %bb2
  store i64 0, i64* %cap, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
; invoke <core::ptr::Unique<T>>::empty
  %8 = invoke nonnull i8* @"_ZN35_$LT$core..ptr..Unique$LT$T$GT$$GT$5empty17hba5405969704fe67E"()
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
  %9 = load i64, i64* %cap, align 8
  %10 = bitcast { i8*, i64 }* %_0 to i8**
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = bitcast { i8*, i64 }* %_0 to %"alloc::heap::Heap"*
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !nonnull !4
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_0, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = insertvalue { i8*, i64 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i64 } %17, i64 %16, 1
  ret { i8*, i64 } %18

cleanup:                                          ; preds = %bb6, %start
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb3
}

; <alloc::raw_vec::RawVec<T, A>>::reserve
; Function Attrs: uwtable
define void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$7reserve17h42e2a3c690c9f31dE"({ i8*, i64 }* dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap) unnamed_addr #0 {
start:
  %_15 = alloca %"core::heap::AllocErr", align 8
  %e = alloca %"core::heap::AllocErr", align 8
  %_4 = alloca %"core::result::Result<(), core::heap::CollectionAllocErr>", align 8
; call <alloc::raw_vec::RawVec<T, A>>::try_reserve
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11try_reserve17hca462b00eab0eeb1E"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24) %_4, { i8*, i64 }* dereferenceable(16) %self, i64 %used_cap, i64 %needed_extra_cap)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_4 to i64*
  %1 = load i64, i64* %0, align 8, !range !9
  %2 = icmp eq i64 %1, 3
  %3 = select i1 %2, i64 0, i64 1
  %4 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_4 to i64*
  %5 = load i64, i64* %4, align 8, !range !9
  %6 = icmp eq i64 %5, 3
  %7 = select i1 %6, i64 0, i64 1
  switch i64 %7, label %bb6 [
    i64 0, label %bb2
    i64 1, label %bb5
  ]

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb5
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hfa30b041999ce81dE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40) bitcast (<{ i8*, [8 x i8], i8*, [16 x i8] }>* @byte_str.5 to { [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }*))
  unreachable

bb4:                                              ; preds = %bb5
  %8 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_4 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"*
  %9 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"* %8 to %"core::heap::CollectionAllocErr"*
  %10 = bitcast %"core::heap::CollectionAllocErr"* %9 to %"core::heap::CollectionAllocErr::AllocErr"*
  %11 = bitcast %"core::heap::CollectionAllocErr::AllocErr"* %10 to %"core::heap::AllocErr"*
  %12 = bitcast %"core::heap::AllocErr"* %11 to i8*
  %13 = bitcast %"core::heap::AllocErr"* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %12, i64 24, i32 8, i1 false)
  %14 = bitcast { i8*, i64 }* %self to %"alloc::heap::Heap"*
  %15 = bitcast %"core::heap::AllocErr"* %e to i8*
  %16 = bitcast %"core::heap::AllocErr"* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %15, i64 24, i32 8, i1 false)
; call <alloc::heap::Heap as core::heap::Alloc>::oom
  call void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$3oom17h062a042a9a965a41E"(%"alloc::heap::Heap"* nonnull %14, %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %_15)
  unreachable

bb5:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_4 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"*
  %18 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"* %17 to %"core::heap::CollectionAllocErr"*
  %19 = bitcast %"core::heap::CollectionAllocErr"* %18 to i64*
  %20 = load i64, i64* %19, align 8, !range !10
  %21 = icmp eq i64 %20, 2
  %22 = select i1 %21, i64 0, i64 1
  switch i64 %22, label %bb6 [
    i64 0, label %bb3
    i64 1, label %bb4
  ]

bb6:                                              ; preds = %bb5, %bb1
  unreachable
}

; core::cmp::Ord::max
; Function Attrs: uwtable
define i64 @_ZN4core3cmp3Ord3max17hc834e4c0704c816dE(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_0 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 0, i8* %_8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
; invoke core::cmp::impls::<impl core::cmp::PartialOrd for usize>::ge
  %2 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17ha9e0d1dd4d7f8845E"(i64* noalias readonly dereferenceable(8) %other, i64* noalias readonly dereferenceable(8) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb10, %bb3
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  br i1 %2, label %bb5, label %bb6

bb3:                                              ; preds = %bb4
  %9 = load i8, i8* %_8, align 1, !range !0
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb10, label %bb1

bb4:                                              ; preds = %cleanup
  store i8 0, i8* %_9, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store i8 0, i8* %_9, align 1
  %11 = load i64, i64* %other, align 8
  store i64 %11, i64* %_0, align 8
  br label %bb7

bb6:                                              ; preds = %bb2
  store i8 0, i8* %_8, align 1
  %12 = load i64, i64* %self, align 8
  store i64 %12, i64* %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, i8* %_9, align 1, !range !0
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb11, label %bb8

bb8:                                              ; preds = %bb11, %bb7
  %15 = load i8, i8* %_8, align 1, !range !0
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb9:                                              ; preds = %bb12, %bb8
  %17 = load i64, i64* %_0, align 8
  ret i64 %17

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_8, align 1
  br label %bb1

bb11:                                             ; preds = %bb7
  store i8 0, i8* %_9, align 1
  br label %bb8

bb12:                                             ; preds = %bb8
  store i8 0, i8* %_8, align 1
  br label %bb9

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4
}

; core::cmp::Ord::min
; Function Attrs: uwtable
define i64 @_ZN4core3cmp3Ord3min17h30d1bec4ff2ab267E(i64, i64) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_8 = alloca i8, align 1
  %_0 = alloca i64, align 8
  %other = alloca i64, align 8
  %self = alloca i64, align 8
  store i64 %0, i64* %self, align 8
  store i64 %1, i64* %other, align 8
  store i8 0, i8* %_8, align 1
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_8, align 1
  store i8 1, i8* %_9, align 1
; invoke core::cmp::impls::<impl core::cmp::PartialOrd for usize>::le
  %2 = invoke zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h0b01bc067da8cfc4E"(i64* noalias readonly dereferenceable(8) %self, i64* noalias readonly dereferenceable(8) %other)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb10, %bb3
  %3 = bitcast { i8*, i32 }* %personalityslot to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = insertvalue { i8*, i32 } undef, i8* %4, 0
  %8 = insertvalue { i8*, i32 } %7, i32 %6, 1
  resume { i8*, i32 } %8

bb2:                                              ; preds = %start
  br i1 %2, label %bb5, label %bb6

bb3:                                              ; preds = %bb4
  %9 = load i8, i8* %_8, align 1, !range !0
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb10, label %bb1

bb4:                                              ; preds = %cleanup
  store i8 0, i8* %_9, align 1
  br label %bb3

bb5:                                              ; preds = %bb2
  store i8 0, i8* %_8, align 1
  %11 = load i64, i64* %self, align 8
  store i64 %11, i64* %_0, align 8
  br label %bb7

bb6:                                              ; preds = %bb2
  store i8 0, i8* %_9, align 1
  %12 = load i64, i64* %other, align 8
  store i64 %12, i64* %_0, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  %13 = load i8, i8* %_9, align 1, !range !0
  %14 = trunc i8 %13 to i1
  br i1 %14, label %bb11, label %bb8

bb8:                                              ; preds = %bb11, %bb7
  %15 = load i8, i8* %_8, align 1, !range !0
  %16 = trunc i8 %15 to i1
  br i1 %16, label %bb12, label %bb9

bb9:                                              ; preds = %bb12, %bb8
  %17 = load i64, i64* %_0, align 8
  ret i64 %17

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_8, align 1
  br label %bb1

bb11:                                             ; preds = %bb7
  store i8 0, i8* %_9, align 1
  br label %bb8

bb12:                                             ; preds = %bb8
  store i8 0, i8* %_8, align 1
  br label %bb9

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4
}

; core::cmp::max
; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3max17h483ae55f24462c06E(i64 %v1, i64 %v2) unnamed_addr #1 {
start:
; call core::cmp::Ord::max
  %0 = call i64 @_ZN4core3cmp3Ord3max17hc834e4c0704c816dE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::min
; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3cmp3min17h43a35b9a9013edeeE(i64 %v1, i64 %v2) unnamed_addr #1 {
start:
; call core::cmp::Ord::min
  %0 = call i64 @_ZN4core3cmp3Ord3min17h30d1bec4ff2ab267E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::impls::<impl core::cmp::PartialOrd for usize>::ge
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17ha9e0d1dd4d7f8845E"(i64* noalias readonly dereferenceable(8) %self, i64* noalias readonly dereferenceable(8) %other) unnamed_addr #1 {
start:
  %0 = load i64, i64* %self, align 8
  %1 = load i64, i64* %other, align 8
  %2 = icmp uge i64 %0, %1
  ret i1 %2
}

; core::cmp::impls::<impl core::cmp::PartialOrd for usize>::le
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h0b01bc067da8cfc4E"(i64* noalias readonly dereferenceable(8) %self, i64* noalias readonly dereferenceable(8) %other) unnamed_addr #1 {
start:
  %0 = load i64, i64* %self, align 8
  %1 = load i64, i64* %other, align 8
  %2 = icmp ule i64 %0, %1
  ret i1 %2
}

; core::mem::uninitialized
; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem13uninitialized17h0adcc50e776be2a1E(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24)) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint uwtable
define void @_ZN4core3mem6forget17h582589c4da1e9203E(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %t) unnamed_addr #1 {
start:
  %_3 = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %_2 = alloca %"core::mem::ManuallyDrop<core::mem::ManuallyDrop<core::heap::AllocErr>>", align 8
  %0 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %t to i8*
  %1 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %0, i64 24, i32 8, i1 false)
; call <core::mem::ManuallyDrop<T>>::new
  call void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$3new17h278f4b4f6fbfacbcE"(%"core::mem::ManuallyDrop<core::mem::ManuallyDrop<core::heap::AllocErr>>"* noalias nocapture sret dereferenceable(24) %_2, %"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::size_of
; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E() unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 1, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::size_of
; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem7size_of17h90fe27cd36a90561E() unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 8, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::mem::align_of
; Function Attrs: inlinehint uwtable
define i64 @_ZN4core3mem8align_of17h368a78612243a4a4E() unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  store i64 1, i64* %tmp_ret, align 8
  %0 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::num::<impl usize>::checked_add
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hd8b78b1a3dda7ec6E"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16), i64 %self, i64 %rhs) unnamed_addr #1 {
start:
; call core::num::<impl usize>::overflowing_add
  %1 = call { i64, i1 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h2b0ec07afadd4ffdE"(i64 %self, i64 %rhs)
  %2 = extractvalue { i64, i1 } %1, 0
  %3 = extractvalue { i64, i1 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<usize>"* %0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %5 = bitcast %"core::option::Option<usize>"* %0 to %"core::option::Option<usize>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %5, i32 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = bitcast %"core::option::Option<usize>"* %0 to i64*
  store i64 1, i64* %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint uwtable
define internal void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h001efb0d900d92cbE"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16), i64 %self, i64 %rhs) unnamed_addr #1 {
start:
; call core::num::<impl usize>::overflowing_mul
  %1 = call { i64, i1 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17hadec2601fd930f49E"(i64 %self, i64 %rhs)
  %2 = extractvalue { i64, i1 } %1, 0
  %3 = extractvalue { i64, i1 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %3, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<usize>"* %0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %5 = bitcast %"core::option::Option<usize>"* %0 to %"core::option::Option<usize>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %5, i32 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = bitcast %"core::option::Option<usize>"* %0 to i64*
  store i64 1, i64* %7, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; core::num::<impl usize>::wrapping_add
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17h7421e30a270cecd7E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = add i64 %self, %rhs
  store i64 %0, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::num::<impl usize>::wrapping_sub
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %tmp_ret = alloca i64, align 8
  %0 = sub i64 %self, %rhs
  store i64 %0, i64* %tmp_ret, align 8
  %1 = load i64, i64* %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::num::<impl usize>::saturating_add
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$14saturating_add17hb5863fbb868e95b4E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %_3 = alloca %"core::option::Option<usize>", align 8
  %_0 = alloca i64, align 8
; call core::num::<impl usize>::checked_add
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hd8b78b1a3dda7ec6E"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16) %_3, i64 %self, i64 %rhs)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"core::option::Option<usize>"* %_3 to i64*
  %1 = load i64, i64* %0, align 8, !range !5
  %2 = bitcast %"core::option::Option<usize>"* %_3 to i64*
  %3 = load i64, i64* %2, align 8, !range !5
  switch i64 %3, label %bb3 [
    i64 0, label %bb2
    i64 1, label %bb4
  ]

bb2:                                              ; preds = %bb1
; call core::num::<impl usize>::max_value
  %4 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$9max_value17he20e3add4681f9d2E"()
  store i64 %4, i64* %_0, align 8
  br label %bb5

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %5 = bitcast %"core::option::Option<usize>"* %_3 to %"core::option::Option<usize>::Some"*
  %6 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %_0, align 8
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  %8 = load i64, i64* %_0, align 8
  ret i64 %8
}

; core::num::<impl usize>::is_power_of_two
; Function Attrs: inlinehint uwtable
define internal zeroext i1 @"_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17hef4d3825d5217313E"(i64 %self) unnamed_addr #1 {
start:
  %_0 = alloca i8, align 1
; call core::num::<impl usize>::wrapping_sub
  %0 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %self, i64 1)
  br label %bb5

bb1:                                              ; preds = %bb3
  store i8 1, i8* %_0, align 1
  br label %bb4

bb2:                                              ; preds = %bb3, %bb5
  store i8 0, i8* %_0, align 1
  br label %bb4

bb3:                                              ; preds = %bb5
  %1 = icmp eq i64 %self, 0
  %2 = xor i1 %1, true
  br i1 %2, label %bb1, label %bb2

bb4:                                              ; preds = %bb2, %bb1
  %3 = load i8, i8* %_0, align 1, !range !0
  %4 = trunc i8 %3 to i1
  ret i1 %4

bb5:                                              ; preds = %start
  %5 = and i64 %0, %self
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %bb3, label %bb2
}

; core::num::<impl usize>::overflowing_add
; Function Attrs: inlinehint uwtable
define internal { i64, i1 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17h2b0ec07afadd4ffdE"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %tmp_ret = alloca { i64, i1 }, align 8
  %_0 = alloca { i64, i1 }, align 8
  %0 = icmp ule i64 %self, -1
  call void @llvm.assume(i1 %0)
  %1 = icmp ule i64 %rhs, -1
  call void @llvm.assume(i1 %1)
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = extractvalue { i64, i1 } %2, 1
  %5 = zext i1 %4 to i8
  %6 = bitcast { i64, i1 }* %tmp_ret to i64*
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 1
  %8 = bitcast i1* %7 to i8*
  store i8 %5, i8* %8, align 1
  %9 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 1
  %12 = bitcast i1* %11 to i8*
  %13 = load i8, i8* %12, align 8, !range !0
  %14 = trunc i8 %13 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %15 = icmp ule i64 %10, -1
  call void @llvm.assume(i1 %15)
  %16 = bitcast { i64, i1 }* %_0 to i64*
  store i64 %10, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 1
  %18 = bitcast i1* %17 to i8*
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 1
  %23 = bitcast i1* %22 to i8*
  %24 = load i8, i8* %23, align 8, !range !0
  %25 = trunc i8 %24 to i1
  %26 = insertvalue { i64, i1 } undef, i64 %21, 0
  %27 = insertvalue { i64, i1 } %26, i1 %25, 1
  ret { i64, i1 } %27
}

; core::num::<impl usize>::overflowing_mul
; Function Attrs: inlinehint uwtable
define internal { i64, i1 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17hadec2601fd930f49E"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %tmp_ret = alloca { i64, i1 }, align 8
  %_0 = alloca { i64, i1 }, align 8
  %0 = icmp ule i64 %self, -1
  call void @llvm.assume(i1 %0)
  %1 = icmp ule i64 %rhs, -1
  call void @llvm.assume(i1 %1)
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = extractvalue { i64, i1 } %2, 1
  %5 = zext i1 %4 to i8
  %6 = bitcast { i64, i1 }* %tmp_ret to i64*
  store i64 %3, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 1
  %8 = bitcast i1* %7 to i8*
  store i8 %5, i8* %8, align 1
  %9 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %tmp_ret, i32 0, i32 1
  %12 = bitcast i1* %11 to i8*
  %13 = load i8, i8* %12, align 8, !range !0
  %14 = trunc i8 %13 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %15 = icmp ule i64 %10, -1
  call void @llvm.assume(i1 %15)
  %16 = bitcast { i64, i1 }* %_0 to i64*
  store i64 %10, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 1
  %18 = bitcast i1* %17 to i8*
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds { i64, i1 }, { i64, i1 }* %_0, i32 0, i32 1
  %23 = bitcast i1* %22 to i8*
  %24 = load i8, i8* %23, align 8, !range !0
  %25 = trunc i8 %24 to i1
  %26 = insertvalue { i64, i1 } undef, i64 %21, 0
  %27 = insertvalue { i64, i1 } %26, i1 %25, 1
  ret { i64, i1 } %27
}

; core::num::<impl usize>::max_value
; Function Attrs: inlinehint uwtable
define internal i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$9max_value17he20e3add4681f9d2E"() unnamed_addr #1 {
start:
  ret i64 -1
}

; core::ptr::drop_in_place
; Function Attrs: uwtable
define internal void @_ZN4core3ptr13drop_in_place17h3b3c9f5aca78d46cE({ i64*, i64 }* %arg0) unnamed_addr #0 {
start:
; call <alloc::vec::SetLenOnDrop<'a> as core::ops::drop::Drop>::drop
  call void @"_ZN80_$LT$alloc..vec..SetLenOnDrop$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha90b65320ff7d7cdE"({ i64*, i64 }* dereferenceable(16) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place
; Function Attrs: uwtable
define internal void @_ZN4core3ptr13drop_in_place17h9a42813777de08f8E(%"alloc::vec::Vec<u8>"* %arg0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
  invoke void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c3cffe2c7e103e5E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %arg0)
          to label %bb4 unwind label %cleanup

bb1:                                              ; preds = %bb3
  %0 = bitcast { i8*, i32 }* %personalityslot to i8**
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i32 } %4, i32 %3, 1
  resume { i8*, i32 } %5

bb2:                                              ; preds = %bb4
  ret void

bb3:                                              ; preds = %cleanup
  %6 = bitcast %"alloc::vec::Vec<u8>"* %arg0 to { i8*, i64 }*
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17hd5d310486ee7676cE({ i8*, i64 }* %6) #10
  br label %bb1

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %arg0 to { i8*, i64 }*
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17hd5d310486ee7676cE({ i8*, i64 }* %7)
  br label %bb2

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; core::ptr::drop_in_place
; Function Attrs: uwtable
define internal void @_ZN4core3ptr13drop_in_place17hd5d310486ee7676cE({ i8*, i64 }* %arg0) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T, A> as core::ops::drop::Drop>::drop
  call void @"_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h74ae0116c17e3253E"({ i8*, i64 }* dereferenceable(16) %arg0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::<impl *mut T>::offset
; Function Attrs: inlinehint uwtable
define i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h33cda128c7f87bafE"(i8* %self, i64 %count) unnamed_addr #1 {
start:
  %tmp_ret = alloca i8*, align 8
  %0 = getelementptr inbounds i8, i8* %self, i64 %count
  store i8* %0, i8** %tmp_ret, align 8
  %1 = load i8*, i8** %tmp_ret, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; core::ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint uwtable
define zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he11490e9a9dcef97E"(i8* %self) unnamed_addr #1 {
start:
; call core::ptr::null_mut
  %0 = call i8* @_ZN4core3ptr8null_mut17hf7061f45cb8edf54E()
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i8* %self, %0
  ret i1 %1
}

; core::ptr::write
; Function Attrs: inlinehint uwtable
define void @_ZN4core3ptr5write17h018aa1d81520d036E(i8* %dst, i8 %src) unnamed_addr #1 {
start:
  store i8 %src, i8* %dst, align 1
  ret void
}

; core::ptr::null_mut
; Function Attrs: inlinehint uwtable
define i8* @_ZN4core3ptr8null_mut17hf7061f45cb8edf54E() unnamed_addr #1 {
start:
  call void @llvm.assume(i1 true)
  ret i8* null
}

; core::heap::size_align
; Function Attrs: uwtable
define { i64, i64 } @_ZN4core4heap10size_align17h1f21993c10b19723E() unnamed_addr #0 {
start:
  %_0 = alloca { i64, i64 }, align 8
; call core::mem::size_of
  %0 = call i64 @_ZN4core3mem7size_of17h0faa6b3b1f820515E()
  br label %bb1

bb1:                                              ; preds = %start
; call core::mem::align_of
  %1 = call i64 @_ZN4core3mem8align_of17h368a78612243a4a4E()
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = bitcast { i64, i64 }* %_0 to i64*
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i64, i64 } undef, i64 %5, 0
  %9 = insertvalue { i64, i64 } %8, i64 %7, 1
  ret { i64, i64 } %9
}

; core::heap::Layout::from_size_align
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4heap6Layout15from_size_align17h6fd52b14a3a84002E(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24), i64 %size, i64 %align) unnamed_addr #1 {
start:
; call core::num::<impl usize>::is_power_of_two
  %1 = call zeroext i1 @"_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17hef4d3825d5217313E"(i64 %align)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = xor i1 %1, true
  br i1 %2, label %bb2, label %bb3

bb2:                                              ; preds = %bb1
  %3 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 0, i64* %3, align 8
  br label %bb4

bb3:                                              ; preds = %bb1
  %4 = sub i64 %align, 1
  %5 = sub i64 -1, %4
  %6 = icmp ugt i64 %size, %5
  br i1 %6, label %bb5, label %bb6

bb4:                                              ; preds = %bb7, %bb5, %bb2
  ret void

bb5:                                              ; preds = %bb3
  %7 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 0, i64* %7, align 8
  br label %bb4

bb6:                                              ; preds = %bb3
; call core::heap::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core4heap6Layout25from_size_align_unchecked17h9496403f299c253eE(i64 %size, i64 %align)
  %9 = extractvalue { i64, i64 } %8, 0
  %10 = extractvalue { i64, i64 } %8, 1
  br label %bb7

bb7:                                              ; preds = %bb6
  %11 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to %"core::option::Option<core::heap::Layout>::Some"*
  %12 = getelementptr inbounds %"core::option::Option<core::heap::Layout>::Some", %"core::option::Option<core::heap::Layout>::Some"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %9, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %10, i64* %14, align 8
  %15 = bitcast %"core::option::Option<core::heap::Layout>"* %0 to i64*
  store i64 1, i64* %15, align 8
  br label %bb4
}

; core::heap::Layout::padding_needed_for
; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4heap6Layout18padding_needed_for17h674755887d25997eE({ i64, i64 }* noalias readonly dereferenceable(16) %self, i64 %align) unnamed_addr #1 {
start:
; call core::heap::Layout::size
  %0 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::wrapping_add
  %1 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17h7421e30a270cecd7E"(i64 %0, i64 %align)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::num::<impl usize>::wrapping_sub
  %2 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %1, i64 1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::num::<impl usize>::wrapping_sub
  %3 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %align, i64 1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = xor i64 %3, -1
  %5 = and i64 %2, %4
; call core::num::<impl usize>::wrapping_sub
  %6 = call i64 @"_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17he337b8bb7d5c0aeeE"(i64 %5, i64 %0)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret i64 %6
}

; core::heap::Layout::from_size_align_unchecked
; Function Attrs: inlinehint uwtable
define internal { i64, i64 } @_ZN4core4heap6Layout25from_size_align_unchecked17h9496403f299c253eE(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %_0 = alloca { i64, i64 }, align 8
  %0 = bitcast { i64, i64 }* %_0 to i64*
  store i64 %size, i64* %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  store i64 %align, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; core::heap::Layout::new
; Function Attrs: uwtable
define { i64, i64 } @_ZN4core4heap6Layout3new17hcf9398504920253bE() unnamed_addr #0 {
start:
  %_4 = alloca %"core::option::Option<core::heap::Layout>", align 8
; call core::heap::size_align
  %0 = call { i64, i64 } @_ZN4core4heap10size_align17h1f21993c10b19723E()
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::heap::Layout::from_size_align
  call void @_ZN4core4heap6Layout15from_size_align17h6fd52b14a3a84002E(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %_4, i64 %1, i64 %2)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::option::Option<T>>::unwrap
  %3 = call { i64, i64 } @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hf4abf504a703e03cE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture dereferenceable(24) %_4)
  %4 = extractvalue { i64, i64 } %3, 0
  %5 = extractvalue { i64, i64 } %3, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = insertvalue { i64, i64 } undef, i64 %4, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; core::heap::Layout::size
; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::heap::Layout::align
; Function Attrs: inlinehint uwtable
define internal i64 @_ZN4core4heap6Layout5align17h7e89be31ccad2626E({ i64, i64 }* noalias readonly dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::heap::Layout::array
; Function Attrs: uwtable
define void @_ZN4core4heap6Layout5array17he8a13402ecace7b9E(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24), i64 %n) unnamed_addr #0 {
start:
  %_4 = alloca { i64, i64 }, align 8
  %_2 = alloca %"core::option::Option<(core::heap::Layout, usize)>", align 8
; call core::heap::Layout::new
  %1 = call { i64, i64 } @_ZN4core4heap6Layout3new17hcf9398504920253bE()
  store { i64, i64 } %1, { i64, i64 }* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::heap::Layout::repeat
  call void @_ZN4core4heap6Layout6repeat17h08625d499238857bE(%"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture sret dereferenceable(32) %_2, { i64, i64 }* noalias readonly dereferenceable(16) %_4, i64 %n)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::option::Option<T>>::map
  call void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$3map17hdf45712f3c9c2e7fE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %0, %"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture dereferenceable(32) %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; core::heap::Layout::array::{{closure}}
; Function Attrs: uwtable
define { i64, i64 } @"_ZN4core4heap6Layout5array28_$u7b$$u7b$closure$u7d$$u7d$17hf05d6ce84d89f619E"({ [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* noalias nocapture dereferenceable(24) %arg1) unnamed_addr #0 {
start:
  %0 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1 to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %arg1, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %2, 0
  %8 = insertvalue { i64, i64 } %7, i64 %4, 1
  ret { i64, i64 } %8
}

; core::heap::Layout::repeat
; Function Attrs: inlinehint uwtable
define internal void @_ZN4core4heap6Layout6repeat17h08625d499238857bE(%"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture sret dereferenceable(32), { i64, i64 }* noalias readonly dereferenceable(16) %self, i64 %n) unnamed_addr #1 {
start:
  %_31 = alloca %"core::option::Option<core::heap::Layout>", align 8
  %_29 = alloca { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, align 8
  %_19 = alloca %"core::option::Option<usize>", align 8
  %_18 = alloca %"core::result::Result<usize, core::option::NoneError>", align 8
  %_5 = alloca %"core::option::Option<usize>", align 8
  %_4 = alloca %"core::result::Result<usize, core::option::NoneError>", align 8
  %1 = bitcast { i64, i64 }* %self to i64*
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
; call core::heap::Layout::padding_needed_for
  %5 = call i64 @_ZN4core4heap6Layout18padding_needed_for17h674755887d25997eE({ i64, i64 }* noalias readonly dereferenceable(16) %self, i64 %4)
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::checked_add
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17hd8b78b1a3dda7ec6E"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16) %_5, i64 %2, i64 %5)
  br label %bb2

bb2:                                              ; preds = %bb1
; call <core::option::Option<T> as core::ops::try::Try>::into_result
  call void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hd448f80b86bfc92dE"(%"core::result::Result<usize, core::option::NoneError>"* noalias nocapture sret dereferenceable(16) %_4, %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  %6 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_4 to i64*
  %7 = load i64, i64* %6, align 8, !range !5
  %8 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_4 to i64*
  %9 = load i64, i64* %8, align 8, !range !5
  switch i64 %9, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb4:                                              ; preds = %bb11, %bb3
  unreachable

bb5:                                              ; preds = %bb3
  %10 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_4 to %"core::result::Result<usize, core::option::NoneError>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<usize, core::option::NoneError>::Ok", %"core::result::Result<usize, core::option::NoneError>::Ok"* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
; call core::num::<impl usize>::checked_mul
  call void @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h001efb0d900d92cbE"(%"core::option::Option<usize>"* noalias nocapture sret dereferenceable(16) %_19, i64 %12, i64 %n)
  br label %bb10

bb6:                                              ; preds = %bb3
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h317cb48edd7d94a7E"()
  br label %bb7

bb7:                                              ; preds = %bb6
; call <core::option::Option<T> as core::ops::try::Try>::from_error
  call void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h216025f022d5192eE"(%"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture sret dereferenceable(32) %0)
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb17, %bb15, %bb8
  ret void

bb10:                                             ; preds = %bb5
; call <core::option::Option<T> as core::ops::try::Try>::into_result
  call void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hd448f80b86bfc92dE"(%"core::result::Result<usize, core::option::NoneError>"* noalias nocapture sret dereferenceable(16) %_18, %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %_19)
  br label %bb11

bb11:                                             ; preds = %bb10
  %13 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_18 to i64*
  %14 = load i64, i64* %13, align 8, !range !5
  %15 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_18 to i64*
  %16 = load i64, i64* %15, align 8, !range !5
  switch i64 %16, label %bb4 [
    i64 0, label %bb12
    i64 1, label %bb13
  ]

bb12:                                             ; preds = %bb11
  %17 = bitcast %"core::result::Result<usize, core::option::NoneError>"* %_18 to %"core::result::Result<usize, core::option::NoneError>::Ok"*
  %18 = getelementptr inbounds %"core::result::Result<usize, core::option::NoneError>::Ok", %"core::result::Result<usize, core::option::NoneError>::Ok"* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
; call core::heap::Layout::from_size_align
  call void @_ZN4core4heap6Layout15from_size_align17h6fd52b14a3a84002E(%"core::option::Option<core::heap::Layout>"* noalias nocapture sret dereferenceable(24) %_31, i64 %19, i64 %21)
  br label %bb16

bb13:                                             ; preds = %bb11
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h317cb48edd7d94a7E"()
  br label %bb14

bb14:                                             ; preds = %bb13
; call <core::option::Option<T> as core::ops::try::Try>::from_error
  call void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h216025f022d5192eE"(%"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture sret dereferenceable(32) %0)
  br label %bb15

bb15:                                             ; preds = %bb14
  br label %bb9

bb16:                                             ; preds = %bb12
; call <core::option::Option<T>>::unwrap
  %22 = call { i64, i64 } @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17hf4abf504a703e03cE"(%"core::option::Option<core::heap::Layout>"* noalias nocapture dereferenceable(24) %_31)
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  br label %bb17

bb17:                                             ; preds = %bb16
  %25 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_29 to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  %28 = getelementptr inbounds { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }, { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_29, i32 0, i32 3
  store i64 %12, i64* %28, align 8
  %29 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %0 to %"core::option::Option<(core::heap::Layout, usize)>::Some"*
  %30 = getelementptr inbounds %"core::option::Option<(core::heap::Layout, usize)>::Some", %"core::option::Option<(core::heap::Layout, usize)>::Some"* %29, i32 0, i32 1
  %31 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %_29 to i8*
  %32 = bitcast { [0 x i64], { i64, i64 }, [0 x i64], i64, [0 x i64] }* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %31, i64 24, i32 8, i1 false)
  %33 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %0 to i64*
  store i64 1, i64* %33, align 8
  br label %bb9
}

; core::iter::sources::repeat
; Function Attrs: inlinehint uwtable
define i8 @_ZN4core4iter7sources6repeat17ha0bee4617b5f4c0dE(i8 %elt) unnamed_addr #1 {
start:
  %_0 = alloca i8, align 1
  store i8 %elt, i8* %_0, align 1
  %0 = load i8, i8* %_0, align 1
  ret i8 %0
}

; core::iter::iterator::Iterator::take
; Function Attrs: inlinehint uwtable
define { i64, i8 } @_ZN4core4iter8iterator8Iterator4take17h9dfc2c0d5b5de094E(i8 %self, i64 %n) unnamed_addr #1 {
start:
  %_0 = alloca { i64, i8 }, align 8
  %0 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  store i8 %self, i8* %0, align 1
  %1 = bitcast { i64, i8 }* %_0 to i64*
  store i64 %n, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_0, i32 0, i32 1
  %5 = load i8, i8* %4, align 8
  %6 = insertvalue { i64, i8 } undef, i64 %3, 0
  %7 = insertvalue { i64, i8 } %6, i8 %5, 1
  ret { i64, i8 } %7
}

; core::iter::iterator::Iterator::collect
; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter8iterator8Iterator7collect17h27cf4149e684e2efE(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24), i64 %self.0, i8 %self.1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T> as core::iter::traits::FromIterator<T>>::from_iter
  call void @"_ZN86_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..FromIterator$LT$T$GT$$GT$9from_iter17h34240ce25e20b068E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %0, i64 %self.0, i8 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::clone::impls::<impl core::clone::Clone for u8>::clone
; Function Attrs: inlinehint uwtable
define internal i8 @"_ZN4core5clone5impls51_$LT$impl$u20$core..clone..Clone$u20$for$u20$u8$GT$5clone17hceeebef1cd750d36E"(i8* noalias readonly dereferenceable(1) %self) unnamed_addr #1 {
start:
  %0 = load i8, i8* %self, align 1
  ret i8 %0
}

; core::slice::from_raw_parts_mut
; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17he47b34bc916e622cE(i8* %p, i64 %len) unnamed_addr #1 {
start:
  %transmute_temp = alloca { [0 x i8]*, i64 }, align 8
  %_4 = alloca { i8*, i64 }, align 8
  %0 = bitcast { i8*, i64 }* %_4 to i8**
  store i8* %p, i8** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %len, i64* %1, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = bitcast { [0 x i8]*, i64 }* %transmute_temp to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  store i8* %3, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %transmute_temp, i32 0, i32 0
  %10 = load [0 x i8]*, [0 x i8]** %9, align 8, !nonnull !4
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %transmute_temp, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %10, 0
  %14 = insertvalue { [0 x i8]*, i64 } %13, i64 %12, 1
  ret { [0 x i8]*, i64 } %14
}

; core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h3f072734ed229b25E"([0 x i8]* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
  %0 = call { [0 x i8]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6727eb3d9547f0a3E"([0 x i8]* nonnull %self.0, i64 %self.1)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; <T as core::convert::From<T>>::from
; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h317cb48edd7d94a7E"() unnamed_addr #0 {
start:
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17ha0c769c8ab5035d6E"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24), %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %t) unnamed_addr #0 {
start:
  %_2 = alloca %"core::heap::CollectionAllocErr", align 8
  %1 = bitcast %"core::heap::CollectionAllocErr"* %t to i8*
  %2 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  %4 = bitcast %"core::heap::CollectionAllocErr"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 24, i32 8, i1 false)
  ret void
}

; <[T] as core::slice::SliceExt>::as_mut_ptr
; Function Attrs: inlinehint uwtable
define i8* @"_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$10as_mut_ptr17hd6842e9ff17a7386E"([0 x i8]* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; <[T] as core::slice::SliceExt>::get_unchecked_mut
; Function Attrs: inlinehint uwtable
define align 1 dereferenceable(1) i8* @"_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$17get_unchecked_mut17h812e3ca6f8d734feE"([0 x i8]* nonnull %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <usize as core::slice::SliceIndex<[T]>>::get_unchecked_mut
  %0 = call align 1 dereferenceable(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17he6cca2089f9ddc41E"(i64 %index, [0 x i8]* nonnull %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <I as core::iter::traits::IntoIterator>::into_iter
; Function Attrs: uwtable
define { i64, i8 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17had8b8262129bc2a0E"(i64 %self.0, i8 %self.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i8 } undef, i64 %self.0, 0
  %1 = insertvalue { i64, i8 } %0, i8 %self.1, 1
  ret { i64, i8 } %1
}

; <alloc::heap::Heap as core::heap::Alloc>::oom
; Function Attrs: cold inlinehint noreturn uwtable
define internal void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$3oom17h062a042a9a965a41E"(%"alloc::heap::Heap"* nonnull %self, %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %err) unnamed_addr #2 {
start:
  %0 = bitcast %"core::heap::AllocErr"* %err to i8*
  call void @__rust_oom(i8* %0)
  unreachable
}

; <alloc::heap::Heap as core::heap::Alloc>::alloc
; Function Attrs: inlinehint uwtable
define internal void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$5alloc17hcfd1aca7bc22a9c6E"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32), %"alloc::heap::Heap"* nonnull %self, i64, i64) unnamed_addr #1 {
start:
  %_21 = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %_20 = alloca %"core::heap::AllocErr", align 8
  %_4 = alloca %"core::heap::AllocErr", align 8
  %err = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %2, i64* %4, align 8
; call core::mem::uninitialized
  call void @_ZN4core3mem13uninitialized17h0adcc50e776be2a1E(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24) %_4)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::mem::ManuallyDrop<T>>::new
  call void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$3new17hf1c8d4e0b9283e99E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture sret dereferenceable(24) %err, %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::heap::Layout::size
  %5 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::heap::Layout::align
  %6 = call i64 @_ZN4core4heap6Layout5align17h7e89be31ccad2626E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb4

bb4:                                              ; preds = %bb3
; call <core::mem::ManuallyDrop<T> as core::ops::deref::DerefMut>::deref_mut
  %7 = call align 8 dereferenceable(24) %"core::heap::AllocErr"* @"_ZN79_$LT$core..mem..ManuallyDrop$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hdbfe96ad4b9762a2E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* dereferenceable(24) %err)
  br label %bb5

bb5:                                              ; preds = %bb4
  %8 = bitcast %"core::heap::AllocErr"* %7 to i8*
  %9 = call i8* @__rust_alloc(i64 %5, i64 %6, i8* %8)
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::ptr::<impl *mut T>::is_null
  %10 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he11490e9a9dcef97E"(i8* %9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br i1 %10, label %bb8, label %bb9

bb8:                                              ; preds = %bb7
  %11 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %err to i8*
  %12 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %11, i64 24, i32 8, i1 false)
; call <core::mem::ManuallyDrop<T>>::into_inner
  call void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$10into_inner17he83d70021740e619E"(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24) %_20, %"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %_21)
  br label %bb10

bb9:                                              ; preds = %bb7
  %13 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"*
  %14 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok", %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"* %13, i32 0, i32 1
  store i8* %9, i8** %14, align 8
  %15 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to i64*
  store i64 0, i64* %15, align 8
  br label %bb11

bb10:                                             ; preds = %bb8
  %16 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"*
  %17 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Err", %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"* %16, i32 0, i32 1
  %18 = bitcast %"core::heap::AllocErr"* %_20 to i8*
  %19 = bitcast %"core::heap::AllocErr"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %18, i64 24, i32 8, i1 false)
  %20 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to i64*
  store i64 1, i64* %20, align 8
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  ret void
}

; <alloc::heap::Heap as core::heap::Alloc>::dealloc
; Function Attrs: inlinehint uwtable
define internal void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$7dealloc17h3d99e8177bcc23d1E"(%"alloc::heap::Heap"* nonnull %self, i8* %ptr, i64, i64) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::heap::Layout::size
  %4 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::heap::Layout::align
  %5 = call i64 @_ZN4core4heap6Layout5align17h7e89be31ccad2626E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %4, i64 %5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::heap::Heap as core::heap::Alloc>::realloc
; Function Attrs: inlinehint uwtable
define internal void @"_ZN55_$LT$alloc..heap..Heap$u20$as$u20$core..heap..Alloc$GT$7realloc17hb2220f4ae5578c6eE"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32), %"alloc::heap::Heap"* nonnull %self, i8* %ptr, i64, i64, i64, i64) unnamed_addr #1 {
start:
  %_30 = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %_28 = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %_27 = alloca %"core::heap::AllocErr", align 8
  %_6 = alloca %"core::heap::AllocErr", align 8
  %err = alloca %"core::mem::ManuallyDrop<core::heap::AllocErr>", align 8
  %new_layout = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %2, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %3, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %4, i64* %8, align 8
; call core::mem::uninitialized
  call void @_ZN4core3mem13uninitialized17h0adcc50e776be2a1E(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24) %_6)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::mem::ManuallyDrop<T>>::new
  call void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$3new17hf1c8d4e0b9283e99E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture sret dereferenceable(24) %err, %"core::heap::AllocErr"* noalias nocapture dereferenceable(24) %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::heap::Layout::size
  %9 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::heap::Layout::align
  %10 = call i64 @_ZN4core4heap6Layout5align17h7e89be31ccad2626E({ i64, i64 }* noalias readonly dereferenceable(16) %layout)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::heap::Layout::size
  %11 = call i64 @_ZN4core4heap6Layout4size17h54fc2e23ca417cf6E({ i64, i64 }* noalias readonly dereferenceable(16) %new_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::heap::Layout::align
  %12 = call i64 @_ZN4core4heap6Layout5align17h7e89be31ccad2626E({ i64, i64 }* noalias readonly dereferenceable(16) %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <core::mem::ManuallyDrop<T> as core::ops::deref::DerefMut>::deref_mut
  %13 = call align 8 dereferenceable(24) %"core::heap::AllocErr"* @"_ZN79_$LT$core..mem..ManuallyDrop$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hdbfe96ad4b9762a2E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* dereferenceable(24) %err)
  br label %bb7

bb7:                                              ; preds = %bb6
  %14 = bitcast %"core::heap::AllocErr"* %13 to i8*
  %15 = call i8* @__rust_realloc(i8* %ptr, i64 %9, i64 %10, i64 %11, i64 %12, i8* %14)
  br label %bb8

bb8:                                              ; preds = %bb7
; call core::ptr::<impl *mut T>::is_null
  %16 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he11490e9a9dcef97E"(i8* %15)
  br label %bb9

bb9:                                              ; preds = %bb8
  br i1 %16, label %bb10, label %bb11

bb10:                                             ; preds = %bb9
  %17 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %err to i8*
  %18 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %17, i64 24, i32 8, i1 false)
; call <core::mem::ManuallyDrop<T>>::into_inner
  call void @"_ZN41_$LT$core..mem..ManuallyDrop$LT$T$GT$$GT$10into_inner17he83d70021740e619E"(%"core::heap::AllocErr"* noalias nocapture sret dereferenceable(24) %_27, %"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %_28)
  br label %bb12

bb11:                                             ; preds = %bb9
  %19 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %err to i8*
  %20 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %_30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %19, i64 24, i32 8, i1 false)
; call core::mem::forget
  call void @_ZN4core3mem6forget17h582589c4da1e9203E(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* noalias nocapture dereferenceable(24) %_30)
  br label %bb13

bb12:                                             ; preds = %bb10
  %21 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"*
  %22 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Err", %"core::result::Result<*mut u8, core::heap::AllocErr>::Err"* %21, i32 0, i32 1
  %23 = bitcast %"core::heap::AllocErr"* %_27 to i8*
  %24 = bitcast %"core::heap::AllocErr"* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %23, i64 24, i32 8, i1 false)
  %25 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb14

bb13:                                             ; preds = %bb11
  %26 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"*
  %27 = getelementptr inbounds %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok", %"core::result::Result<*mut u8, core::heap::AllocErr>::Ok"* %26, i32 0, i32 1
  store i8* %15, i8** %27, align 8
  %28 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to i64*
  store i64 0, i64* %28, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb12
  ret void
}

; alloc::vec::SetLenOnDrop::increment_len
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc3vec12SetLenOnDrop13increment_len17h3d2bbdbaf8a1de53E({ i64*, i64 }* dereferenceable(16) %self, i64 %increment) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %1 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, %increment
  store i64 %3, i64* %0, align 8
  ret void
}

; alloc::vec::SetLenOnDrop::new
; Function Attrs: inlinehint uwtable
define internal { i64*, i64 } @_ZN5alloc3vec12SetLenOnDrop3new17hb594e6d921147567E(i64* dereferenceable(8) %len) unnamed_addr #1 {
start:
  %_0 = alloca { i64*, i64 }, align 8
  %0 = load i64, i64* %len, align 8
  %1 = bitcast { i64*, i64 }* %_0 to i64**
  store i64* %len, i64** %1, align 8
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_0, i32 0, i32 1
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_0, i32 0, i32 0
  %4 = load i64*, i64** %3, align 8, !nonnull !4
  %5 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64*, i64 } undef, i64* %4, 0
  %8 = insertvalue { i64*, i64 } %7, i64 %6, 1
  ret { i64*, i64 } %8
}

; alloc::slice::<impl [T]>::as_mut_ptr
; Function Attrs: inlinehint uwtable
define i8* @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb3cbb402ceb66051E"([0 x i8]* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call <[T] as core::slice::SliceExt>::as_mut_ptr
  %0 = call i8* @"_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$10as_mut_ptr17hd6842e9ff17a7386E"([0 x i8]* nonnull %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; alloc::slice::<impl [T]>::get_unchecked_mut
; Function Attrs: inlinehint uwtable
define align 1 dereferenceable(1) i8* @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h878dd993187a8722E"([0 x i8]* nonnull %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <[T] as core::slice::SliceExt>::get_unchecked_mut
  %0 = call align 1 dereferenceable(1) i8* @"_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$17get_unchecked_mut17h812e3ca6f8d734feE"([0 x i8]* nonnull %self.0, i64 %self.1, i64 %index)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; alloc::raw_vec::alloc_guard
; Function Attrs: inlinehint uwtable
define internal void @_ZN5alloc7raw_vec11alloc_guard17h4d8948f98a4e2f69E(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), i64 %alloc_size) unnamed_addr #1 {
start:
  %_8 = alloca %"core::heap::CollectionAllocErr", align 8
  %_2 = alloca i8, align 1
; call core::mem::size_of
  %1 = call i64 @_ZN4core3mem7size_of17h90fe27cd36a90561E()
  br label %bb5

bb1:                                              ; preds = %bb3
  store i8 1, i8* %_2, align 1
  br label %bb4

bb2:                                              ; preds = %bb3, %bb5
  store i8 0, i8* %_2, align 1
  br label %bb4

bb3:                                              ; preds = %bb5
  call void @llvm.assume(i1 true)
  %2 = icmp ugt i64 %alloc_size, 9223372036854775807
  br i1 %2, label %bb1, label %bb2

bb4:                                              ; preds = %bb2, %bb1
  %3 = load i8, i8* %_2, align 1, !range !0
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb6, label %bb7

bb5:                                              ; preds = %start
  %5 = icmp ult i64 %1, 8
  br i1 %5, label %bb3, label %bb2

bb6:                                              ; preds = %bb4
  %6 = bitcast %"core::heap::CollectionAllocErr"* %_8 to i64*
  store i64 2, i64* %6, align 8
  %7 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"*
  %8 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"* %7 to %"core::heap::CollectionAllocErr"*
  %9 = bitcast %"core::heap::CollectionAllocErr"* %_8 to i8*
  %10 = bitcast %"core::heap::CollectionAllocErr"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 24, i32 8, i1 false)
  br label %bb8

bb7:                                              ; preds = %bb4
  %11 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"*
  %12 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Ok"* %11 to {}*
  %13 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 3, i64* %13, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb6
  ret void
}

; <alloc::vec::Vec<T> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN66_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4c3cffe2c7e103e5E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self) unnamed_addr #0 {
start:
; call <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
  %0 = call { [0 x i8]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4dfb166b3df4dc00E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <usize as core::slice::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint uwtable
define align 1 dereferenceable(1) i8* @"_ZN68_$LT$usize$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17he6cca2089f9ddc41E"(i64 %self, [0 x i8]* nonnull %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
; call <[T] as core::slice::SliceExt>::as_mut_ptr
  %0 = call i8* @"_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$10as_mut_ptr17hd6842e9ff17a7386E"([0 x i8]* nonnull %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp ule i64 %self, -1
  call void @llvm.assume(i1 %1)
; call core::ptr::<impl *mut T>::offset
  %2 = call i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h33cda128c7f87bafE"(i8* %0, i64 %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %2
}

; <core::option::Option<T> as core::ops::try::Try>::from_error
; Function Attrs: uwtable
define void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h216025f022d5192eE"(%"core::option::Option<(core::heap::Layout, usize)>"* noalias nocapture sret dereferenceable(32)) unnamed_addr #0 {
start:
  %1 = bitcast %"core::option::Option<(core::heap::Layout, usize)>"* %0 to i64*
  store i64 0, i64* %1, align 8
  ret void
}

; <core::option::Option<T> as core::ops::try::Try>::into_result
; Function Attrs: uwtable
define void @"_ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hd448f80b86bfc92dE"(%"core::result::Result<usize, core::option::NoneError>"* noalias nocapture sret dereferenceable(16), %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<usize>", align 8
  %1 = bitcast %"core::option::Option<usize>"* %self to i8*
  %2 = bitcast %"core::option::Option<usize>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 16, i32 8, i1 false)
; call <core::option::Option<T>>::ok_or
  call void @"_ZN38_$LT$core..option..Option$LT$T$GT$$GT$5ok_or17heb5866c0f46239c5E"(%"core::result::Result<usize, core::option::NoneError>"* noalias nocapture sret dereferenceable(16) %0, %"core::option::Option<usize>"* noalias nocapture dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
; Function Attrs: uwtable
define { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h308e50c1ecab2c37E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call <alloc::raw_vec::RawVec<T, A>>::ptr
  %1 = call i8* @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3ptr17h1eea10f0e1b51578E"({ i8*, i64 }* noalias readonly dereferenceable(16) %0)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::<impl *mut T>::is_null
  %2 = call zeroext i1 @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he11490e9a9dcef97E"(i8* %1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = xor i1 %2, true
  call void @llvm.assume(i1 %3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
; call core::slice::from_raw_parts_mut
  %6 = call { [0 x i8]*, i64 } @_ZN4core5slice18from_raw_parts_mut17he47b34bc916e622cE(i8* %1, i64 %5)
  %7 = extractvalue { [0 x i8]*, i64 } %6, 0
  %8 = extractvalue { [0 x i8]*, i64 } %6, 1
  br label %bb4

bb4:                                              ; preds = %bb3
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %7, 0
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1
  ret { [0 x i8]*, i64 } %10
}

; <core::iter::Take<I> as core::iter::iterator::Iterator>::next
; Function Attrs: inlinehint uwtable
define i16 @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hfda329eae2dac49aE"({ i64, i8 }* dereferenceable(16) %self) unnamed_addr #1 {
start:
  %abi_cast = alloca i16, align 2
  %_0 = alloca %"core::option::Option<u8>", align 1
  %0 = bitcast { i64, i8 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %3 = bitcast { i64, i8 }* %self to i64*
  %4 = bitcast { i64, i8 }* %self to i64*
  %5 = load i64, i64* %4, align 8
  %6 = sub i64 %5, 1
  store i64 %6, i64* %3, align 8
  %7 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %self, i32 0, i32 1
; call <core::iter::sources::Repeat<A> as core::iter::iterator::Iterator>::next
  %8 = call i16 @"_ZN87_$LT$core..iter..sources..Repeat$LT$A$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$4next17h11d19870554cb98fE"(i8* dereferenceable(1) %7)
  store i16 %8, i16* %abi_cast, align 2
  %9 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  %10 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 2, i32 1, i1 false)
  br label %bb3

bb2:                                              ; preds = %start
  %11 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 0, i8* %11, align 1
  br label %bb4

bb3:                                              ; preds = %bb1
  br label %bb4

bb4:                                              ; preds = %bb2, %bb3
  %12 = bitcast %"core::option::Option<u8>"* %_0 to i16*
  %13 = load i16, i16* %12, align 1
  ret i16 %13
}

; <core::iter::Take<I> as core::iter::iterator::Iterator>::size_hint
; Function Attrs: inlinehint uwtable
define void @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$9size_hint17hb03148b3367ef39fE"({ [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* noalias nocapture sret dereferenceable(24), { i64, i8 }* noalias readonly dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_19 = alloca %"core::option::Option<usize>", align 8
  %upper1 = alloca %"core::option::Option<usize>", align 8
  %_4 = alloca { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, align 8
  %upper = alloca %"core::option::Option<usize>", align 8
  %1 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %self, i32 0, i32 1
; call <core::iter::sources::Repeat<A> as core::iter::iterator::Iterator>::size_hint
  call void @"_ZN87_$LT$core..iter..sources..Repeat$LT$A$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$9size_hint17h84b3fc4a525989afE"({ [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* noalias nocapture sret dereferenceable(24) %_4, i8* noalias readonly dereferenceable(1) %1)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %_4 to i64*
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %_4, i32 0, i32 3
  %5 = bitcast %"core::option::Option<usize>"* %4 to i8*
  %6 = bitcast %"core::option::Option<usize>"* %upper to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 16, i32 8, i1 false)
  %7 = bitcast { i64, i8 }* %self to i64*
  %8 = load i64, i64* %7, align 8
; call core::cmp::min
  %9 = call i64 @_ZN4core3cmp3min17h43a35b9a9013edeeE(i64 %3, i64 %8)
  br label %bb2

bb2:                                              ; preds = %bb1
  %10 = bitcast %"core::option::Option<usize>"* %upper to i64*
  %11 = load i64, i64* %10, align 8, !range !5
  %12 = bitcast %"core::option::Option<usize>"* %upper to i64*
  %13 = load i64, i64* %12, align 8, !range !5
  switch i64 %13, label %bb4 [
    i64 1, label %bb5
  ]

bb3:                                              ; preds = %bb5
  %14 = bitcast %"core::option::Option<usize>"* %upper1 to %"core::option::Option<usize>::Some"*
  %15 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %14, i32 0, i32 1
  store i64 %24, i64* %15, align 8
  %16 = bitcast %"core::option::Option<usize>"* %upper1 to i64*
  store i64 1, i64* %16, align 8
  br label %bb6

bb4:                                              ; preds = %bb5, %bb2
  %17 = bitcast { i64, i8 }* %self to i64*
  %18 = load i64, i64* %17, align 8
  %19 = bitcast %"core::option::Option<usize>"* %upper1 to %"core::option::Option<usize>::Some"*
  %20 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast %"core::option::Option<usize>"* %upper1 to i64*
  store i64 1, i64* %21, align 8
  br label %bb6

bb5:                                              ; preds = %bb2
  %22 = bitcast %"core::option::Option<usize>"* %upper to %"core::option::Option<usize>::Some"*
  %23 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = bitcast { i64, i8 }* %self to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %bb3, label %bb4

bb6:                                              ; preds = %bb4, %bb3
  %28 = bitcast %"core::option::Option<usize>"* %upper1 to i8*
  %29 = bitcast %"core::option::Option<usize>"* %_19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %28, i64 16, i32 8, i1 false)
  %30 = bitcast { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %0 to i64*
  store i64 %9, i64* %30, align 8
  %31 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %0, i32 0, i32 3
  %32 = bitcast %"core::option::Option<usize>"* %_19 to i8*
  %33 = bitcast %"core::option::Option<usize>"* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %32, i64 16, i32 8, i1 false)
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::from_error
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h3a7eaf9ebd01545cE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %v) unnamed_addr #0 {
start:
  %_2 = alloca %"core::heap::CollectionAllocErr", align 8
  %1 = bitcast %"core::heap::CollectionAllocErr"* %v to i8*
  %2 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"*
  %4 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>::Err"* %3 to %"core::heap::CollectionAllocErr"*
  %5 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  %6 = bitcast %"core::heap::CollectionAllocErr"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 24, i32 8, i1 false)
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::from_error
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h6f95c036f0632321E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), %"core::heap::CollectionAllocErr"* noalias nocapture dereferenceable(24) %v) unnamed_addr #0 {
start:
  %_2 = alloca %"core::heap::CollectionAllocErr", align 8
  %1 = bitcast %"core::heap::CollectionAllocErr"* %v to i8*
  %2 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err", %"core::result::Result<usize, core::heap::CollectionAllocErr>::Err"* %3, i32 0, i32 1
  %5 = bitcast %"core::heap::CollectionAllocErr"* %_2 to i8*
  %6 = bitcast %"core::heap::CollectionAllocErr"* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %5, i64 24, i32 8, i1 false)
  %7 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to i64*
  store i64 1, i64* %7, align 8
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::into_result
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h4564f75c6684d2c3E"(%"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), %"core::result::Result<usize, core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::result::Result<usize, core::heap::CollectionAllocErr>", align 8
  %1 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %self to i8*
  %2 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 32, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %_2 to i8*
  %4 = bitcast %"core::result::Result<usize, core::heap::CollectionAllocErr>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 32, i32 8, i1 false)
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::into_result
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h51916b0afabff6eeE"(%"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(24), %"core::result::Result<(), core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::result::Result<(), core::heap::CollectionAllocErr>", align 8
  %1 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %self to i8*
  %2 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 24, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %_2 to i8*
  %4 = bitcast %"core::result::Result<(), core::heap::CollectionAllocErr>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 24, i32 8, i1 false)
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::into_result
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17h76c26abd7319d0adE"(%"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture sret dereferenceable(32), %"core::result::Result<*mut u8, core::heap::AllocErr>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::result::Result<*mut u8, core::heap::AllocErr>", align 8
  %1 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %self to i8*
  %2 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 32, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %_2 to i8*
  %4 = bitcast %"core::result::Result<*mut u8, core::heap::AllocErr>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 32, i32 8, i1 false)
  ret void
}

; <core::result::Result<T, E> as core::ops::try::Try>::into_result
; Function Attrs: uwtable
define void @"_ZN78_$LT$core..result..Result$LT$T$C$$u20$E$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17hfd11e02d0f6ee120E"(%"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture sret dereferenceable(32), %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>", align 8
  %1 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %self to i8*
  %2 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %1, i64 32, i32 8, i1 false)
  %3 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %_2 to i8*
  %4 = bitcast %"core::result::Result<core::heap::Layout, core::heap::CollectionAllocErr>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %3, i64 32, i32 8, i1 false)
  ret void
}

; <core::mem::ManuallyDrop<T> as core::ops::deref::DerefMut>::deref_mut
; Function Attrs: inlinehint uwtable
define align 8 dereferenceable(24) %"core::heap::AllocErr"* @"_ZN79_$LT$core..mem..ManuallyDrop$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hdbfe96ad4b9762a2E"(%"core::mem::ManuallyDrop<core::heap::AllocErr>"* dereferenceable(24) %self) unnamed_addr #1 {
start:
  %0 = bitcast %"core::mem::ManuallyDrop<core::heap::AllocErr>"* %self to %"core::heap::AllocErr"*
  ret %"core::heap::AllocErr"* %0
}

; <alloc::vec::SetLenOnDrop<'a> as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint uwtable
define internal void @"_ZN80_$LT$alloc..vec..SetLenOnDrop$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha90b65320ff7d7cdE"({ i64*, i64 }* dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = bitcast { i64*, i64 }* %self to i64**
  %3 = load i64*, i64** %2, align 8, !nonnull !4
  store i64 %1, i64* %3, align 8
  ret void
}

; <alloc::vec::Vec<T> as core::ops::index::IndexMut<I>>::index_mut
; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN80_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h4dfb166b3df4dc00E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 0, i8* %_10, align 1
  store i8 1, i8* %_10, align 1
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %0 = invoke { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h308e50c1ecab2c37E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb4, %bb5
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  %7 = extractvalue { [0 x i8]*, i64 } %0, 0
  %8 = extractvalue { [0 x i8]*, i64 } %0, 1
  store i8 0, i8* %_10, align 1
; invoke core::slice::<impl core::ops::index::IndexMut<I> for [T]>::index_mut
  %9 = invoke { [0 x i8]*, i64 } @"_ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h3f072734ed229b25E"([0 x i8]* nonnull %7, i64 %8)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %10 = extractvalue { [0 x i8]*, i64 } %9, 0
  %11 = extractvalue { [0 x i8]*, i64 } %9, 1
  %12 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %10, 0
  %13 = insertvalue { [0 x i8]*, i64 } %12, i64 %11, 1
  ret { [0 x i8]*, i64 } %13

bb4:                                              ; preds = %bb5
  store i8 0, i8* %_10, align 1
  br label %bb1

bb5:                                              ; preds = %cleanup
  %14 = load i8, i8* %_10, align 1, !range !0
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb4, label %bb1

cleanup:                                          ; preds = %bb2, %start
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb5
}

; <alloc::raw_vec::RawVec<T, A> as core::ops::drop::Drop>::drop
; Function Attrs: uwtable
define void @"_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h74ae0116c17e3253E"({ i8*, i64 }* dereferenceable(16) %self) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T, A>>::dealloc_buffer
  call void @"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$14dealloc_buffer17h8854a88e40fa2b2cE"({ i8*, i64 }* dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T> as alloc::vec::SpecExtend<T, I>>::spec_extend
; Function Attrs: uwtable
define void @"_ZN85_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$T$C$$u20$I$GT$$GT$11spec_extend17hb0d56a4ace41c867E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64, i8) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %abi_cast = alloca i16, align 2
  %personalityslot = alloca { i8*, i32 }, align 8
  %_53 = alloca i8, align 1
  %_52 = alloca i8, align 1
  %_33 = alloca %"core::option::Option<u8>", align 1
  %iter = alloca { i64, i8 }, align 8
  %_28 = alloca { i64, i8 }, align 8
  %local_len = alloca { i64*, i64 }, align 8
  %ptr = alloca i8*, align 8
  %_5 = alloca { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, align 8
  %high = alloca %"core::option::Option<usize>", align 8
  %_0 = alloca {}, align 1
  %iterator = alloca { i64, i8 }, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  store i8 %1, i8* %3, align 8
  store i8 0, i8* %_53, align 1
  store i8 0, i8* %_52, align 1
  store i8 1, i8* %_52, align 1
; invoke <core::iter::Take<I> as core::iter::iterator::Iterator>::size_hint
  invoke void @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$9size_hint17hb03148b3367ef39fE"({ [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* noalias nocapture sret dereferenceable(24) %_5, { i64, i8 }* noalias readonly dereferenceable(16) %iterator)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb29, %bb30
  %4 = bitcast { i8*, i32 }* %personalityslot to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = insertvalue { i8*, i32 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i32 } %8, i32 %7, 1
  resume { i8*, i32 } %9

bb2:                                              ; preds = %start
  %10 = bitcast { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %_5 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %_5, i32 0, i32 3
  %13 = bitcast %"core::option::Option<usize>"* %12 to i8*
  %14 = bitcast %"core::option::Option<usize>"* %high to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %13, i64 16, i32 8, i1 false)
  %15 = bitcast %"core::option::Option<usize>"* %high to i64*
  %16 = load i64, i64* %15, align 8, !range !5
  %17 = bitcast %"core::option::Option<usize>"* %high to i64*
  %18 = load i64, i64* %17, align 8, !range !5
  switch i64 %18, label %bb4 [
    i64 1, label %bb3
  ]

bb3:                                              ; preds = %bb2
  %19 = bitcast %"core::option::Option<usize>"* %high to %"core::option::Option<usize>::Some"*
  %20 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %22 = bitcast %"core::option::Option<usize>"* %high to i64*
  %23 = load i64, i64* %22, align 8, !range !5
  %24 = bitcast %"core::option::Option<usize>"* %high to i64*
  %25 = load i64, i64* %24, align 8, !range !5
  switch i64 %25, label %bb5 [
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_52, align 1
  %26 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  %29 = load i8, i8* %28, align 8
; invoke <alloc::vec::Vec<T>>::extend_desugared
  invoke void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$16extend_desugared17hc3be24e30cdc442aE"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %27, i8 %29)
          to label %bb28 unwind label %cleanup

bb6:                                              ; preds = %bb4
  %30 = bitcast %"core::option::Option<usize>"* %high to %"core::option::Option<usize>::Some"*
  %31 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
; invoke <alloc::vec::Vec<T>>::reserve
  invoke void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$7reserve17h1fd8857fdd17854dE"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self, i64 %32)
          to label %bb8 unwind label %cleanup

bb7:                                              ; preds = %bb27, %bb28
  ret void

bb8:                                              ; preds = %bb6
; invoke <alloc::vec::Vec<T> as core::ops::deref::DerefMut>::deref_mut
  %33 = invoke { [0 x i8]*, i64 } @"_ZN71_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h308e50c1ecab2c37E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %self)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
  %34 = extractvalue { [0 x i8]*, i64 } %33, 0
  %35 = extractvalue { [0 x i8]*, i64 } %33, 1
; invoke alloc::slice::<impl [T]>::as_mut_ptr
  %36 = invoke i8* @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17hb3cbb402ceb66051E"([0 x i8]* nonnull %34, i64 %35)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
; invoke <alloc::vec::Vec<T>>::len
  %37 = invoke i64 @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$3len17h57dd735628443333E"(%"alloc::vec::Vec<u8>"* noalias readonly dereferenceable(24) %self)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
  %38 = icmp ule i64 %37, -1
  call void @llvm.assume(i1 %38)
; invoke core::ptr::<impl *mut T>::offset
  %39 = invoke i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h33cda128c7f87bafE"(i8* %36, i64 %37)
          to label %bb12 unwind label %cleanup

bb12:                                             ; preds = %bb11
  store i8* %39, i8** %ptr, align 8
  %40 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 3
; invoke alloc::vec::SetLenOnDrop::new
  %41 = invoke { i64*, i64 } @_ZN5alloc3vec12SetLenOnDrop3new17hb594e6d921147567E(i64* dereferenceable(8) %40)
          to label %bb13 unwind label %cleanup

bb13:                                             ; preds = %bb12
  store { i64*, i64 } %41, { i64*, i64 }* %local_len, align 8
  store i8 0, i8* %_52, align 1
  %42 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iterator, i32 0, i32 1
  %45 = load i8, i8* %44, align 8
; invoke <I as core::iter::traits::IntoIterator>::into_iter
  %46 = invoke { i64, i8 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17had8b8262129bc2a0E"(i64 %43, i8 %45)
          to label %bb15 unwind label %cleanup1

bb14:                                             ; preds = %bb17, %cleanup1
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17h3b3c9f5aca78d46cE({ i64*, i64 }* %local_len) #10
  br label %bb30

bb15:                                             ; preds = %bb13
  store { i64, i8 } %46, { i64, i8 }* %_28, align 8
  %47 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_28, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %_28, i32 0, i32 1
  %50 = load i8, i8* %49, align 8
  %51 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iter, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %iter, i32 0, i32 1
  store i8 %50, i8* %52, align 8
  br label %bb16

bb16:                                             ; preds = %bb25, %bb15
; invoke <core::iter::Take<I> as core::iter::iterator::Iterator>::next
  %53 = invoke i16 @"_ZN76_$LT$core..iter..Take$LT$I$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$4next17hfda329eae2dac49aE"({ i64, i8 }* dereferenceable(16) %iter)
          to label %bb18 unwind label %cleanup2

bb17:                                             ; preds = %bb31, %bb32
  br label %bb14

bb18:                                             ; preds = %bb16
  store i16 %53, i16* %abi_cast, align 2
  %54 = bitcast %"core::option::Option<u8>"* %_33 to i8*
  %55 = bitcast i16* %abi_cast to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 2, i32 1, i1 false)
  %56 = bitcast %"core::option::Option<u8>"* %_33 to i8*
  %57 = load i8, i8* %56, align 1, !range !0
  %58 = trunc i8 %57 to i1
  %59 = zext i1 %58 to i64
  %60 = bitcast %"core::option::Option<u8>"* %_33 to i8*
  %61 = load i8, i8* %60, align 1, !range !0
  %62 = trunc i8 %61 to i1
  %63 = zext i1 %62 to i64
  switch i64 %63, label %bb20 [
    i64 0, label %bb19
    i64 1, label %bb21
  ]

bb19:                                             ; preds = %bb18
  br label %bb22

bb20:                                             ; preds = %bb18
  unreachable

bb21:                                             ; preds = %bb18
  %64 = bitcast %"core::option::Option<u8>"* %_33 to %"core::option::Option<u8>::Some"*
  %65 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 1
  store i8 1, i8* %_53, align 1
  %67 = bitcast %"core::option::Option<u8>"* %_33 to i8*
  %68 = load i8, i8* %67, align 1, !range !0
  %69 = trunc i8 %68 to i1
  %70 = zext i1 %69 to i64
  switch i64 %70, label %bb34 [
    i64 1, label %bb33
  ]

bb22:                                             ; preds = %bb19
  store i8 0, i8* %_53, align 1
  br label %bb26

bb23:                                             ; preds = %bb33
  %71 = load i8*, i8** %ptr, align 8
; invoke core::ptr::<impl *mut T>::offset
  %72 = invoke i8* @"_ZN4core3ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17h33cda128c7f87bafE"(i8* %71, i64 1)
          to label %bb24 unwind label %cleanup2

bb24:                                             ; preds = %bb23
  store i8* %72, i8** %ptr, align 8
; invoke alloc::vec::SetLenOnDrop::increment_len
  invoke void @_ZN5alloc3vec12SetLenOnDrop13increment_len17h3d2bbdbaf8a1de53E({ i64*, i64 }* dereferenceable(16) %local_len, i64 1)
          to label %bb25 unwind label %cleanup2

bb25:                                             ; preds = %bb24
  store i8 0, i8* %_53, align 1
  br label %bb16

bb26:                                             ; preds = %bb22
; invoke core::ptr::drop_in_place
  invoke void @_ZN4core3ptr13drop_in_place17h3b3c9f5aca78d46cE({ i64*, i64 }* %local_len)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  br label %bb7

bb28:                                             ; preds = %bb5
  br label %bb7

bb29:                                             ; preds = %bb30
  store i8 0, i8* %_52, align 1
  br label %bb1

bb30:                                             ; preds = %bb14, %cleanup
  %73 = load i8, i8* %_52, align 1, !range !0
  %74 = trunc i8 %73 to i1
  br i1 %74, label %bb29, label %bb1

bb31:                                             ; preds = %bb32
  store i8 0, i8* %_53, align 1
  br label %bb17

bb32:                                             ; preds = %cleanup2
  %75 = load i8, i8* %_53, align 1, !range !0
  %76 = trunc i8 %75 to i1
  br i1 %76, label %bb31, label %bb17

bb33:                                             ; preds = %bb34, %bb21
  store i8 0, i8* %_53, align 1
  %77 = load i8*, i8** %ptr, align 8
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h018aa1d81520d036E(i8* %77, i8 %66)
          to label %bb23 unwind label %cleanup2

bb34:                                             ; preds = %bb21
  br label %bb33

cleanup:                                          ; preds = %bb26, %bb12, %bb11, %bb10, %bb9, %bb8, %bb6, %bb5, %start
  %78 = landingpad { i8*, i32 }
          cleanup
  %79 = extractvalue { i8*, i32 } %78, 0
  %80 = extractvalue { i8*, i32 } %78, 1
  %81 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %bb30

cleanup1:                                         ; preds = %bb13
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  %85 = extractvalue { i8*, i32 } %83, 1
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  br label %bb14

cleanup2:                                         ; preds = %bb24, %bb23, %bb33, %bb16
  %88 = landingpad { i8*, i32 }
          cleanup
  %89 = extractvalue { i8*, i32 } %88, 0
  %90 = extractvalue { i8*, i32 } %88, 1
  %91 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %bb32
}

; <alloc::vec::Vec<T> as alloc::vec::SpecExtend<T, I>>::from_iter
; Function Attrs: uwtable
define void @"_ZN85_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$T$C$$u20$I$GT$$GT$9from_iter17h7a00c3060149244eE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24), i64 %iterator.0, i8 %iterator.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca %"alloc::vec::Vec<u8>", align 8
  %vector = alloca %"alloc::vec::Vec<u8>", align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
; invoke <alloc::vec::Vec<T>>::new
  invoke void @"_ZN33_$LT$alloc..vec..Vec$LT$T$GT$$GT$3new17h96e3d1cf7d588f4aE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %vector)
          to label %bb2 unwind label %cleanup

bb1:                                              ; preds = %bb5, %bb6
  %1 = bitcast { i8*, i32 }* %personalityslot to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  %4 = load i32, i32* %3, align 4
  %5 = insertvalue { i8*, i32 } undef, i8* %2, 0
  %6 = insertvalue { i8*, i32 } %5, i32 %4, 1
  resume { i8*, i32 } %6

bb2:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
; invoke <alloc::vec::Vec<T> as alloc::vec::SpecExtend<T, I>>::spec_extend
  invoke void @"_ZN85_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$T$C$$u20$I$GT$$GT$11spec_extend17hb0d56a4ace41c867E"(%"alloc::vec::Vec<u8>"* dereferenceable(24) %vector, i64 %iterator.0, i8 %iterator.1)
          to label %bb4 unwind label %cleanup1

bb3:                                              ; preds = %cleanup1
; call core::ptr::drop_in_place
  call void @_ZN4core3ptr13drop_in_place17h9a42813777de08f8E(%"alloc::vec::Vec<u8>"* %vector) #10
  br label %bb6

bb4:                                              ; preds = %bb2
  %7 = bitcast %"alloc::vec::Vec<u8>"* %vector to i8*
  %8 = bitcast %"alloc::vec::Vec<u8>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %7, i64 24, i32 8, i1 false)
  %9 = bitcast %"alloc::vec::Vec<u8>"* %_6 to i8*
  %10 = bitcast %"alloc::vec::Vec<u8>"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %9, i64 24, i32 8, i1 false)
  ret void

bb5:                                              ; preds = %bb6
  store i8 0, i8* %_7, align 1
  br label %bb1

bb6:                                              ; preds = %bb3, %cleanup
  %11 = load i8, i8* %_7, align 1, !range !0
  %12 = trunc i8 %11 to i1
  br i1 %12, label %bb5, label %bb1

cleanup:                                          ; preds = %start
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb6

cleanup1:                                         ; preds = %bb2
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb3
}

; <alloc::vec::Vec<T> as core::iter::traits::FromIterator<T>>::from_iter
; Function Attrs: inlinehint uwtable
define void @"_ZN86_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..FromIterator$LT$T$GT$$GT$9from_iter17h34240ce25e20b068E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24), i64 %iter.0, i8 %iter.1) unnamed_addr #1 {
start:
; call <I as core::iter::traits::IntoIterator>::into_iter
  %1 = call { i64, i8 } @"_ZN54_$LT$I$u20$as$u20$core..iter..traits..IntoIterator$GT$9into_iter17had8b8262129bc2a0E"(i64 %iter.0, i8 %iter.1)
  %2 = extractvalue { i64, i8 } %1, 0
  %3 = extractvalue { i64, i8 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <alloc::vec::Vec<T> as alloc::vec::SpecExtend<T, I>>::from_iter
  call void @"_ZN85_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..SpecExtend$LT$T$C$$u20$I$GT$$GT$9from_iter17h7a00c3060149244eE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %0, i64 %2, i8 %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <core::iter::sources::Repeat<A> as core::iter::iterator::Iterator>::next
; Function Attrs: inlinehint uwtable
define i16 @"_ZN87_$LT$core..iter..sources..Repeat$LT$A$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$4next17h11d19870554cb98fE"(i8* dereferenceable(1) %self) unnamed_addr #1 {
start:
  %_0 = alloca %"core::option::Option<u8>", align 1
; call core::clone::impls::<impl core::clone::Clone for u8>::clone
  %0 = call i8 @"_ZN4core5clone5impls51_$LT$impl$u20$core..clone..Clone$u20$for$u20$u8$GT$5clone17hceeebef1cd750d36E"(i8* noalias readonly dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"core::option::Option<u8>"* %_0 to %"core::option::Option<u8>::Some"*
  %2 = getelementptr inbounds %"core::option::Option<u8>::Some", %"core::option::Option<u8>::Some"* %1, i32 0, i32 1
  store i8 %0, i8* %2, align 1
  %3 = bitcast %"core::option::Option<u8>"* %_0 to i8*
  store i8 1, i8* %3, align 1
  %4 = bitcast %"core::option::Option<u8>"* %_0 to i16*
  %5 = load i16, i16* %4, align 1
  ret i16 %5
}

; <core::iter::sources::Repeat<A> as core::iter::iterator::Iterator>::size_hint
; Function Attrs: inlinehint uwtable
define void @"_ZN87_$LT$core..iter..sources..Repeat$LT$A$GT$$u20$as$u20$core..iter..iterator..Iterator$GT$9size_hint17h84b3fc4a525989afE"({ [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* noalias nocapture sret dereferenceable(24), i8* noalias readonly dereferenceable(1) %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<usize>", align 8
  %1 = bitcast %"core::option::Option<usize>"* %_2 to i64*
  store i64 0, i64* %1, align 8
  %2 = bitcast { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %0 to i64*
  store i64 -1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }, { [0 x i64], i64, [0 x i64], %"core::option::Option<usize>", [0 x i64] }* %0, i32 0, i32 3
  %4 = bitcast %"core::option::Option<usize>"* %_2 to i8*
  %5 = bitcast %"core::option::Option<usize>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %4, i64 16, i32 8, i1 false)
  ret void
}

; <core::ops::range::RangeFull as core::slice::SliceIndex<[T]>>::index_mut
; Function Attrs: inlinehint uwtable
define { [0 x i8]*, i64 } @"_ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6727eb3d9547f0a3E"([0 x i8]* nonnull %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %slice.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %slice.1, 1
  ret { [0 x i8]*, i64 } %1
}

; Function Attrs: uwtable
define void @repeat_take_collect(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24)) unnamed_addr #0 {
start:
; call core::iter::sources::repeat
  %1 = call i8 @_ZN4core4iter7sources6repeat17ha0bee4617b5f4c0dE(i8 42)
  br label %bb1

bb1:                                              ; preds = %start
; call core::iter::iterator::Iterator::take
  %2 = call { i64, i8 } @_ZN4core4iter8iterator8Iterator4take17h9dfc2c0d5b5de094E(i8 %1, i64 100000)
  %3 = extractvalue { i64, i8 } %2, 0
  %4 = extractvalue { i64, i8 } %2, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::iter::iterator::Iterator::collect
  call void @_ZN4core4iter8iterator8Iterator7collect17h27cf4149e684e2efE(%"alloc::vec::Vec<u8>"* noalias nocapture sret dereferenceable(24) %0, i64 %3, i8 %4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.assume(i1) #5

; core::panicking::panic
; Function Attrs: cold noinline noreturn
declare void @_ZN4core9panicking5panic17hfa30b041999ce81dE({ [0 x i64], { [0 x i8]*, i64 }, [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }* noalias readonly dereferenceable(40)) unnamed_addr #6

; <core::heap::CollectionAllocErr as core::convert::From<core::heap::AllocErr>>::from
declare void @"_ZN98_$LT$core..heap..CollectionAllocErr$u20$as$u20$core..convert..From$LT$core..heap..AllocErr$GT$$GT$4from17h16f5c0b22e46952cE"(%"core::heap::CollectionAllocErr"* noalias nocapture sret dereferenceable(24), %"core::heap::AllocErr"* noalias nocapture dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: cold noreturn nounwind
declare void @__rust_oom(i8*) unnamed_addr #8

; Function Attrs: nounwind
declare noalias i8* @__rust_alloc(i64, i64, i8*) unnamed_addr #9

; Function Attrs: nounwind
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #9

; Function Attrs: nounwind
declare i8* @__rust_realloc(i8*, i64, i64, i64, i64, i8*) unnamed_addr #9

attributes #0 = { uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #1 = { inlinehint uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #2 = { cold inlinehint noreturn uwtable "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #3 = { "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold noinline noreturn "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { cold noreturn nounwind "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #9 = { nounwind "no-frame-pointer-elim"="true" "probe-stack"="__rust_probestack" }
attributes #10 = { noinline }

!0 = !{i8 0, i8 2}
!1 = !{!2}
!2 = distinct !{!2, !3, !"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE: %self"}
!3 = distinct !{!3, !"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE"}
!4 = !{}
!5 = !{i64 0, i64 2}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE: %self"}
!8 = distinct !{!8, !"_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$3cap17h41ff43480ecc004fE"}
!9 = !{i64 0, i64 4}
!10 = !{i64 0, i64 3}
