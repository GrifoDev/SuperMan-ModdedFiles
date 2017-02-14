.class Lcom/android/launcher2/PreloadIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PreloadIconDrawable.java"


# static fields
.field private static final ANIMATION_PROGRESS_COMPLETED:F = 1.0f

.field private static final ANIMATION_PROGRESS_STARTED:F = 0.0f

.field private static final ANIMATION_PROGRESS_STOPPED:F = -1.0f

.field private static final ICON_SCALE_FACTOR:F = 0.5f


# instance fields
.field private mAnimationProgress:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field final mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    iput-object p1, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PreloadIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher2/FastBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher2/FastBitmapDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/PreloadIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    mul-float/2addr v2, v4

    add-float v0, v4, v2

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public hasNotCompleted()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybePerformFinishedAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PreloadIconDrawable;->setAnimationProgress(F)V

    const-string v0, "animationProgress"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher2/FastBitmapDrawable;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher2/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/PreloadIconDrawable;->invalidateSelf()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PreloadIconDrawable;->mAnimationProgress:F

    invoke-virtual {p0}, Lcom/android/launcher2/PreloadIconDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
