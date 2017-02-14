.class public Lcom/android/server/pm/state/StateMachine$StateWrapper;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/state/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private allowedTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private stateMachine:Lcom/android/server/pm/state/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private triggerExceptionMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/LinkedHashMap",
            "<TA;TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/state/StateMachine",
            "<TS;TT;TA;>;TS;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    iput-object p2, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$StateWrapper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/state/StateMachine$StateWrapper;-><init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)V

    return-void
.end method

.method private getParent()Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    return-object v0
.end method

.method private isMyChild(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-static {v1, p1}, Lcom/android/server/pm/state/StateMachine;->-wrap0(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-static {v1}, Lcom/android/server/pm/state/StateMachine;->-get0(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-direct {v0}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->getParent()Lcom/android/server/pm/state/StateMachine$StateWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addTrigger(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->allowedTransitions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addTriggerException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TA;TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->triggerExceptionMaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public childOf(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-static {v0, p1}, Lcom/android/server/pm/state/StateMachine;->-wrap0(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/state/StateMachine;->addState(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/state/StateMachine$StateWrapper;->isMyChild(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine;->-get0(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    :cond_1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iget-object v0, p1, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/state/StateMachine$StateWrapper;->state:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
