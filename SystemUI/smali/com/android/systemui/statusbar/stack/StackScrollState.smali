.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/ExpandableViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableView;->createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->gone:Z

    iput v4, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    iput v4, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->xTranslation:F

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleX:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleY:F

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-nez v3, :cond_1

    const-string/jumbo v4, "StackScrollStateNoSuchChild"

    const-string/jumbo v5, "No child state was found when applying this state to the hostView"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->gone:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    return-object v0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
