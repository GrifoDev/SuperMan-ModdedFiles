.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Math$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static negativeZeroDoubleBits:J

.field private static negativeZeroFloatBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 4

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    sub-double p0, v2, p0

    :cond_0
    return-wide p0
.end method

.method public static abs(F)F
    .locals 2

    const/4 v1, 0x0

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_0

    sub-float p0, v1, p0

    :cond_0
    return p0
.end method

.method public static abs(I)I
    .locals 0

    if-gez p0, :cond_0

    neg-int p0, p0

    :cond_0
    return p0
.end method

.method public static abs(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    :cond_0
    return-wide p0
.end method

.method public static native acos(D)D
.end method

.method public static addExact(II)I
    .locals 3

    add-int v0, p0, p1

    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6

    add-long v0, p0, p2

    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    move-result v0

    return v0
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static decrementExact(I)I
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decrementExact(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static floorDiv(II)I
    .locals 2

    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 6

    div-long v0, p0, p2

    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v1

    mul-int/2addr v1, p1

    sub-int v0, p0, v1

    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getExponent(D)I
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 1

    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static incrementExact(I)I
    .locals 2

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static incrementExact(J)J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide p2

    :cond_1
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 4

    const/4 v1, 0x0

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return p1

    :cond_1
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_2

    :goto_0
    return p0

    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static max(II)I
    .locals 0

    if-lt p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4

    const-wide/16 v2, 0x0

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide p2

    :cond_1
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 4

    const/4 v1, 0x0

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_2

    :goto_0
    return p0

    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static min(II)I
    .locals 0

    if-gt p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static multiplyExact(II)I
    .locals 6

    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static multiplyExact(JJ)J
    .locals 12

    const-wide/16 v10, 0x0

    mul-long v4, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    or-long v6, v0, v2

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    cmp-long v6, p2, v10

    if-eqz v6, :cond_1

    div-long v6, v4, p2

    cmp-long v6, v6, p0

    if-eqz v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_0

    :cond_2
    return-wide v4
.end method

.method public static negateExact(I)I
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-int v0, p0

    return v0
.end method

.method public static negateExact(J)J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-long v0, p0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 1

    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextDown(D)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return-wide p0

    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, -0x1

    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static nextDown(F)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return p0

    :cond_1
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    const v0, -0x7fffffff

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    const/4 v0, -0x1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1

    invoke-static {p0}, Lsun/misc/FpUtils;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static randomIntInternal()I
    .locals 1

    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 6

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    rsub-int v3, v0, 0x95

    and-int/lit8 v4, v3, -0x20

    if-nez v4, :cond_1

    const v4, 0x7fffff

    and-int/2addr v4, v1

    const/high16 v5, 0x800000

    or-int v2, v4, v5

    if-gez v1, :cond_0

    neg-int v2, v2

    :cond_0
    shr-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    :cond_1
    float-to-int v4, p0

    return v4
.end method

.method public static round(D)J
    .locals 14

    const-wide/16 v12, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v2

    const/16 v10, 0x34

    shr-long v0, v8, v10

    const-wide/16 v8, 0x432

    sub-long v6, v8, v0

    const-wide/16 v8, -0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v12

    if-nez v8, :cond_1

    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    const-wide/high16 v10, 0x10000000000000L

    or-long v4, v8, v10

    cmp-long v8, v2, v12

    if-gez v8, :cond_0

    neg-long v4, v4

    :cond_0
    long-to-int v8, v6

    shr-long v8, v4, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    :cond_1
    double-to-long v8, p0

    return-wide v8
.end method

.method public static scalb(DI)D
    .locals 2

    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(FI)F
    .locals 1

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static setRandomSeedInternal(J)V
    .locals 2

    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public static signum(D)D
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .locals 1

    invoke-static {p0}, Lsun/misc/FpUtils;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static subtractExact(II)I
    .locals 3

    sub-int v0, p0, p1

    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6

    sub-long v0, p0, p2

    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toIntExact(J)I
    .locals 2

    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p0

    return v0
.end method

.method public static toRadians(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1

    invoke-static {p0}, Lsun/misc/FpUtils;->ulp(F)F

    move-result v0

    return v0
.end method
