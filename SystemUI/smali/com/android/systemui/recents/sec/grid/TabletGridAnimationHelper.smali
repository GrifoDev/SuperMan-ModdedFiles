.class public Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;
.super Ljava/lang/Object;
.source "TabletGridAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;,
        Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil;
    }
.end annotation


# static fields
.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static mEnterAnimSet:Landroid/animation/AnimatorSet;

.field static mExitAnimSet:Landroid/animation/AnimatorSet;

.field private static mIsLayoutChangeAnimRunning:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mItemAnimator:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mItemAnimator:Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TabletGridItemAnimator;

    return-void
.end method

.method public static cancelLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 0

    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static isEnterAnimationRunning()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isExitAnimationRunning()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutChangeAnimRunning()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return v0
.end method

.method public static requestLayoutChangeAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isEnterAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v4, 0x14a

    invoke-virtual {v2, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    new-instance v3, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$2;

    invoke-direct {v3}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->updateLayoutParams(Landroid/content/Context;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v4, "Request scene transition"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method public static resetViewAttrs(Landroid/view/View;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static setLayoutChangeAnimRunning(Z)V
    .locals 3

    const-string/jumbo v0, "TabletRecents_TabletGridAnimationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutChangeAnimRunning() - v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method

.method private stopAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method startEnterTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 14

    const-string/jumbo v9, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v10, "startEnterTaskViewAnimation() child count = %d\n"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p1, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mLayoutManager:Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;

    invoke-virtual {v12}, Lcom/android/systemui/recents/sec/grid/TabletGridViewLayoutManager;->getChildCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isEnterAnimationRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    sget-object v9, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v9}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->stopAnimator(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_5

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v9

    if-eqz v9, :cond_4

    const v9, 0x7f07038f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_2
    :goto_2
    iget-object v4, v2, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    neg-int v9, v7

    int-to-float v9, v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setTranslationY(F)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v12

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v12

    const/4 v13, 0x0

    aput v12, v11, v13

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v4, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v9, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v9

    if-eqz v9, :cond_3

    rem-int/lit8 v9, v3, 0x2

    int-to-long v10, v9

    const-wide/16 v12, 0x11

    mul-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-boolean v9, v5, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v9, :cond_2

    const v9, 0x7f07038e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_2

    :cond_5
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v9, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    sget-object v9, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v9, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$1;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v9, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startExitTaskViewAnimation(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 12

    const-string/jumbo v7, "TabletRecents_TabletGridAnimationHelper"

    const-string/jumbo v8, "startExitTaskViewAnimation()"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->isExitAnimationRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    sget-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mEnterAnimSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v7}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->stopAnimator(Landroid/animation/Animator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildViewHolder(Landroid/view/View;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v2, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    const v7, 0x7f07038e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v9, v9, [F

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v10

    const/4 v11, 0x0

    aput v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v10, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    neg-int v10, v4

    int-to-float v10, v10

    const/4 v11, 0x0

    aput v10, v9, v11

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->isSwitchAnimating()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    rem-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    const-wide/16 v10, 0x11

    mul-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    sget-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v7, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->mExitAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
