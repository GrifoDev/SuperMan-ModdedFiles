.class public final Lcom/andraskindler/quickscroll/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/andraskindler/quickscroll/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->NEEDS_PROXY:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    iput v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAlpha:F

    iput v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleX:F

    iput v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleY:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setFillAfter(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0, v0, p2}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 8

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    iget-object v2, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private prepareForUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 10

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    iget-boolean v4, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v4, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotX:F

    move v1, v0

    :goto_0
    if-eqz v4, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotY:F

    :goto_1
    iget v4, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationY:F

    iget v6, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v7, v4, v8

    if-nez v7, :cond_0

    cmpl-float v7, v5, v8

    if-nez v7, :cond_0

    cmpl-float v7, v6, v8

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v4, v6

    invoke-virtual {v7, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    invoke-virtual {v7, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    neg-float v4, v1

    neg-float v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    iget v4, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleX:F

    iget v5, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v6, v4, v9

    if-nez v6, :cond_2

    cmpl-float v6, v5, v9

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v4, v2

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v3

    neg-float v0, v0

    mul-float v2, v5, v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationX:F

    iget v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_4
    div-float v0, v2, v5

    move v1, v0

    goto :goto_0

    :cond_5
    div-float v0, v3, v5

    goto :goto_1
.end method

.method public static wrap(Landroid/view/View;)Lcom/andraskindler/quickscroll/animation/AnimatorProxy;
    .locals 2

    sget-object v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    sget-object v1, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAlpha:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationZ:F

    return v0
.end method

.method public getRotationX()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationX:F

    return v0
.end method

.method public getRotationY()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleY:F

    return v0
.end method

.method public getScrollX()I
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_0
.end method

.method public getTranslationX()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationY:F

    return v0
.end method

.method public getX()F
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationX:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getY()F
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationY:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mAlpha:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mHasPivot:Z

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotX:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mHasPivot:Z

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mPivotY:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_1
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationZ:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setRotationX(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationX:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setRotationY(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mRotationY:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleX:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mScaleY:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setScrollX(I)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setScrollY(I)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationX:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->prepareForUpdate()V

    iput p1, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mTranslationY:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/animation/AnimatorProxy;->setTranslationY(F)V

    :cond_0
    return-void
.end method
