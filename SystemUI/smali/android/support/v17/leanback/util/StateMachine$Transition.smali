.class Landroid/support/v17/leanback/util/StateMachine$Transition;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Transition"
.end annotation


# instance fields
.field final mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

.field final mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

.field mState:I

.field final mToState:Landroid/support/v17/leanback/util/StateMachine$State;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iput-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iput-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iget-object v0, v1, Landroid/support/v17/leanback/util/StateMachine$Event;->mName:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    iget-object v0, v1, Landroid/support/v17/leanback/util/StateMachine$Condition;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "auto"

    goto :goto_0
.end method
