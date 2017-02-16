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

    .prologue
    const-class v0, Lsun/misc/FpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    .line 129
    const/16 v0, 0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    .line 130
    const/16 v0, -0x200

    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    .line 41
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySign(DD)D
    .locals 2
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 1052
    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .end local p2    # "sign":D
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 1068
    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .end local p1    # "sign":F
    :cond_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    move-result v0

    return v0
.end method

.method public static getExponent(D)I
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 147
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    .line 148
    const/16 v2, 0x34

    .line 147
    shr-long/2addr v0, v2

    .line 148
    const-wide/16 v2, 0x3ff

    .line 147
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getExponent(F)I
    .locals 2
    .param p0, "f"    # F

    .prologue
    .line 160
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
    .param p0, "d"    # D

    .prologue
    const/16 v8, -0x3fe

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 373
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 375
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_0

    .line 418
    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v5, :cond_9

    if-lt v0, v8, :cond_8

    .line 419
    const/16 v5, 0x3ff

    if-gt v0, v5, :cond_7

    .line 418
    :goto_0
    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 377
    :sswitch_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const/high16 v1, 0x40000000    # 2.0f

    return v1

    .line 380
    :cond_0
    const/high16 v1, 0x10000000

    return v1

    .line 383
    :sswitch_1
    const-wide/16 v6, 0x0

    cmpl-double v5, p0, v6

    if-nez v5, :cond_1

    .line 384
    const/high16 v1, -0x10000000

    return v1

    .line 387
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 398
    .local v2, "transducer":J
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v2, v6

    .line 399
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

    .line 406
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    .line 405
    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    .line 407
    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    .line 408
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 410
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 411
    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    .line 412
    const/16 v5, -0x432

    .line 411
    if-lt v0, v5, :cond_5

    .line 413
    if-ge v0, v8, :cond_5

    move v4, v1

    .line 411
    :cond_5
    if-nez v4, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 414
    :cond_6
    return v0

    .end local v2    # "transducer":J
    :cond_7
    move v1, v4

    .line 419
    goto :goto_0

    :cond_8
    move v1, v4

    .line 418
    goto :goto_0

    .line 420
    :cond_9
    return v0

    .line 375
    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ilogb(F)I
    .locals 6
    .param p0, "f"    # F

    .prologue
    const/16 v5, -0x7e

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 443
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 445
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_0

    .line 488
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_9

    if-lt v0, v5, :cond_8

    .line 489
    const/16 v4, 0x7f

    if-gt v0, v4, :cond_7

    .line 488
    :goto_0
    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 447
    :sswitch_0
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    const/high16 v2, 0x40000000    # 2.0f

    return v2

    .line 450
    :cond_0
    const/high16 v2, 0x10000000

    return v2

    .line 453
    :sswitch_1
    const/4 v4, 0x0

    cmpl-float v4, p0, v4

    if-nez v4, :cond_1

    .line 454
    const/high16 v2, -0x10000000

    return v2

    .line 457
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 468
    .local v1, "transducer":I
    const v4, 0x7fffff

    and-int/2addr v1, v4

    .line 469
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

    .line 476
    :cond_3
    :goto_2
    const/high16 v4, 0x800000

    .line 475
    if-ge v1, v4, :cond_4

    .line 477
    mul-int/lit8 v1, v1, 0x2

    .line 478
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 480
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 481
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    if-nez v4, :cond_6

    .line 482
    const/16 v4, -0x95

    .line 481
    if-lt v0, v4, :cond_5

    .line 483
    if-ge v0, v5, :cond_5

    move v3, v2

    .line 481
    :cond_5
    if-nez v3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 484
    :cond_6
    return v0

    .end local v1    # "transducer":I
    :cond_7
    move v2, v3

    .line 489
    goto :goto_0

    :cond_8
    move v2, v3

    .line 488
    goto :goto_0

    .line 490
    :cond_9
    return v0

    .line 445
    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isFinite(D)Z
    .locals 4
    .param p0, "d"    # D

    .prologue
    .line 242
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
    .param p0, "f"    # F

    .prologue
    .line 255
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
    .param p0, "d"    # D

    .prologue
    .line 271
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static isInfinite(F)Z
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 287
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public static isNaN(D)Z
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 303
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static isNaN(F)Z
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 319
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public static isUnordered(DD)Z
    .locals 2
    .param p0, "arg1"    # D
    .param p2, "arg2"    # D

    .prologue
    .line 335
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
    .param p0, "arg1"    # F
    .param p1, "arg2"    # F

    .prologue
    .line 351
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
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    .line 747
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 749
    :cond_0
    add-double v2, p0, p2

    return-wide v2

    .line 750
    :cond_1
    cmpl-double v4, p0, p2

    if-nez v4, :cond_2

    .line 751
    return-wide p2

    .line 755
    :cond_2
    const-wide/16 v4, 0x0

    add-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 769
    .local v0, "transducer":J
    cmpl-double v4, p2, p0

    if-lez v4, :cond_4

    .line 770
    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    :goto_0
    add-long/2addr v0, v2

    .line 790
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 770
    :cond_3
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 772
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

    .line 773
    :cond_6
    cmp-long v4, v0, v6

    if-lez v4, :cond_7

    .line 774
    sub-long/2addr v0, v2

    goto :goto_1

    .line 776
    :cond_7
    cmp-long v4, v0, v6

    if-gez v4, :cond_8

    .line 777
    add-long/2addr v0, v2

    goto :goto_1

    .line 787
    :cond_8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1
