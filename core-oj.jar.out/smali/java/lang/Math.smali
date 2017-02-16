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

    .prologue
    .line 1232
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    .line 1233
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "a"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 1201
    cmpg-double v0, p0, v2

    if-gtz v0, :cond_0

    sub-double p0, v2, p0

    .end local p0    # "a":D
    :cond_0
    return-wide p0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    const/4 v1, 0x0

    .line 1182
    cmpg-float v0, p0, v1

    if-gtz v0, :cond_0

    sub-float p0, v1, p0

    .end local p0    # "a":F
    :cond_0
    return p0
.end method

.method public static abs(I)I
    .locals 0
    .param p0, "a"    # I

    .prologue
    .line 1146
    if-gez p0, :cond_0

    neg-int p0, p0

    .end local p0    # "a":I
    :cond_0
    return p0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 1163
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    .end local p0    # "a":J
    :cond_0
    return-wide p0
.end method

.method public static native acos(D)D
.end method

.method public static addExact(II)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 750
    add-int v0, p0, p1

    .line 752
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 753
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 755
    :cond_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 769
    add-long v0, p0, p2

    .line 771
    .local v0, "r":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 772
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
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
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 1656
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 1675
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
    .param p0, "a"    # I

    .prologue
    .line 905
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 906
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_0
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decrementExact(J)J
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 922
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
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
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1015
    div-int v0, p0, p1

    .line 1017
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    .line 1018
    add-int/lit8 v0, v0, -0x1

    .line 1020
    :cond_0
    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1049
    div-long v0, p0, p2

    .line 1051
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    .line 1052
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1054
    :cond_0
    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1102
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v1

    mul-int/2addr v1, p1

    sub-int v0, p0, v1

    .line 1103
    .local v0, "r":I
    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1129
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getExponent(D)I
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1711
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1693
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static incrementExact(I)I
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 871
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 872
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_0
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static incrementExact(J)J
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 888
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
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
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 1273
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    .line 1274
    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    .line 1275
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1276
    return-wide p2

    .line 1278
    :cond_1
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_2

    .end local p0    # "a":D
    :goto_0
    return-wide p0

    .restart local p0    # "a":D
    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/4 v1, 0x0

    .line 1250
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    .line 1251
    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 1252
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1253
    return p1

    .line 1255
    :cond_1
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_2

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1215
    if-lt p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1229
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 1347
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    return-wide p0

    .line 1348
    :cond_0
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1

    cmpl-double v0, p2, v2

    if-nez v0, :cond_1

    .line 1349
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1350
    return-wide p2

    .line 1352
    :cond_1
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_2

    .end local p0    # "a":D
    :goto_0
    return-wide p0

    .restart local p0    # "a":D
    :cond_2
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/4 v1, 0x0

    .line 1324
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    return p0

    .line 1325
    :cond_0
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    .line 1326
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1327
    return p1

    .line 1329
    :cond_1
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_2

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_2
    move p0, p1

    goto :goto_0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1292
    if-gt p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1306
    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static multiplyExact(II)I
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 828
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 829
    .local v0, "r":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 830
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static multiplyExact(JJ)J
    .locals 12
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 846
    mul-long v4, p0, p2

    .line 847
    .local v4, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 848
    .local v0, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 849
    .local v2, "ay":J
    or-long v6, v0, v2

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    .line 853
    cmp-long v6, p2, v10

    if-eqz v6, :cond_1

    div-long v6, v4, p2

    cmp-long v6, v6, p0

    if-eqz v6, :cond_1

    .line 855
    :cond_0
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 854
    :cond_1
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_0

    .line 858
    :cond_2
    return-wide v4
.end method

.method public static negateExact(I)I
    .locals 2
    .param p0, "a"    # I

    .prologue
    .line 939
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 940
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_0
    neg-int v0, p0

    return v0
.end method

.method public static negateExact(J)J
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 956
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_0
    neg-long v0, p0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 2
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .prologue
    .line 1755
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    .line 1798
    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextDown(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 1884
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 1885
    :cond_0
    return-wide p0

    .line 1887
    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    .line 1888
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 1890
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1891
    cmpl-double v0, p0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, -0x1

    .line 1890
    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 1891
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static nextDown(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 1921
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 1922
    :cond_0
    return p0

    .line 1924
    :cond_1
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    .line 1925
    const v0, -0x7fffffff

    return v0

    .line 1927
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1928
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    const/4 v0, -0x1

    .line 1927
    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 1928
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1827
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1856
    invoke-static {p0}, Lsun/misc/FpUtils;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    .prologue
    .line 719
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static randomIntInternal()I
    .locals 1

    .prologue
    .line 736
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
    .param p0, "a"    # F

    .prologue
    .line 614
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 615
    .local v1, "intBits":I
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    .line 617
    .local v0, "biasedExp":I
    rsub-int v3, v0, 0x95

    .line 619
    .local v3, "shift":I
    and-int/lit8 v4, v3, -0x20

    if-nez v4, :cond_1

    .line 621
    const v4, 0x7fffff

    and-int/2addr v4, v1

    .line 622
    const/high16 v5, 0x800000

    .line 621
    or-int v2, v4, v5

    .line 623
    .local v2, "r":I
    if-gez v1, :cond_0

    .line 624
    neg-int v2, v2

    .line 632
    :cond_0
    shr-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    .line 638
    .end local v2    # "r":I
    :cond_1
    float-to-int v4, p0

    return v4
.end method

.method public static round(D)J
    .locals 14
    .param p0, "a"    # D

    .prologue
    const-wide/16 v12, 0x0

    .line 663
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 664
    .local v2, "longBits":J
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v2

    .line 665
    const/16 v10, 0x34

    .line 664
    shr-long v0, v8, v10

    .line 666
    .local v0, "biasedExp":J
    const-wide/16 v8, 0x432

    sub-long v6, v8, v0

    .line 668
    .local v6, "shift":J
    const-wide/16 v8, -0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v12

    if-nez v8, :cond_1

    .line 670
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    .line 671
    const-wide/high16 v10, 0x10000000000000L

    .line 670
    or-long v4, v8, v10

    .line 672
    .local v4, "r":J
    cmp-long v8, v2, v12

    if-gez v8, :cond_0

    .line 673
    neg-long v4, v4

    .line 681
    :cond_0
    long-to-int v8, v6

    shr-long v8, v4, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    .line 687
    .end local v4    # "r":J
    :cond_1
    double-to-long v8, p0

    return-wide v8
.end method

.method public static scalb(DI)D
    .locals 2
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .prologue
    .line 1963
    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(FI)F
    .locals 1
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .prologue
    .line 1997
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static setRandomSeedInternal(J)V
    .locals 2
    .param p0, "seed"    # J

    .prologue
    .line 729
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 728
    return-void
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1427
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1448
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
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 788
    sub-int v0, p0, p1

    .line 791
    .local v0, "r":I
    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 792
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 794
    :cond_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 808
    sub-long v0, p0, p2

    .line 811
    .local v0, "r":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 812
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_0
    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 4
    .param p0, "angrad"    # D

    .prologue
    .line 224
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toIntExact(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 973
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    long-to-int v0, p0

    return v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "angdeg"    # D

    .prologue
    .line 208
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1379
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1406
    invoke-static {p0}, Lsun/misc/FpUtils;->ulp(F)F

    move-result v0

    return v0
.end method
