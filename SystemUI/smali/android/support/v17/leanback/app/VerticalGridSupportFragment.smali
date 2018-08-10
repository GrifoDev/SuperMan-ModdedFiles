.class public Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.super Landroid/support/v17/leanback/app/BaseSupportFragment;
.source "VerticalGridSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;,
        Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;,
        Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

.field mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;

    const-string/jumbo v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    new-instance v0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method private setupFocusSearchListener()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/TitleHelper;->getOnFocusSearchListener()Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_vertical_grid_entrance_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method gridOnItemSelected(I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showOrHideTitle()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid_fragment:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v3, Landroid/support/v17/leanback/R$id;->grid_frame:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v1, p3}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    sget v3, Landroid/support/v17/leanback/R$id;->browse_grid_dock:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v3, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V

    new-instance v3, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;)V

    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->updateAdapter()V

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->setupFocusSearchListener()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroid/support/v17/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    return-void
.end method

.method showOrHideTitle()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showTitle(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->showTitle(Z)V

    goto :goto_0
.end method
