.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;
.super Ljava/lang/Object;
.source "SineInOut80.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 10
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 9
    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;->segments:[[F

    .line 7
    return-void

    .line 9
    :array_0
    .array-data 4
        0x0
        0x0
        0x3e47ae14    # 0.195f
    .end array-data

    :array_1
    .array-data 4
        0x3e47ae14    # 0.195f
        0x3ef5c28f    # 0.48f
        0x3f251eb8    # 0.645f
    .end array-data

    :array_2
    .array-data 4
        0x3f251eb8    # 0.645f
        0x3f55c28f    # 0.835f
        0x3f628f5c    # 0.885f
    .end array-data

    .line 10
    :array_3
    .array-data 4
        0x3f628f5c    # 0.885f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12
    .param p1, "input"    # F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 21
    div-float v0, p1, v10

    .line 22
    .local v0, "_loc_5":F
    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;->segments:[[F

    array-length v1, v6

    .line 23
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 24
    .local v4, "_loc_9":I
    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_0

    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 26
    :cond_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v10, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 27
    .local v2, "_loc_7":F
    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut80;->segments:[[F

    aget-object v3, v6, v4

    .line 28
    .local v3, "_loc_8":[F
    aget v6, v3, v11

    sub-float v7, v10, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    const/4 v7, 0x0

    add-float v5, v7, v6

    .line 30
    .local v5, "ret":F
    return v5
.end method
