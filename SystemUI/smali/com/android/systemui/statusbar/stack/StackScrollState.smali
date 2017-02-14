.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mClearAllTopPadding:I

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    return-void
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    instance-of v1, p1, Lcom/android/systemui/statusbar/NotificationBottomBarView;

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v7, v0, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v7, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/DismissView;

    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v7, v10, :cond_3

    move v6, v9

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v7, v8

    :goto_3
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto :goto_1

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v7, v9

    goto :goto_3

    :cond_5
    instance-of v7, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v7, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    if-gtz v7, :cond_7

    move v6, v9

    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_6
    move v7, v8

    :goto_5
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto :goto_1

    :cond_7
    move v6, v8

    goto :goto_4

    :cond_8
    move v7, v9

    goto :goto_5

    :cond_9
    return-void
.end method

.method public applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z
    .locals 13

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v1, "StackScrollStateNoSuchChild"

    const-string/jumbo v2, "No child state was found when applying this state to the hostView"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    if-eq v0, v8, :cond_2

    invoke-virtual {p1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v12

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    cmpl-float v1, v12, v9

    if-eqz v1, :cond_3

    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    :cond_3
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    iget-boolean v2, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move-object v1, p1

    move-wide v6, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    invoke-virtual {p1, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v10, v1

    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_4

    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    :cond_4
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_5

    move-object v11, p1

    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    :goto_0
    cmpl-float v15, v1, v5

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    cmpl-float v15, v12, v15

    if-nez v15, :cond_2

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v5, v15

    if-nez v15, :cond_7

    const/4 v2, 0x1

    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_8

    :cond_0
    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v7, :cond_9

    const/4 v6, 0x2

    :goto_3
    if-eq v4, v6, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-eqz v3, :cond_a

    const/4 v8, 0x4

    :goto_4
    if-eq v8, v11, :cond_3

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v15, :cond_b

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_3
    :goto_5
    cmpl-float v15, v13, v9

    if-eqz v15, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    cmpl-float v15, v14, v10

    if-eqz v15, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationZ(F)V

    :cond_5
    return-void

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v7

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    return-object v0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetViewStates()V
    .locals 8

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
