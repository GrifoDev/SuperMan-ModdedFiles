.class public Landroid/support/v17/leanback/app/BaseSupportFragment;
.super Landroid/support/v17/leanback/app/BrandedSupportFragment;
.source "BaseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BaseSupportFragment$1;,
        Landroid/support/v17/leanback/app/BaseSupportFragment$2;,
        Landroid/support/v17/leanback/app/BaseSupportFragment$3;,
        Landroid/support/v17/leanback/app/BaseSupportFragment$4;,
        Landroid/support/v17/leanback/app/BaseSupportFragment$5;
    }
.end annotation


# instance fields
.field final COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

.field final EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

.field mEntranceTransition:Ljava/lang/Object;

.field final mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

.field final mStateMachine:Landroid/support/v17/leanback/util/StateMachine;


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string/jumbo v1, "ENTRANCE_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$1;

    const-string/jumbo v1, "ENTRANCE_ON_PREPARED"

    invoke-direct {v0, p0, v1, v3, v2}, Landroid/support/v17/leanback/app/BaseSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$2;

    const-string/jumbo v1, "ENTRANCE_ON_PREPARED_ON_CREATEVIEW"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$3;

    const-string/jumbo v1, "STATE_ENTRANCE_PERFORM"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$4;

    const-string/jumbo v1, "ENTRANCE_ON_ENDED"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string/jumbo v1, "ENTRANCE_COMPLETE"

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onCreate"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onCreateView"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "prepareEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "startEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string/jumbo v1, "onEntranceTransitionEnd"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$5;

    const-string/jumbo v1, "EntranceTransitionNotSupport"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine;

    invoke-direct {v0}, Landroid/support/v17/leanback/util/StateMachine;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method public final getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method internalCreateEntranceTransition()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createEntranceTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BaseSupportFragment$7;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BaseSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    invoke-virtual {v0}, Landroid/support/v17/leanback/util/StateMachine;->start()V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 0

    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 0

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 0

    return-void
.end method

.method onExecuteEntranceTransition()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/app/BaseSupportFragment$6;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/app/BaseSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
