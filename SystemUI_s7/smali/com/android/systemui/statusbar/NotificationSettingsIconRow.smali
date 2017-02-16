.class public Lcom/android/systemui/statusbar/NotificationSettingsIconRow;
.super Landroid/widget/FrameLayout;
.source "NotificationSettingsIconRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;
    }
.end annotation


# instance fields
.field private mAnimating:Z

.field private mDismissing:Z

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

.field private mGearLocation:[I

.field private mHorizSpaceForGear:F

.field private mIconPlaced:Z

.field private mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

.field private mOnLeft:Z

.field private mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentLocation:[I

.field private mSettingsFadedIn:Z

.field private mSnapping:Z

.field private mVertSpaceForGear:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/AlphaOptimizedImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    return-void
.end method


# virtual methods
.method public cancelFadeAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public fadeInSettings(ZFF)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isIconLocationChange(F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    :cond_2
    cmpl-float v0, p2, v3

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$1;-><init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;FZF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$2;-><init>(Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getSpaceForGear()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    return v0
.end method

.method public isIconLocationChange(F)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getPaddingStart()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method public isIconOnLeft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f13029f

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    div-float/2addr v4, v6

    float-to-int v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getTranslationY()F

    move-result v4

    mul-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v1, v4, 0x2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    aget v5, v5, v7

    sub-int/2addr v4, v5

    add-int v2, v4, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearLocation:[I

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParentLocation:[I

    aget v5, v5, v8

    sub-int/2addr v4, v5

    add-int v3, v4, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v4, v5, v2, v3}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;->onGearTouched(Lcom/android/systemui/statusbar/ExpandableNotificationRow;II)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f13029f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->resetState()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    return-void
.end method

.method public resetState()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mDismissing:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;->onSettingsIconRowReset(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f052e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGearAlpha(F)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGearListener(Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mListener:Lcom/android/systemui/statusbar/NotificationSettingsIconRow$SettingsIconRowListener;

    return-void
.end method

.method public setIconLocation(Z)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    if-ne p1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getWidth()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    sub-float/2addr v4, v5

    neg-float v2, v4

    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v0, v4, v5

    if-eqz p1, :cond_4

    add-float v4, v2, v0

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setTranslationX(F)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mIconPlaced:Z

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mHorizSpaceForGear:F

    sub-float v3, v4, v5

    goto :goto_1

    :cond_4
    add-float v4, v3, v0

    goto :goto_2
.end method

.method public setNotificationRowParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mOnLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setIconLocation(Z)V

    return-void
.end method

.method public setSnapping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSnapping:Z

    return-void
.end method

.method public updateSettingsIcons(FF)V
    .locals 5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mAnimating:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mSettingsFadedIn:Z

    if-eqz v3, :cond_0

    const v3, 0x3e99999a    # 0.3f

    mul-float v2, p2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setGearAlpha(F)V

    return-void

    :cond_0
    return-void

    :cond_1
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    sub-float v3, v0, v2

    sub-float v4, p2, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v3

    goto :goto_0
.end method

.method public updateVerticalLocation()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    div-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setTranslationY(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mVertSpaceForGear:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->mGearIcon:Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setTranslationY(F)V

    goto :goto_0
.end method
