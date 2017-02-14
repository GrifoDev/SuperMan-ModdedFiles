.class public Lsun/misc/FpUtils;
.super Ljava/lang/Object;
.source "FpUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static twoToTheDoubleScaleDown:D

.field static twoToTheDoubleScaleUp:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsun/misc/FpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    const/16 v0, 0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    const/16 v0, -0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySign(DD)D
    .locals 2

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1

    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    move-result v0

    return v0
.end method

.method public static getExponent(D)I
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static ilogb(D)I
    .locals 10

    const/16 v8, -0x3fe

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v5, :cond_9

    if-lt v0, v8, :cond_8

    const/16 v5, 0x3ff

    if-gt v0, v5, :cond_7

    :goto_0
    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :sswitch_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    return v1

    :cond_0
    const/high16 v1, 0x10000000

    return v1

    :sswitch_1
    const-wide/16 v6, 0x0

    cmpl-double v5, p0, v6

    if-nez v5, :cond_1

    const/high16 v1, -0x10000000

    return v1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v6, 0xfffffffffffffL

    and-long/2addr v2, v6

    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_2

    move v5, v1

    :goto_1
    if-nez v5, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    const/16 v5, -0x432

    if-lt v0, v5, :cond_5

    if-ge v0, v8, :cond_5

    move v4, v1

    :cond_5
    if-nez v4, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_6
    return v0

    :cond_7
    move v1, v4

    goto :goto_0

    :cond_8
    move v1, v4

    goto :goto_0

    :cond_9
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ilogb(F)I
    .locals 6

    const/16 v5, -0x7e

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_9

    if-lt v0, v5, :cond_8

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_7

    :goto_0
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :sswitch_0
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    return v2

    :cond_0
    const/high16 v2, 0x10000000

    return v2

    :sswitch_1
    const/4 v4, 0x0

    cmpl-float v4, p0, v4

    if-nez v4, :cond_1

    const/high16 v2, -0x10000000

    return v2

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v4, 0x7fffff

    and-int/2addr v1, v4

    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    move v4, v2

    :goto_1
    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_2
    const/high16 v4, 0x800000

    if-ge v1, v4, :cond_4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    const/16 v4, -0x95

    if-lt v0, v4, :cond_5

    if-ge v0, v5, :cond_5

    move v3, v2

    :cond_5
    if-nez v3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_6
    return v0

    :cond_7
    move v2, v3

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isFinite(D)Z
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFinite(F)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInfinite(D)Z
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static isInfinite(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public static isNaN(D)Z
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static isNaN(F)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public static isUnordered(DD)Z
    .locals 2

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUnordered(FF)Z
    .locals 1

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 8

    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-double v2, p0, p2

    return-wide v2

    :cond_1
    cmpl-double v4, p0, p2

    if-nez v4, :cond_2

    return-wide p2

    :cond_2
    const-wide/16 v4, 0x0

    add-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    cmpl-double v4, p2, p0

    if-lez v4, :cond_4

    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    :goto_0
    add-long/2addr v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_4
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    cmpg-double v4, p2, p0

    if-gez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    cmp-long v4, v0, v6

    if-lez v4, :cond_7

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_7
    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    add-long/2addr v0, v2

    goto :goto_1

    :cond_8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1
.end method

.method public static nextAfter(FD)F
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, p2}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    double-to-float v1, p1

    add-float/2addr v1, p0

    return v1

    :cond_1
    float-to-double v4, p0

    cmpl-double v3, v4, p1

    if-nez v3, :cond_2

    double-to-float v1, p1

    return v1

    :cond_2
    const/4 v3, 0x0

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    float-to-double v4, p0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_4

    if-ltz v0, :cond_3

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    sget-boolean v3, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v3, :cond_6

    float-to-double v4, p0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    :goto_2
    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const v0, -0x7fffffff

    goto :goto_1
.end method

.method public static nextDown(D)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

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

.method public static nextDown(F)D
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    float-to-double v0, p0

    return-wide v0

    :cond_1
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    const-wide/high16 v0, -0x4960000000000000L    # -1.401298464324817E-45

    return-wide v0

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

    float-to-double v0, v0

    return-wide v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return-wide p0

    :cond_1
    add-double/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x1

    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    return p0

    :cond_1
    add-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    cmpl-float v0, p0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static powerOfTwoD(I)D
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    const/16 v1, -0x3fe

    if-lt p0, v1, :cond_0

    const/16 v1, 0x3ff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    const/16 v1, -0x7e

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static rawCopySign(DD)D
    .locals 6

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rawCopySign(FF)F
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static scalb(DI)D
    .locals 8

    const/16 v0, 0x833

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    if-gez p2, :cond_0

    const/16 v6, -0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v4, -0x200

    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    :goto_0
    shr-int/lit8 v6, p2, 0x8

    ushr-int/lit8 v5, v6, 0x17

    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int v1, v6, v5

    invoke-static {v1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v6

    mul-double/2addr p0, v6

    sub-int/2addr p2, v1

    :goto_1
    if-eqz p2, :cond_1

    mul-double/2addr p0, v2

    sub-int/2addr p2, v4

    goto :goto_1

    :cond_0
    const/16 v6, 0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/16 v4, 0x200

    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    goto :goto_0

    :cond_1
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 6

    const/16 v0, 0x116

    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    float-to-double v2, p0

    invoke-static {p1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static signum(D)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-wide p0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Lsun/misc/FpUtils;->copySign(DD)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lsun/misc/FpUtils;->copySign(FF)F

    move-result p0

    goto :goto_0
.end method

.method public static ulp(D)D
    .locals 4

    const/4 v1, 0x0

    const/16 v3, -0x3fe

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v2, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const/16 v2, 0x3ff

    if-gt v0, v2, :cond_0

    if-lt v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :sswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2

    :sswitch_1
    const-wide/16 v2, 0x1

    return-wide v2

    :cond_1
    add-int/lit8 v0, v0, -0x34

    if-lt v0, v3, :cond_2

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v2

    return-wide v2

    :cond_2
    add-int/lit16 v1, v0, 0x432

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ulp(F)F
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, -0x7e

    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    sget-boolean v3, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    if-lt v0, v4, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :sswitch_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    :sswitch_1
    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x17

    if-lt v0, v4, :cond_2

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoF(I)F

    move-result v1

    return v1

    :cond_2
    add-int/lit16 v1, v0, 0x95

    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
