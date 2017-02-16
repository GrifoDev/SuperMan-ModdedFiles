.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 688
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    .line 679
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1184
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 682
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    .line 685
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 694
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-direct {v0, v1}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$LogRecords;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    .line 703
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 712
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    .line 715
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1185
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 1187
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1188
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1183
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 6
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    const/4 v5, 0x0

    .line 1147
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    .line 1148
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1149
    if-nez p2, :cond_3

    const-string/jumbo v2, ""

    .line 1148
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1151
    :cond_0
    const/4 v0, 0x0

    .line 1152
    .local v0, "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_1

    .line 1153
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1154
    .local v0, "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_1

    .line 1156
    invoke-direct {p0, p2, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1159
    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1160
    .local v1, "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_2

    .line 1161
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 1162
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_2
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_4

    .line 1167
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_4

    .line 1168
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1149
    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1170
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_4
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1171
    iput-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1172
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1173
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1174
    :cond_5
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 914
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->-get0(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 917
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->-set1(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->-set0(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    .line 921
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 922
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 923
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    .line 924
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 925
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 926
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 927
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 928
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 929
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    .line 913
    return-void
.end method

.method private final completeConstruction()V
    .locals 8

    .prologue
    .line 937
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v6, "completeConstruction: E"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 943
    :cond_0
    const/4 v2, 0x0

    .line 944
    .local v2, "maxDepth":I
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "si$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 945
    .local v3, "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .line 946
    .local v0, "depth":I
    move-object v1, v3

    .local v1, "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :goto_1
    if-eqz v1, :cond_2

    .line 947
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 949
    :cond_2
    if-ge v2, v0, :cond_1

    .line 950
    move v2, v0

    goto :goto_0

    .line 953
    .end local v0    # "depth":I
    .end local v1    # "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v3    # "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 955
    :cond_4
    new-array v5, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 956
    new-array v5, v2, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 957
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 960
    sget-object v5, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    const/4 v6, -0x2

    invoke-virtual {p0, v6, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 962
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v6, "completeConstruction: X"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 936
    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1205
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1208
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1209
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1211
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4
    .param p1, "stateStackEnteringIndex"    # I

    .prologue
    .line 1019
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_1

    .line 1020
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1021
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    .line 1022
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 5
    .param p1, "commonStateInfo"    # Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .prologue
    const/4 v4, 0x0

    .line 1005
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1008
    .local v0, "curState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1009
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    .line 1010
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iput-boolean v4, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1011
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 1004
    .end local v0    # "curState":Lcom/android/internal/util/State;
    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1228
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    .prologue
    .line 1036
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1037
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1038
    .local v0, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1039
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1036
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1041
    .end local v0    # "curMsg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1029
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    .prologue
    .line 1052
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 1053
    .local v2, "startingIndex":I
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .line 1054
    .local v0, "i":I
    move v1, v2

    .line 1055
    .local v1, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1056
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1057
    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 1058
    add-int/lit8 v1, v1, 0x1

    .line 1059
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1062
    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1063
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    .line 1064
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1065
    const-string/jumbo v5, ",startingIndex="

    .line 1064
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1065
    const-string/jumbo v5, ",Top="

    .line 1064
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1066
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1064
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1068
    :cond_2
    return v2
.end method

.method private performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V
    .locals 12
    .param p1, "msgProcessedState"    # Lcom/android/internal/util/State;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 830
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v5, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 837
    .local v5, "orgState":Lcom/android/internal/util/State;
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    const/4 v9, 0x1

    .line 839
    .local v9, "recordLogMsg":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 841
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 843
    iget-object v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v4, p1

    .line 842
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 851
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 852
    .local v8, "destState":Lcom/android/internal/util/State;
    if-eqz v8, :cond_5

    .line 857
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v1, "handleMessage: new destination call exit/enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 864
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v7

    .line 865
    .local v7, "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v7}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v10

    .line 867
    .local v10, "stateStackEnteringIndex":I
    invoke-direct {p0, v10}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 875
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    .line 877
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eq v8, v0, :cond_4

    .line 879
    iget-object v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    goto :goto_2

    .line 837
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v8    # "destState":Lcom/android/internal/util/State;
    .end local v9    # "recordLogMsg":Z
    .end local v10    # "stateStackEnteringIndex":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "recordLogMsg":Z
    goto :goto_0

    .line 845
    :cond_3
    if-eqz v9, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    .line 848
    iget-object v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v4, p1

    .line 847
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 885
    .restart local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v8    # "destState":Lcom/android/internal/util/State;
    .restart local v10    # "stateStackEnteringIndex":I
    :cond_4
    iput-object v11, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 892
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v10    # "stateStackEnteringIndex":I
    :cond_5
    if-eqz v8, :cond_6

    .line 893
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne v8, v0, :cond_7

    .line 897
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    .line 898
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    .line 824
    :cond_6
    :goto_3
    return-void

    .line 899
    :cond_7
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne v8, v0, :cond_6

    .line 905
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onHalting()V

    goto :goto_3
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 972
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .line 973
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 977
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 978
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 997
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    :cond_2
    return-object v1

    .line 992
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_4

    .line 993
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 980
    :cond_4
    iget-object v2, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 984
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 985
    if-nez v0, :cond_3

    .line 989
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private final quit()V
    .locals 2

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1217
    :cond_0
    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    return-void
.end method

.method private final quitNow()V
    .locals 2

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1223
    :cond_0
    sget-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1221
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0
    .param p1, "dbg"    # Z

    .prologue
    .line 1238
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 1237
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .locals 3
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1193
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1194
    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 1192
    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 4

    .prologue
    .line 1107
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1112
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_0
    if-eqz v0, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1114
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1112
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_0

    .line 1118
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1120
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1106
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 4
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1089
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1090
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1092
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1093
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1094
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    .line 1096
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1098
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1097
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1098
    const-string/jumbo v3, ",curStateInfo: "

    .line 1097
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1100
    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 3
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1199
    check-cast p1, Lcom/android/internal/util/State;

    .end local p1    # "destState":Lcom/android/internal/util/IState;
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 1200
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1198
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 785
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v1, :cond_3

    .line 786
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v4, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v5, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    .line 790
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: E msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 793
    :cond_1
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 796
    const/4 v0, 0x0

    .line 797
    .local v0, "msgProcessedState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-eqz v1, :cond_4

    .line 799
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;

    move-result-object v0

    .line 809
    .end local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V

    .line 812
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v2, "handleMessage: X"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 814
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v1, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v4, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v5, :cond_3

    .line 815
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    .line 784
    :cond_3
    return-void

    .line 800
    .restart local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_5

    .line 801
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v1, v2, :cond_5

    .line 803
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 804
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_0

    .line 806
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
