.class public final Lcom/google/common/math/DoubleMath;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/DoubleMath$1;
    }
.end annotation


# static fields
.field private static final LN_2:D

.field static final MAX_FACTORIAL:I = 0xaa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MAX_INT_AS_DOUBLE:D = 2.147483647E9

.field private static final MAX_LONG_AS_DOUBLE_PLUS_ONE:D = 9.223372036854776E18

.field private static final MIN_INT_AS_DOUBLE:D = -2.147483648E9

.field private static final MIN_LONG_AS_DOUBLE:D = -9.223372036854776E18

.field static final everySixteenthFactorial:[D
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/DoubleMath;->LN_2:D

    const/16 v0, 0xb

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x42b3077775800000L    # 2.0922789888E13
        0x474956ad0aae33a4L    # 2.631308369336935E35
        0x4c9ee69a78d72cb6L    # 1.2413915592536073E61
        0x526fe478ee34844aL    # 1.2688693218588417E89
        0x589c619094edabffL    # 7.156945704626381E118
        0x5f13638dd7bd6347L    # 9.916779348709496E149
        0x65c7cac197cfe503L    # 1.974506857221074E182
        0x6cb1e5dfc140e1e5L    # 3.856204823625804E215
        0x73c8ce85fadb707eL    # 5.5502938327393044E249
        0x7b095d5f3d928edeL    # 4.7147236359920616E284
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinite(D)D
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-wide p0
.end method

.method public static factorial(I)D
    .locals 6

    const-string v3, "n"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/16 v3, 0xaa

    if-le p0, v3, :cond_0

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v4

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    and-int/lit8 v3, p0, -0x10

    add-int/lit8 v2, v3, 0x1

    :goto_1
    if-gt v2, p0, :cond_1

    int-to-double v4, v2

    mul-double/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/common/math/DoubleMath;->everySixteenthFactorial:[D

    shr-int/lit8 v4, p0, 0x4

    aget-wide v4, v3, v4

    mul-double/2addr v4, v0

    goto :goto_0
.end method

.method public static fuzzyCompare(DDD)I
    .locals 2

    invoke-static/range {p0 .. p5}, Lcom/google/common/math/DoubleMath;->fuzzyEquals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_0
.end method

.method public static fuzzyEquals(DDD)Z
    .locals 4

    const-string v0, "tolerance"

    invoke-static {v0, p4, p5}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;D)D

    sub-double v0, p0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    cmpg-double v0, v0, p4

    if-lez v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMathematicalInteger(D)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x34

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPowerOfTwo(D)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log2(D)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/common/math/DoubleMath;->LN_2:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static log2(DLjava/math/RoundingMode;)I
    .locals 12
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    cmpl-double v4, p0, v8

    if-lez v4, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    const-string v7, "x must be positive and finite"

    invoke-static {v4, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isNormal(D)Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/high16 v4, 0x4330000000000000L    # 4.503599627370496E15

    mul-double/2addr v4, p0

    invoke-static {v4, v5, p2}, Lcom/google/common/math/DoubleMath;->log2(DLjava/math/RoundingMode;)I

    move-result v4

    add-int/lit8 v0, v4, -0x34

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_1
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v5

    :goto_3
    goto :goto_2

    :cond_3
    move v1, v6

    goto :goto_3

    :pswitch_3
    if-gez v0, :cond_4

    move v4, v5

    :goto_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_5
    and-int v1, v4, v5

    goto :goto_2

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5

    :pswitch_4
    if-ltz v0, :cond_6

    move v4, v5

    :goto_6
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isPowerOfTwo(D)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_7
    and-int v1, v4, v5

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_6

    :cond_7
    move v5, v6

    goto :goto_7

    :pswitch_5
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->scaleNormalize(D)D

    move-result-wide v2

    mul-double v8, v2, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_8

    move v1, v5

    :goto_8
    goto :goto_2

    :cond_8
    move v1, v6

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static mean(Ljava/lang/Iterable;)D
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/math/DoubleMath;->mean(Ljava/util/Iterator;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean(Ljava/util/Iterator;)D
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Cannot take mean of 0 values"

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    sub-double v6, v4, v2

    long-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static varargs mean([D)D
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "com.google.common.math.DoubleUtils"
    .end annotation

    const/4 v6, 0x0

    array-length v3, p0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v7, "Cannot take mean of 0 values"

    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x1

    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    move-result-wide v4

    const/4 v2, 0x1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-wide v6, p0, v2

    invoke-static {v6, v7}, Lcom/google/common/math/DoubleMath;->checkFinite(D)D

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    aget-wide v6, p0, v2

    sub-double/2addr v6, v4

    long-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method public static varargs mean([I)D
    .locals 8

    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v4, "Cannot take mean of 0 values"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget v1, p0, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    long-to-double v4, v2

    array-length v1, p0

    int-to-double v6, v1

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static varargs mean([J)D
    .locals 10

    const/4 v6, 0x0

    array-length v3, p0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v7, "Cannot take mean of 0 values"

    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x1

    aget-wide v6, p0, v6

    long-to-double v4, v6

    const/4 v2, 0x1

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    aget-wide v6, p0, v2

    long-to-double v6, v6

    sub-double/2addr v6, v4

    long-to-double v8, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method static roundIntermediate(DLjava/math/RoundingMode;)D
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#isMathematicalInteger, com.google.common.math.DoubleUtils"
    .end annotation

    const-wide/16 v8, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "input is infinite or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/google/common/math/DoubleMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_1
    :goto_0
    :pswitch_1
    return-wide p0

    :pswitch_2
    cmpl-double v2, p0, v8

    if-gez v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    sub-double/2addr p0, v6

    goto :goto_0

    :pswitch_3
    cmpg-double v2, p0, v8

    if-lez v2, :cond_1

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    add-double/2addr p0, v6

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleMath;->isMathematicalInteger(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v6, v7, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    add-double/2addr p0, v2

    goto :goto_0

    :cond_2
    move-wide p0, v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    sub-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    move-wide p0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate, java.lang.Math.getExponent, com.google.common.math.DoubleUtils"
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide p0

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v6, p0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    move v6, v4

    :goto_0
    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, p0, v8

    if-gez v7, :cond_2

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    double-to-long v4, p0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move v6, v5

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->getSignificand(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v5, v0, -0x34

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2
.end method

.method public static roundToInt(DLjava/math/RoundingMode;)I
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    const-wide v4, -0x3e1fffffffe00000L    # -2.147483649E9

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x41e0000000000000L    # 2.147483648E9

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-int v2, v0

    return v2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static roundToLong(DLjava/math/RoundingMode;)J
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "#roundIntermediate"
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/google/common/math/DoubleMath;->roundIntermediate(DLjava/math/RoundingMode;)D

    move-result-wide v0

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    sub-double/2addr v4, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v5, v0, v6

    if-gez v5, :cond_1

    :goto_1
    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkInRange(Z)V

    double-to-long v2, v0

    return-wide v2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method
