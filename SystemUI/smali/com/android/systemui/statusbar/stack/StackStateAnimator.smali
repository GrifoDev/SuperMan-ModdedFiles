.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mChildrenToClearFromOverlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private final mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-void
.end method

.method private adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V
    .locals 6

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    iget v1, p2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    const-wide/16 v4, 0x202

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J

    move-result-wide v16

    return-wide v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const-wide/16 v16, 0x78

    return-wide v16

    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v6, 0x50

    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x50

    mul-long v4, v16, v18

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    :pswitch_1
    const-wide/16 v6, 0x20

    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    :goto_2
    if-eqz v15, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    if-lt v14, v12, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v16, v3, -0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_2

    :cond_6
    return-wide v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/ExpandableViewState;)J
    .locals 13

    const/high16 v12, 0x42400000    # 48.0f

    const-wide v10, 0x3fe6666660000000L    # 0.699999988079071

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotGoneIndex()I

    move-result v4

    iget v5, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    int-to-float v1, v5

    const-wide/16 v2, 0x0

    int-to-float v5, v4

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    int-to-float v5, v4

    sub-float v0, v1, v5

    float-to-double v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v5, v0, v12

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-long v6, v6

    const-wide/16 v8, 0x0

    add-long v2, v8, v6

    int-to-float v1, v4

    :cond_0
    float-to-double v6, v1

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float v5, v1, v12

    float-to-long v6, v5

    add-long/2addr v2, v6

    return-wide v2
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    return v4

    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->adaptDurationWhenGoingToFullShade(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    invoke-direct {p0, p3, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    :cond_1
    return-void

    :cond_2
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private onAnimationFinished()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v4, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v12, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v8

    instance-of v12, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_4

    iget-object v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    instance-of v12, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v12, :cond_4

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v7, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->wasChildInGroupWhenRemoved()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationWhenRemoved()F

    move-result v8

    :cond_4
    iget v12, v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v13, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v8

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    int-to-float v13, v2

    div-float v10, v12, v13

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :cond_5
    const-wide/16 v12, 0x1d0

    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v12, v13, v10, v14}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_7
    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v13, 0xd

    if-ne v12, v13, :cond_8

    iget-object v9, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    goto/16 :goto_1

    :cond_8
    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v13, 0xe

    if-ne v12, v13, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    iget-boolean v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v13, v13

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    iget v13, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    neg-int v13, v13

    int-to-float v13, v13

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_2

    :cond_a
    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v13, 0xf

    if-eq v12, v13, :cond_b

    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v12, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->initFrom(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    iget v12, v5, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v14, 0x10

    if-ne v12, v14, :cond_c

    const/16 v12, 0x78

    :goto_3
    int-to-long v14, v12

    iput-wide v14, v13, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    const-wide/16 v14, 0xe6

    iput-wide v14, v12, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v12, v4, v13}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    :cond_d
    return-void
.end method

.method public static removeFromOverlay(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v3, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p2, v0, v3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->initAnimationProperties(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
