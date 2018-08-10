.class public Lcom/sec/android/cover/neoncover/NeonFSM;
.super Ljava/lang/Object;
.source "NeonFSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;,
        Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverClosed:Z

.field private mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field private mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

.field private mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

.field private mPriorityQue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/neoncover/NeonFSM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processStateChange nextState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No state change, mCurrentState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Prev state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPriorityQue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    return-object v0
.end method

.method public processAlarmStart()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAlarmStart mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    :cond_0
    return-void
.end method

.method public processAlarmStop()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAlarmStop mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->ALARM:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    return-void
.end method

.method public processCalendarStart()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCalendarStart mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    :cond_0
    return-void
.end method

.method public processCalendarStop()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCalendarStop mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALENDAR:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    return-void
.end method

.method public processCallStateChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "callState IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "callState OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "callState RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->CALL:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public processCoverClose()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCoverClose mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " prevState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->-get0(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)I

    move-result v0

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->-get0(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->COVER_CLOSED:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;->onStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    goto :goto_0
.end method

.method public processMessage(II)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processMessage mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCurrentState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    sget-object v1, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    :cond_0
    return-void
.end method

.method public processMessageRemoval()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processMessageRemoval mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->MESSAGE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    return-void
.end method

.method public processTestModeStart()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTimerStart mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    return-void
.end method

.method public processTestModeStop()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTimerStop mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TEST_MODE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    return-void
.end method

.method public processTimerStart()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTimerStart mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processStateChange(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)Z

    :cond_0
    return-void
.end method

.method public processTimerStop()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTimerStop mCoverClosed? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->TIMER:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/neoncover/NeonFSM;->removeState(Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;)V

    return-void
.end method

.method public setCoverClosed(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverClosed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mCoverClosed:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processAlarmStop()V

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processTimerStop()V

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processMessageRemoval()V

    invoke-virtual {p0}, Lcom/sec/android/cover/neoncover/NeonFSM;->processCalendarStop()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mListener:Lcom/sec/android/cover/neoncover/NeonFSM$NeonStateMachineListener;

    return-void
.end method

.method public setPreviousStateToIdle()V
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;->IDLE:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonFSM;->mPreviousState:Lcom/sec/android/cover/neoncover/NeonFSM$NeonState;

    return-void
.end method
