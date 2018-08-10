.class public Landroid/support/v17/leanback/util/StateMachine$State;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field final mBranchEnd:Z

.field final mBranchStart:Z

.field mIncomings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/util/StateMachine$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mInvokedOutTransitions:I

.field final mName:Ljava/lang/String;

.field mOutgoings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/util/StateMachine$Transition;",
            ">;"
        }
    .end annotation
.end field

.field mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    iput-boolean p3, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchEnd:Z

    return-void
.end method


# virtual methods
.method addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final checkPreCondition()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchEnd:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    iget v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-eq v2, v3, :cond_1

    return v4

    :cond_2
    return v3

    :cond_3
    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mIncomings:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    iget v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-ne v2, v3, :cond_4

    return v3

    :cond_5
    return v4
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method final runIfNeeded()Z
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->checkPreCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "execute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput v3, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->run()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine$State;->signalAutoTransitionsAfterRun()V

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final signalAutoTransitionsAfterRun()V
    .locals 5

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    iget-object v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v2}, Landroid/support/v17/leanback/util/StateMachine$Condition;->canProceed()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    sget-boolean v2, Landroid/support/v17/leanback/util/StateMachine;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    iget-boolean v2, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v2, :cond_0

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
