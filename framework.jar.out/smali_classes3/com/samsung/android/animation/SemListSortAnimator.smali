.class public Lcom/samsung/android/animation/SemListSortAnimator;
.super Ljava/lang/Object;
.source "SemListSortAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;
    }
.end annotation


# static fields
.field private static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static DELAY_BETWEEN_ANIMATIONS:I

.field private static FADE_IN_TRANSLATE_ANIMATION_DURATION:I

.field private static FADE_OUT_ANIMATION_DURATION:I


# instance fields
.field mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field final mListView:Landroid/widget/ListView;

.field mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/animation/SemListSortAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/animation/SemListSortAnimator;->startFadeInTranslateAnim()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    const/16 v0, 0x12c

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/animation/SemListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/animation/SemListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;)V
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
    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    iput-object p2, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    return-void
.end method

.method private startFadeInTranslateAnim()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-le v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-float v4, v2

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_IN_TRANSLATE_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->DELAY_BETWEEN_ANIMATIONS:I

    mul-int/2addr v5, v3

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/animation/SemListSortAnimator;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemListSortAnimator$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/animation/SemListSortAnimator$3;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v8}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public sortTheList()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mOnSortListener:Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;

    invoke-interface {v4}, Lcom/samsung/android/animation/SemListSortAnimator$OnSortListener;->onSort()V

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemListSortAnimator$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/animation/SemListSortAnimator$1;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;)V

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
    iget-object v4, p0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget v5, Lcom/samsung/android/animation/SemListSortAnimator;->FADE_OUT_ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/animation/SemListSortAnimator;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/animation/SemListSortAnimator$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/samsung/android/animation/SemListSortAnimator$2;-><init>(Lcom/samsung/android/animation/SemListSortAnimator;ZLandroid/view/View;)V

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
