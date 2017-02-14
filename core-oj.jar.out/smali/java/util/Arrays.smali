.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;,
        Ljava/util/Arrays$ArrayList;,
        Ljava/util/Arrays$LegacyMergeSort;,
        Ljava/util/Arrays$NaturalOrder;
    }
.end annotation


# static fields
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7

.field public static final MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method static synthetic -java_util_Arrays_lambda$1([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$2([ILjava/util/function/IntUnaryOperator;I)V
    .locals 1

    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$3([JLjava/util/function/IntToLongFunction;I)V
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic -java_util_Arrays_lambda$4([DLjava/util/function/IntToDoubleFunction;I)V
    .locals 2

    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CC)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DD)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FF)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([II)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JIIJ)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JJ)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SS)I
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method private static binarySearch0([BIIB)I
    .locals 5

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-byte v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([CIIC)I
    .locals 5

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-char v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([DIID)I
    .locals 11

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v5, v1, v0

    ushr-int/lit8 v4, v5, 0x1

    aget-wide v8, p0, v4

    cmpg-double v5, v8, p3

    if-gez v5, :cond_0

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_0
    cmpl-double v5, v8, p3

    if-lez v5, :cond_1

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v5, v6, v2

    if-nez v5, :cond_2

    return v4

    :cond_2
    cmp-long v5, v6, v2

    if-gez v5, :cond_3

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v1, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([FIIF)I
    .locals 7

    move v2, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v2, v0, :cond_4

    add-int v6, v2, v0

    ushr-int/lit8 v3, v6, 0x1

    aget v5, p0, v3

    cmpg-float v6, v5, p3

    if-gez v6, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v6, v5, p3

    if-lez v6, :cond_1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v4, v1, :cond_2

    return v3

    :cond_2
    if-ge v4, v1, :cond_3

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v2, 0x1

    neg-int v6, v6

    return v6
.end method

.method private static binarySearch0([IIII)I
    .locals 5

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([JIIJ)I
    .locals 7

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    aget-wide v4, p0, v2

    cmp-long v3, v4, p3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long v3, v4, p3

    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .locals 6

    move v2, p1

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-gt v2, v1, :cond_2

    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    if-nez p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v5

    return v5

    :cond_0
    move v2, p1

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-gt v2, v1, :cond_3

    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    aget-object v4, p0, v3

    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([SIIS)I
    .locals 5

    move v1, p1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    aget-short v3, p0, v2

    if-ge v3, p3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method public static checkOffsetAndCount(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-le p1, p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    :cond_1
    sub-int v0, p0, p1

    if-lt v0, p2, :cond_0

    return-void
.end method

.method public static copyOf([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static copyOf([CI)[C
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [C

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-object v0
.end method

.method public static copyOf([DI)[D
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [D

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    return-object v0
.end method

.method public static copyOf([FI)[F
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [F

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object v0
.end method

.method public static copyOf([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method

.method public static copyOf([JI)[J
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [J

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v1, [Ljava/lang/Object;

    if-ne p2, v1, :cond_0

    new-array v0, p1, [Ljava/lang/Object;

    :goto_0
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static copyOf([SI)[S
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [S

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Z

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static copyOfRange([CII)[C
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [C

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [D

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    return-object v0
.end method

.method public static copyOfRange([FII)[F
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [F

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    return-object v0
.end method

.method public static copyOfRange([III)[I
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [I

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method

.method public static copyOfRange([JII)[J
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [J

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-class v2, [Ljava/lang/Object;

    if-ne p3, v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    :goto_0
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static copyOfRange([SII)[S
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [S

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    return-object v0
.end method

.method public static copyOfRange([ZII)[Z
    .locals 5

    const/4 v3, 0x0

    sub-int v1, p2, p1

    if-gez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-array v0, v1, [Z

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    return-object v0
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    array-length v4, p0

    array-length v5, p1

    if-eq v5, v4, :cond_3

    return v6

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v0, p0, v3

    aget-object v1, p1, v3

    if-ne v0, v1, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_7

    :cond_6
    return v6

    :cond_7
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v6

    :cond_8
    return v7
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_1
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2

    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    :cond_2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    check-cast p0, [S

    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    return v2

    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_4

    check-cast p0, [I

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2

    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    check-cast p0, [J

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    return v2

    :cond_5
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6

    check-cast p0, [C

    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    return v2

    :cond_6
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    check-cast p0, [F

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    return v2

    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_8

    check-cast p0, [D

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    return v2

    :cond_8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    check-cast p0, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    return v2

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .locals 7

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_c

    aget-object v1, p0, v4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    :goto_1
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    instance-of v6, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_3

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_4

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1

    :cond_4
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_5

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_6

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_1

    :cond_6
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_7

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    goto :goto_1

    :cond_7
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_8

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    goto :goto_1

    :cond_8
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_9

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1

    :cond_9
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_a

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    goto :goto_1

    :cond_a
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_b

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_c
    return v3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string/jumbo v2, "null"

    return-object v2

    :cond_0
    array-length v2, p0

    mul-int/lit8 v1, v2, 0x14

    array-length v2, p0

    if-eqz v2, :cond_1

    if-gtz v1, :cond_1

    const v1, 0x7fffffff

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string/jumbo v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    array-length v4, p0

    add-int/lit8 v3, v4, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v4, "[]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    aget-object v1, p0, v2

    if-nez v1, :cond_2

    const-string/jumbo v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ne v2, v3, :cond_d

    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c

    const-class v4, [B

    if-ne v0, v4, :cond_3

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-class v4, [S

    if-ne v0, v4, :cond_4

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-class v4, [I

    if-ne v0, v4, :cond_5

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-class v4, [J

    if-ne v0, v4, :cond_6

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-class v4, [C

    if-ne v0, v4, :cond_7

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-class v4, [F

    if-ne v0, v4, :cond_8

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const-class v4, [D

    if-ne v0, v4, :cond_9

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const-class v4, [Z

    if-ne v0, v4, :cond_a

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "[...]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public static equals([B[B)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static equals([C[C)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-char v2, p0, v0

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static equals([D[D)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v7
.end method

.method public static equals([F[F)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static equals([I[I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static equals([J[J)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v7
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v6

    :cond_2
    array-length v1, p0

    array-length v4, p1

    if-eq v4, v1, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_7

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    if-nez v2, :cond_5

    if-nez v3, :cond_4

    move v4, v5

    :goto_1
    if-nez v4, :cond_6

    return v6

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v5
.end method

.method public static equals([S[S)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-short v2, p0, v0

    aget-short v3, p1, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static equals([Z[Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v4

    :cond_2
    array-length v1, p0

    array-length v2, p1

    if-eq v2, v1, :cond_3

    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    aget-boolean v2, p0, v0

    aget-boolean v3, p1, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static fill([BB)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([BIIB)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-byte p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([CC)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-char p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([CIIC)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-char p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([DD)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([DIID)V
    .locals 3

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-wide p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([FF)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([FIIF)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([II)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([IIII)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([JIIJ)V
    .locals 3

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-wide p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([JJ)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-object p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-object p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([SIIS)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-short p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([SS)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-short p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([ZIIZ)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aput-boolean p3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fill([ZZ)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_0

    aput-boolean p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static hashCode([B)I
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v0, p0, v2

    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([C)I
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v0, p0, v2

    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([D)I
    .locals 10

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    const/4 v4, 0x1

    array-length v6, p0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-wide v2, p0, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    mul-int/lit8 v7, v4, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v0, v8

    xor-long/2addr v8, v0

    long-to-int v8, v8

    add-int v4, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static hashCode([F)I
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([I)I
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([J)I
    .locals 8

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-wide v0, p0, v4

    const/16 v6, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v6, v0

    long-to-int v2, v6

    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 7

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    mul-int/lit8 v6, v1, 0x1f

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v6, v2

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static hashCode([S)I
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-short v0, p0, v2

    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([Z)I
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-boolean v0, p0, v3

    mul-int/lit8 v5, v1, 0x1f

    if-eqz v0, :cond_1

    const/16 v2, 0x4cf

    :goto_1
    add-int v1, v5, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x4d5

    goto :goto_1

    :cond_2
    return v1
.end method

.method private static legacyMergeSort([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {v0, p0, v2, v1, v2}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-void
.end method

.method private static legacyMergeSort([Ljava/lang/Object;II)V
    .locals 2

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    neg-int v1, p1

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    return-void
.end method

.method private static legacyMergeSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_0

    neg-int v1, p1

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    return-void

    :cond_0
    neg-int v4, p1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0
.end method

.method private static legacyMergeSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    array-length v1, p0

    invoke-static {v0, p0, v2, v1, v2}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    return-void

    :cond_0
    array-length v3, p0

    move-object v1, p0

    move v4, v2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    goto :goto_0
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 13

    sub-int v5, p3, p2

    const/4 v11, 0x7

    if-ge v5, v11, :cond_2

    move v3, p2

    :goto_0
    move/from16 v0, p3

    if-ge v3, v0, :cond_1

    move v4, v3

    :goto_1
    if-le v4, p2, :cond_0

    add-int/lit8 v11, v4, -0x1

    aget-object v11, p1, v11

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p1, v4

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_0

    add-int/lit8 v11, v4, -0x1

    invoke-static {p1, v4, v11}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v2, p2

    move/from16 v1, p3

    add-int p2, p2, p4

    add-int p3, p3, p4

    add-int v11, p2, p3

    ushr-int/lit8 v6, v11, 0x1

    move/from16 v0, p4

    neg-int v11, v0

    invoke-static {p1, p0, p2, v6, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    move/from16 v0, p4

    neg-int v11, v0

    move/from16 v0, p3

    invoke-static {p1, p0, v6, v0, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    add-int/lit8 v11, v6, -0x1

    aget-object v11, p0, v11

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p0, v6

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gtz v11, :cond_3

    invoke-static {p0, p2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    move v3, v2

    move v7, p2

    move v9, v6

    move v10, v9

    move v8, v7

    :goto_2
    if-ge v3, v1, :cond_6

    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    if-ge v8, v6, :cond_5

    aget-object v11, p0, v8

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p0, v10

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gtz v11, :cond_5

    :cond_4
    add-int/lit8 v7, v8, 0x1

    aget-object v11, p0, v8

    aput-object v11, p1, v3

    move v9, v10

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v10, v9

    move v8, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v10, 0x1

    aget-object v11, p0, v10

    aput-object v11, p1, v3

    move v7, v8

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 19

    sub-int v14, p3, p2

    const/4 v3, 0x7

    if-ge v14, v3, :cond_2

    move/from16 v12, p2

    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_1

    move v13, v12

    :goto_1
    move/from16 v0, p2

    if-le v13, v0, :cond_0

    add-int/lit8 v3, v13, -0x1

    aget-object v3, p1, v3

    aget-object v4, p1, v13

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v3, v13, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v3}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move/from16 v11, p2

    move/from16 v10, p3

    add-int p2, p2, p4

    add-int p3, p3, p4

    add-int v3, p2, p3

    ushr-int/lit8 v6, v3, 0x1

    move/from16 v0, p4

    neg-int v7, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move/from16 v5, p2

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    move/from16 v0, p4

    neg-int v8, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move/from16 v7, p3

    move-object/from16 v9, p5

    invoke-static/range {v4 .. v9}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    add-int/lit8 v3, v6, -0x1

    aget-object v3, p0, v3

    aget-object v4, p0, v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_3
    move v12, v11

    move/from16 v15, p2

    move/from16 v17, v6

    move/from16 v18, v17

    move/from16 v16, v15

    :goto_2
    if-ge v12, v10, :cond_6

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    move/from16 v0, v16

    if-ge v0, v6, :cond_5

    aget-object v3, p0, v16

    aget-object v4, p0, v18

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    :cond_4
    add-int/lit8 v15, v16, 0x1

    aget-object v3, p0, v16

    aput-object v3, p1, v12

    move/from16 v17, v18

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v17

    move/from16 v16, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v17, v18, 0x1

    aget-object v3, p0, v18

    aput-object v3, p1, v12

    move/from16 v15, v16

    goto :goto_3

    :cond_6
    return-void
.end method

.method public static parallelPrefix([DIILjava/util/function/DoubleBinaryOperator;)V
    .locals 6

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([DLjava/util/function/DoubleBinaryOperator;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([IIILjava/util/function/IntBinaryOperator;)V
    .locals 6

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([ILjava/util/function/IntBinaryOperator;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([JIILjava/util/function/LongBinaryOperator;)V
    .locals 6

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([JLjava/util/function/LongBinaryOperator;)V
    .locals 6

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;IILjava/util/function/BinaryOperator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_double__array_java_util_function_IntToDoubleFunction_generator_LambdaImpl0;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_int__array_java_util_function_IntUnaryOperator_generator_LambdaImpl0;-><init>([ILjava/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_long__array_java_util_function_IntToLongFunction_generator_LambdaImpl0;-><init>([JLjava/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Ljava/util/Arrays$-void_parallelSetAll_java_lang_Object__array_java_util_function_IntFunction_generator_LambdaImpl0;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSort([B)V
    .locals 10

    const/16 v7, 0x2000

    const/4 v4, 0x0

    array-length v5, p0

    if-le v5, v7, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v0, v5, -0x1

    invoke-static {p0, v4, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    new-array v3, v5, [B

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    if-gt v8, v7, :cond_2

    :goto_1
    const/4 v1, 0x0

    move-object v2, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([BII)V
    .locals 10

    const/16 v7, 0x2000

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    if-le v5, v7, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    new-array v3, v5, [B

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    if-gt v8, v7, :cond_2

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([C)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    new-array v5, v7, [C

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([CII)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    new-array v3, v5, [C

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([D)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    new-array v5, v7, [D

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([DII)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    new-array v3, v5, [D

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([F)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    new-array v5, v7, [F

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([FII)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    new-array v3, v5, [F

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([I)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    new-array v5, v7, [I

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([III)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    new-array v3, v5, [I

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([J)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    new-array v5, v7, [J

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([JII)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    new-array v3, v5, [J

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Comparable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x0

    array-length v2, p0

    if-le v2, v10, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v13

    const/4 v0, 0x1

    if-ne v13, v0, :cond_1

    :cond_0
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v0, p0

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Comparable;

    shl-int/lit8 v0, v13, 0x2

    div-int v12, v2, v0

    if-gt v12, v10, :cond_2

    :goto_1
    sget-object v11, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v5, p0

    move v7, v1

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v10, v12

    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Comparable;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;II)V"
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v10

    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    :cond_0
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Comparable;

    shl-int/lit8 v1, v10, 0x2

    div-int v9, v5, v1

    const/16 v1, 0x2000

    if-gt v9, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v9

    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    if-nez p3, :cond_0

    sget-object p3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    :cond_0
    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v10

    const/4 v0, 0x1

    if-ne v10, v0, :cond_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    shl-int/lit8 v1, v10, 0x2

    div-int v9, v5, v1

    const/16 v1, 0x2000

    if-gt v9, v1, :cond_3

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_1
.end method

.method public static parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    :cond_0
    array-length v2, p0

    if-le v2, v10, :cond_1

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v13

    const/4 v0, 0x1

    if-ne v13, v0, :cond_2

    :cond_1
    move-object v0, p0

    move-object v3, p1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    shl-int/lit8 v0, v13, 0x2

    div-int v12, v2, v0

    if-gt v12, v10, :cond_3

    :goto_1
    move-object v5, p0

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, p1

    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v10, v12

    goto :goto_1
.end method

.method public static parallelSort([S)V
    .locals 12

    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    array-length v7, p0

    if-le v7, v9, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1

    :cond_0
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    new-array v5, v7, [S

    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    if-gt v10, v9, :cond_2

    :goto_1
    move-object v4, p0

    move v6, v1

    move v8, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v9, v10

    goto :goto_1
.end method

.method public static parallelSort([SII)V
    .locals 10

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    const/4 v0, 0x1

    if-ne v9, v0, :cond_1

    :cond_0
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    new-array v3, v5, [S

    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    const/16 v1, 0x2000

    if-gt v8, v1, :cond_2

    const/16 v7, 0x2000

    :goto_1
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1
.end method

.method private static rangeCheck(III)V
    .locals 3

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_2
    return-void
.end method

.method public static setAll([DLjava/util/function/IntToDoubleFunction;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v2

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([ILjava/util/function/IntUnaryOperator;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([JLjava/util/function/IntToLongFunction;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v2

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sort([B)V
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    return-void
.end method

.method public static sort([BII)V
    .locals 1

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    return-void
.end method

.method public static sort([C)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    return-void
.end method

.method public static sort([CII)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    return-void
.end method

.method public static sort([D)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    return-void
.end method

.method public static sort([DII)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    return-void
.end method

.method public static sort([F)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    return-void
.end method

.method public static sort([FII)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    return-void
.end method

.method public static sort([I)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    return-void
.end method

.method public static sort([III)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    return-void
.end method

.method public static sort([J)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    return-void
.end method

.method public static sort([JII)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .locals 6

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p3, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v5

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    array-length v2, p0

    move-object v0, p0

    move-object v3, p1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public static sort([S)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    return-void
.end method

.method public static sort([SII)V
    .locals 6

    const/4 v4, 0x0

    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    return-void
.end method

.method public static spliterator([D)Ljava/util/Spliterator$OfDouble;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([DI)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Ljava/util/Spliterator$OfDouble;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Ljava/util/Spliterator$OfInt;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([II)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Ljava/util/Spliterator$OfInt;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Ljava/util/Spliterator$OfLong;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([JI)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Ljava/util/Spliterator$OfLong;
    .locals 1

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Ljava/util/stream/DoubleStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Ljava/util/stream/DoubleStream;
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Ljava/util/stream/IntStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Ljava/util/stream/IntStream;
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Ljava/util/stream/LongStream;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Ljava/util/stream/LongStream;
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-byte v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([C)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([D)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([F)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([J)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([S)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-short v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static toString([Z)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string/jumbo v3, "null"

    return-object v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "[]"

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    aget-boolean v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
