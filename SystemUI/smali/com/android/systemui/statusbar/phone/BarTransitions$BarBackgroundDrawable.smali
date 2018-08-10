.class public Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BarBackgroundDrawable"
.end annotation


# instance fields
.field private mAnimating:Z

.field protected mBlackOpaque:I

.field private mColor:I

.field private mColorStart:I

.field private mEndTime:J

.field private final mGradient:Landroid/graphics/drawable/Drawable;

.field private mGradientAlpha:I

.field private mGradientAlphaStart:I

.field private mMode:I

.field protected mOpaque:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mSemiTransparent:I

.field private mStartTime:J

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTransparent:I

.field private final mWarning:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601e6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    const v1, 0x10601bb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    const v1, 0x7f0601e7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    const v1, 0x1010543

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public applyModeBackground(IIZ)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    if-ne v2, p2, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-nez v6, :cond_a

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    iput v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    :cond_3
    return-void

    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_8

    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    goto :goto_0

    :cond_8
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mBlackOpaque:I

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    goto :goto_0

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_b

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    iput v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    iput v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    goto :goto_1

    :cond_b
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float v2, v6, v7

    sget-object v6, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v6, v5, v13

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    int-to-float v7, v7

    sub-float v8, v12, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v12, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v12, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget v9, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v12, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    goto/16 :goto_1
.end method

.method public finishAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setTint(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, p1}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public updateOpaqueColor(I)V
    .locals 0

    return-void
.end method
