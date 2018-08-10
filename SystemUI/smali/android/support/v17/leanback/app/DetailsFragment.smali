.class public Landroid/support/v17/leanback/app/DetailsFragment;
.super Landroid/support/v17/leanback/app/BaseFragment;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/DetailsFragment$1;,
        Landroid/support/v17/leanback/app/DetailsFragment$2;,
        Landroid/support/v17/leanback/app/DetailsFragment$3;,
        Landroid/support/v17/leanback/app/DetailsFragment$4;,
        Landroid/support/v17/leanback/app/DetailsFragment$5;,
        Landroid/support/v17/leanback/app/DetailsFragment$6;,
        Landroid/support/v17/leanback/app/DetailsFragment$7;,
        Landroid/support/v17/leanback/app/DetailsFragment$8;,
        Landroid/support/v17/leanback/app/DetailsFragment$9;,
        Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field final EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mBackgroundView:Landroid/view/View;

.field mContainerListAlignTop:I

.field mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

.field mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

.field mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field final mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFocusOnVideo:Z

.field mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

.field mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSceneAfterEntranceTransition:Ljava/lang/Object;

.field final mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

.field mVideoFragment:Landroid/app/Fragment;

.field mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v17/leanback/app/DetailsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseFragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$1;

    const-string/jumbo v1, "STATE_SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$1;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string/jumbo v1, "STATE_ENTER_TRANSIITON_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$2;

    const-string/jumbo v1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    invoke-direct {v0, p0, v1, v3, v3}, Landroid/support/v17/leanback/app/DetailsFragment$2;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$3;

    const-string/jumbo v1, "STATE_ENTER_TRANSITION_CANCEL"

    invoke-direct {v0, p0, v1, v3, v3}, Landroid/support/v17/leanback/app/DetailsFragment$3;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string/jumbo v1, "STATE_ENTER_TRANSIITON_COMPLETE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$4;

    const-string/jumbo v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$4;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$5;

    const-string/jumbo v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$5;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$6;

    const-string/jumbo v1, "STATE_ON_SAFE_START"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$6;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onStart"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "EVT_NO_ENTER_TRANSITION"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onFirstRowLoaded"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onEnterTransitionDone"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "switchToVideo"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$7;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$8;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    iput-boolean v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$9;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_details_enter_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 4

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/app/DetailsFragment$12;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsFragment$12;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    return-object v2
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    goto :goto_0
.end method

.method protected inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_rows_align_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mContainerListAlignTop:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_background_view:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$10;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$10;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->setupDpadNavigation()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$11;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    return-object v0
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionEnd()V

    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionStart()V

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onReturnTransitionStart()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->disableVideoParallax()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iput-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    :cond_0
    return-void
.end method

.method onRowSelected(II)V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v6

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    :goto_0
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-le v0, p1, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    invoke-virtual {v9, v10}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/app/DetailsFragment;->onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method onSafeStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onStart()V

    :cond_0
    return-void
.end method

.method protected onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :goto_0
    return-void

    :cond_0
    if-ne p4, p3, :cond_1

    if-ne p5, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    :cond_1
    if-ne p4, p3, :cond_2

    if-nez p5, :cond_2

    invoke-virtual {p1, p2, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0
.end method

.method protected onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V
    .locals 6

    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-object v2, p2

    check-cast v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v17/leanback/app/DetailsFragment;->onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStart()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->setupChildFragmentLayout()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onStop()V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStop()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mContainerListAlignTop:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {p1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method setupDpadNavigation()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$13;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$13;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$14;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$14;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$15;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$15;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method slideInGridView()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateIn()V

    :cond_0
    return-void
.end method

.method slideOutGridView()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateOut()V

    :cond_0
    return-void
.end method

.method switchToVideo()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    goto :goto_0
.end method

.method switchToVideoBeforeVideoFragmentCreated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->switchToVideoBeforeCreate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    return-void
.end method
