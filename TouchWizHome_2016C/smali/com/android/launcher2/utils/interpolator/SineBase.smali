.class public Lcom/android/launcher2/utils/interpolator/SineBase;
.super Ljava/lang/Object;
.source "SineBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInterpolation(F[[F)F
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v0, p0, v11

    array-length v1, p1

    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    array-length v6, p1

    if-lt v4, v6, :cond_0

    array-length v6, p1

    add-int/lit8 v4, v6, -0x1

    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    aget-object v3, p1, v4

    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000    # 2.0f

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    return v5
.end method