.end method

.method public static nextAfter(FD)F
    .locals 7
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 847
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1, p2}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    :cond_0
    double-to-float v1, p1

    add-float/2addr v1, p0

    return v1

    .line 850
    :cond_1
    float-to-double v4, p0

    cmpl-double v3, v4, p1

    if-nez v3, :cond_2

    .line 851
    double-to-float v1, p1

    return v1

    .line 855
    :cond_2
    const/4 v3, 0x0

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 869
    .local v0, "transducer":I
    float-to-double v4, p0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_4

    .line 870
    if-ltz v0, :cond_3

    :goto_0
    add-int/2addr v0, v1

    .line 890
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 870
    :cond_3
    const/4 v1, -0x1

    goto :goto_0

    .line 872
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

    .line 873
    :cond_6
    if-lez v0, :cond_7

    .line 874
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 876
    :cond_7
    if-gez v0, :cond_8

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 887
    :cond_8
    const v0, -0x7fffffff

    goto :goto_1
.end method

.method public static nextDown(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 990
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 991
    :cond_0
    return-wide p0

    .line 993
    :cond_1
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2

    .line 994
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 996
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 997
    cmpl-double v0, p0, v4

    if-lez v0, :cond_3

    const-wide/16 v0, -0x1

    .line 996
    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 997
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method public static nextDown(F)D
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 1027
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 1028
    :cond_0
    float-to-double v0, p0

    return-wide v0

    .line 1030
    :cond_1
    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    .line 1031
    const-wide/high16 v0, -0x4960000000000000L    # -1.401298464324817E-45

    return-wide v0

    .line 1033
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1034
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    const/4 v0, -0x1

    .line 1033
    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 1034
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 6
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 920
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 921
    :cond_0
    return-wide p0

    .line 923
    :cond_1
    add-double/2addr p0, v4

    .line 924
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 925
    cmpl-double v0, p0, v4

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x1

    .line 924
    :goto_0
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 925
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 955
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 956
    :cond_0
    return p0

    .line 958
    :cond_1
    add-float/2addr p0, v2

    .line 959
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 960
    cmpl-float v0, p0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    .line 959
    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 960
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static powerOfTwoD(I)D
    .locals 4
    .param p0, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 168
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

    .line 169
    :cond_1
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    .line 170
    const/16 v2, 0x34

    .line 169
    shl-long/2addr v0, v2

    .line 171
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 169
    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .locals 2
    .param p0, "n"    # I

    .prologue
    const/4 v0, 0x0

    .line 178
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

    .line 179
    :cond_1
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    .line 181
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 179
    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static rawCopySign(DD)D
    .locals 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 200
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 201
    const-wide/high16 v2, -0x8000000000000000L

    .line 200
    and-long/2addr v0, v2

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 203
    const-wide v4, 0x7fffffffffffffffL

    .line 202
    and-long/2addr v2, v4

    .line 200
    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static rawCopySign(FF)F
    .locals 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 223
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 224
    const/high16 v1, -0x80000000

    .line 223
    and-int/2addr v0, v1

    .line 225
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 226
    const v2, 0x7fffffff

    .line 225
    and-int/2addr v1, v2

    .line 223
    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static scalb(DI)D
    .locals 8
    .param p0, "d"    # D
    .param p2, "scale_factor"    # I

    .prologue
    .line 605
    const/16 v0, 0x833

    .line 607
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    .line 608
    .local v1, "exp_adjust":I
    const/4 v4, 0x0

    .line 609
    .local v4, "scale_increment":I
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 613
    .local v2, "exp_delta":D
    if-gez p2, :cond_0

    .line 614
    const/16 v6, -0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 615
    const/16 v4, -0x200

    .line 616
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    .line 626
    :goto_0
    shr-int/lit8 v6, p2, 0x8

    ushr-int/lit8 v5, v6, 0x17

    .line 627
    .local v5, "t":I
    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int v1, v6, v5

    .line 629
    invoke-static {v1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v6

    mul-double/2addr p0, v6

    .line 630
    sub-int/2addr p2, v1

    .line 632
    :goto_1
    if-eqz p2, :cond_1

    .line 633
    mul-double/2addr p0, v2

    .line 634
    sub-int/2addr p2, v4

    goto :goto_1

    .line 619
    .end local v5    # "t":I
    :cond_0
    const/16 v6, 0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 620
    const/16 v4, 0x200

    .line 621
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    goto :goto_0

    .line 636
    .restart local v5    # "t":I
    :cond_1
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 6
    .param p0, "f"    # F
    .param p1, "scale_factor"    # I

    .prologue
    .line 676
    const/16 v0, 0x116

    .line 680
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 691
    float-to-double v2, p0

    invoke-static {p1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 1191
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "d":D
    :cond_0
    :goto_0
    return-wide p0

    .restart local p0    # "d":D
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Lsun/misc/FpUtils;->copySign(DD)D

    move-result-wide p0

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1212
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "f":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Lsun/misc/FpUtils;->copySign(FF)F

    move-result p0

    goto :goto_0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "d"    # D

    .prologue
    const/4 v1, 0x0

    const/16 v3, -0x3fe

    .line 1095
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 1097
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_0

    .line 1105
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

    .line 1099
    :sswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2

    .line 1102
    :sswitch_1
    const-wide/16 v2, 0x1

    return-wide v2

    .line 1108
    :cond_1
    add-int/lit8 v0, v0, -0x34

    .line 1109
    if-lt v0, v3, :cond_2

    .line 1110
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    move-result-wide v2

    return-wide v2

    .line 1117
    :cond_2
    add-int/lit16 v1, v0, 0x432

    .line 1116
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 1097
    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ulp(F)F
    .locals 5
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v4, -0x7e

    .line 1146
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 1148
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_0

    .line 1156
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

    .line 1150
    :sswitch_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    .line 1153
    :sswitch_1
    const/4 v1, 0x1

    return v1

    .line 1159
    :cond_1
    add-int/lit8 v0, v0, -0x17

    .line 1160
    if-lt v0, v4, :cond_2

    .line 1161
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoF(I)F

    move-result v1

    return v1

    .line 1168
    :cond_2
    add-int/lit16 v1, v0, 0x95

    .line 1167
    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
