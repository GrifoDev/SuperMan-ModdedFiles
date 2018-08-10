.class Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PathInterpolatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathInterpolator"
.end annotation


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method private constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    iput-object p2, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    return-void
.end method

.method synthetic constructor <init>([F[FLcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;-><init>([F[F)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    return v10

    :cond_0
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_1

    return v9

    :cond_1
    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v5, v8, v4

    iget-object v8, p0, Lcom/android/systemui/qs/PathInterpolatorBuilder$PathInterpolator;->mY:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
