.class public Lcom/samsung/android/srib/glutils/MatrixHelper;
.super Ljava/lang/Object;
.source "MatrixHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perspectiveM([FFFFF)V
    .locals 7

    const/4 v6, 0x0

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v2, v4, v2

    double-to-float v0, v2

    div-float v2, v0, p2

    const/4 v3, 0x0

    aput v2, p0, v3

    const/4 v2, 0x1

    aput v6, p0, v2

    const/4 v2, 0x2

    aput v6, p0, v2

    const/4 v2, 0x3

    aput v6, p0, v2

    const/4 v2, 0x4

    aput v6, p0, v2

    const/4 v2, 0x5

    aput v0, p0, v2

    const/4 v2, 0x6

    aput v6, p0, v2

    const/4 v2, 0x7

    aput v6, p0, v2

    const/16 v2, 0x8

    aput v6, p0, v2

    const/16 v2, 0x9

    aput v6, p0, v2

    add-float v2, p4, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    neg-float v2, v2

    const/16 v3, 0xa

    aput v2, p0, v3

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0xb

    aput v2, p0, v3

    const/16 v2, 0xc

    aput v6, p0, v2

    const/16 v2, 0xd

    aput v6, p0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p4

    mul-float/2addr v2, p3

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    neg-float v2, v2

    const/16 v3, 0xe

    aput v2, p0, v3

    const/16 v2, 0xf

    aput v6, p0, v2

    return-void
.end method
