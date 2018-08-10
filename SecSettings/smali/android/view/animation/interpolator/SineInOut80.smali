.class public Landroid/view/animation/interpolator/SineInOut80;
.super Ljava/lang/Object;
.source "SineInOut80.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v6, [F

    aput v2, v1, v3

    aput v2, v1, v4

    const v2, 0x3e47ae14    # 0.195f

    aput v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [F

    const v2, 0x3e47ae14    # 0.195f

    aput v2, v1, v3

    const v2, 0x3ef5c28f    # 0.48f

    aput v2, v1, v4

    const v2, 0x3f251eb8    # 0.645f

    aput v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [F

    const v2, 0x3f251eb8    # 0.645f

    aput v2, v1, v3

    const v2, 0x3f55c28f    # 0.835f

    aput v2, v1, v4

    const v2, 0x3f628f5c    # 0.885f

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [F

    const v2, 0x3f628f5c    # 0.885f

    aput v2, v1, v3

    const v2, 0x3f747ae1    # 0.955f

    aput v2, v1, v4

    const v2, 0x3f7a5e35    # 0.978f

    aput v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [F

    const v2, 0x3f7a5e35    # 0.978f

    aput v2, v1, v3

    const v2, 0x3f7ff972    # 0.9999f

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v0, p1, v9

    sget-object v5, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v1, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    sget-object v5, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v5, v5

    if-ge v4, v5, :cond_0

    :goto_0
    int-to-float v5, v4

    int-to-float v6, v1

    div-float v6, v9, v6

    mul-float/2addr v5, v6

    sub-float v5, v0, v5

    int-to-float v6, v1

    mul-float v2, v5, v6

    sget-object v5, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    aget-object v3, v5, v4

    aget v5, v3, v10

    sub-float v6, v9, v2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v3, v7

    aget v8, v3, v10

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/4 v7, 0x2

    aget v7, v3, v7

    aget v8, v3, v10

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    mul-float/2addr v5, v9

    const/4 v6, 0x0

    add-float/2addr v5, v6

    return v5

    :cond_0
    sget-object v5, Landroid/view/animation/interpolator/SineInOut80;->segments:[[F

    array-length v5, v5

    add-int/lit8 v4, v5, -0x1

    goto :goto_0
.end method
