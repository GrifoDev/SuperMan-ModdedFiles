.class public Lcom/android/launcher2/AnimateEngine;
.super Ljava/lang/Object;
.source "AnimateEngine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LOG_TAG:Ljava/lang/String; = "AnimateEngine"


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;
    .locals 8

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    const/4 v4, 0x0

    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    array-length v0, p1

    if-eqz p3, :cond_2

    array-length v4, p3

    if-eq v4, v0, :cond_4

    :cond_2
    new-array v3, v0, [Landroid/graphics/Rect;

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    aget-object v4, v3, v1

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v1

    :cond_3
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v3, p3

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method
