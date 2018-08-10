.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;,
        Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;
    }
.end annotation


# instance fields
.field private final mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

.field private final mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

.field private final mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->quit()V

    return-void
.end method
