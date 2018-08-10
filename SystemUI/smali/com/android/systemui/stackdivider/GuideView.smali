.class public Lcom/android/systemui/stackdivider/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# instance fields
.field private mDim:Landroid/widget/ImageView;

.field private mDuration:I

.field private mFocusedRect:Landroid/graphics/Rect;

.field private mFocusedStackId:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/widget/ImageView;

.field private mHasNavigationBar:Z

.field private mIsHorizontalDivision:Z

.field private mNavigationBarHeight:I

.field private mRect:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setGradient()V
    .locals 2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method dismiss(Landroid/graphics/Point;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v5, -0x1

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/-$Lambda$HMhGVeAUe1KGBNbtDYrPZWSn7lE;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/-$Lambda$HMhGVeAUe1KGBNbtDYrPZWSn7lE;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v5, 0x0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_1
    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v5, -0x1

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_3
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_GuideView_5812(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_GuideView_8868(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    const v0, 0x7f0a0366

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/GuideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060105

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060104

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mHasNavigationBar:Z

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/GuideView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mNavigationBarHeight:I

    return-void
.end method

.method setDimLayer(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method setFocusedZone(ILandroid/graphics/Rect;Z)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    iput-object p2, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/systemui/stackdivider/GuideView;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method show(Landroid/graphics/Rect;ZLandroid/animation/AnimatorListenerAdapter;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mIsHorizontalDivision:Z

    if-eqz v5, :cond_2

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    if-ne v5, v8, :cond_1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    if-nez p2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/-$Lambda$HMhGVeAUe1KGBNbtDYrPZWSn7lE$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/-$Lambda$HMhGVeAUe1KGBNbtDYrPZWSn7lE$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/GuideView;->setGradient()V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedStackId:I

    if-ne v5, v8, :cond_3

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method
