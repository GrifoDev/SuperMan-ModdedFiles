.class public Landroid/support/v7/app/OverlayListView$OverlayObject;
.super Ljava/lang/Object;
.source "OverlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/OverlayListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverlayObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrentAlpha:F

.field private mCurrentBounds:Landroid/graphics/Rect;

.field private mDeltaY:I

.field private mDuration:J

.field private mEndAlpha:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimationEnded:Z

.field private mIsAnimationStarted:Z

.field private mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

.field private mStartAlpha:F

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    iput v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public isAnimationStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return v0
.end method

.method public setAlphaAnimation(FF)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    iput p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    iput p2, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    return-object p0
.end method

.method public setAnimationEndListener(Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    return-object p0
.end method

.method public setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 1

    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setTranslateYAnimation(I)Landroid/support/v7/app/OverlayListView$OverlayObject;
    .locals 0

    iput p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDeltaY:I

    return-object p0
.end method

.method public startAnimation(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    iput-boolean v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    invoke-interface {v0}, Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public update(J)Z
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-wide v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartTime:J

    sub-long v4, p1, v4

    long-to-float v3, v4

    iget-wide v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDuration:J

    long-to-float v4, v4

    div-float v2, v3, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-boolean v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_4

    move v1, v2

    :goto_0
    iget v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mDeltaY:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    iget v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mEndAlpha:F

    iget v5, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mStartAlpha:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationStarted:Z

    if-eqz v3, :cond_3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mListener:Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;

    invoke-interface {v3}, Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;->onAnimationEnd()V

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mIsAnimationEnded:Z

    xor-int/lit8 v3, v3, 0x1

    return v3

    :cond_4
    iget-object v3, p0, Landroid/support/v7/app/OverlayListView$OverlayObject;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0
.end method
