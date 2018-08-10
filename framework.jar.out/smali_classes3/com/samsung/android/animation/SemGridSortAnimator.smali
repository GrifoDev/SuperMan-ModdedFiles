.class public Lcom/samsung/android/animation/SemGridSortAnimator;
.super Ljava/lang/Object;
.source "SemGridSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static DELAY_BETWEEN_ANIMATIONS:I

.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static FADE_OUT_ANIMATION_DURATION:I

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final mGridView:Landroid/widget/GridView;

.field mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/animation/SemGridSortAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemGridSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x96

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    const/16 v0, 0x190

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    const/16 v0, 0x46

    sput v0, Lcom/samsung/android/animation/SemGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/GridView;Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Constructor arguments should be non-null references."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    iput-object p2, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;

    return-void
.end method

.method private startFadeInTranslateAnim()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    rem-int v4, v5, v3

    int-to-float v6, v2

    neg-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget v7, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget v7, Lcom/samsung/android/animation/SemGridSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v7, v4

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v6, v1, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/animation/SemGridSortAnimator$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/animation/SemGridSortAnimator$3;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, v10}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public sortTheGrid()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;

    invoke-interface {v4}, Lcom/samsung/android/animation/SemGridSortAnimator$OnSortListener;->onSort()V

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->invalidate()V

    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemGridSortAnimator$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/animation/SemGridSortAnimator$1;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/animation/SemGridSortAnimator;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/animation/SemGridSortAnimator;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemGridSortAnimator$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/animation/SemGridSortAnimator$2;-><init>(Lcom/samsung/android/animation/SemGridSortAnimator;ZLandroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method
