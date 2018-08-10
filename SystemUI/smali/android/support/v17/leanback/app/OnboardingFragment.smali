.class public abstract Landroid/support/v17/leanback/app/OnboardingFragment;
.super Landroid/app/Fragment;
.source "OnboardingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/OnboardingFragment$1;,
        Landroid/support/v17/leanback/app/OnboardingFragment$2;
    }
.end annotation


# static fields
.field private static final HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static sSlideDistance:I


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrowBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowBackgroundColorSet:Z

.field private mArrowColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowColorSet:Z

.field mCurrentPageIndex:I

.field mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionViewTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDescriptionViewTextColorSet:Z

.field private mDotBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDotBackgroundColorSet:Z

.field mEnterAnimationFinished:Z

.field private mIconResourceId:I

.field mIsLtr:Z

.field mLogoAnimationFinished:Z

.field private mLogoResourceId:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMainIconView:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

.field mStartButton:Landroid/view/View;

.field private mStartButtonText:Ljava/lang/CharSequence;

.field private mStartButtonTextSet:Z

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;

.field mTitleView:Landroid/widget/TextView;

.field private mTitleViewTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTitleViewTextColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$1;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$2;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 10

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    const v5, 0x800005

    if-ne p3, v5, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-eqz p2, :cond_7

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v7, v5, [F

    if-eqz v4, :cond_6

    sget v5, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    :goto_2
    int-to-float v5, v5

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v5, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    const-wide/16 v6, 0x1a1

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v6, 0x1a1

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-lez v5, :cond_1

    invoke-virtual {v0, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_1
    return-object v0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const v5, 0x800003

    if-eq p3, v5, :cond_0

    :cond_4
    const/4 v5, 0x5

    if-ne p3, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    sget v5, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int v5, v5

    goto :goto_2

    :cond_7
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {p1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v7, v5, [F

    const/4 v5, 0x0

    const/4 v8, 0x0

    aput v5, v7, v8

    if-eqz v4, :cond_8

    sget v5, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    :goto_4
    int-to-float v5, v5

    const/4 v8, 0x1

    aput v5, v7, v8

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget-object v5, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v5, Landroid/support/v17/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :cond_8
    sget v5, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int v5, v5

    goto :goto_4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    goto :goto_0
.end method

.method private onPageChangedInternal(I)V
    .locals 14

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const v3, 0x800003

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x800003

    const-wide/16 v4, 0x21

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800005

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800005

    const-wide/16 v4, 0x215

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v10

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingFragment$6;

    invoke-direct {v0, p0, v10}, Landroid/support/v17/leanback/app/OnboardingFragment$6;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;I)V

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v9, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v13

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$7;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v9, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v7

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->onPageChanged(II)V

    return-void

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const v3, 0x800005

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x800005

    const-wide/16 v4, 0x21

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800003

    const-wide/16 v4, 0x1f4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const v3, 0x800003

    const-wide/16 v4, 0x215

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v17/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    sget v0, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v9, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v12

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v12, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v9, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$8;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private resolveTheme()V
    .locals 7

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onProvideTheme()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    sget v2, Landroid/support/v17/leanback/R$attr;->onboardingTheme:I

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0
.end method


# virtual methods
.method protected final getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    return v0
.end method

.method protected abstract getPageCount()I
.end method

.method protected abstract getPageDescription(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method

.method hideLogoView()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mIconResourceId:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mIconResourceId:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/support/v17/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Landroid/support/v17/leanback/R$id;->background_container:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    sget v8, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, v4}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    sget v8, Landroid/support/v17/leanback/R$id;->foreground_container:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p0, v7, v6}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    sget v8, Landroid/support/v17/leanback/R$id;->page_container:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    sget v8, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v17/leanback/widget/PagingIndicator;->setPageCount(I)V

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {v8, v9, v10}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    :cond_4
    iget v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v8, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v8, v10}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method protected moveToNextPage()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected moveToPreviousPage()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected abstract onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected onCreateDescriptionAnimator()Landroid/animation/Animator;
    .locals 2

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$animator;->lb_onboarding_description_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateEnterAnimation()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected onCreateLogoAnimation()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateTitleAnimator()Landroid/animation/Animator;
    .locals 2

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->resolveTheme()V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Landroid/support/v17/leanback/R$layout;->lb_onboarding_fragment:I

    invoke-virtual {v1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    sget v3, Landroid/support/v17/leanback/R$id;->page_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/PagingIndicator;

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Landroid/support/v17/leanback/R$id;->button_start:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Landroid/support/v17/leanback/R$id;->main_icon:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    sget v3, Landroid/support/v17/leanback/R$id;->logo:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    sget v3, Landroid/support/v17/leanback/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->description:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleViewTextColorSet:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    iget v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionViewTextColorSet:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDotBackgroundColorSet:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_3
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowColorSet:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowColor:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_4
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowBackgroundColorSet:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_5
    iget-boolean v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButtonTextSet:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x42700000    # 60.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Landroid/support/v17/leanback/app/OnboardingFragment;->sSlideDistance:I

    :cond_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    return-object v2
.end method

.method protected onFinishFragment()V
    .locals 0

    return-void
.end method

.method protected onLogoAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/OnboardingFragment;->startEnterAnimation(Z)V

    return-void
.end method

.method protected onPageChanged(II)V
    .locals 0

    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "leanback.onboarding.current_page_index"

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "leanback.onboarding.logo_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "leanback.onboarding.enter_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_1

    iput v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, v1, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/app/OnboardingFragment$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$3;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "leanback.onboarding.current_page_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const-string/jumbo v0, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const-string/jumbo v0, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->startLogoAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    goto :goto_0
.end method

.method protected final startEnterAnimation(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->hideLogoView()V

    iget-boolean v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    if-eqz v4, :cond_0

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v2

    sget v4, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v2, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateTitleAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateDescriptionAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateEnterAnimation()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    goto :goto_0

    :cond_5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/support/v17/leanback/app/OnboardingFragment$5;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/app/OnboardingFragment$5;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method startLogoAnimation()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    iget v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoResourceId:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    iget v6, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoResourceId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v6, 0x535

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v4, v5, v9

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    new-instance v5, Landroid/support/v17/leanback/app/OnboardingFragment$4;

    invoke-direct {v5, p0, v1}, Landroid/support/v17/leanback/app/OnboardingFragment$4;-><init>(Landroid/support/v17/leanback/app/OnboardingFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return v9

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingFragment;->onCreateLogoAnimation()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v8
.end method
