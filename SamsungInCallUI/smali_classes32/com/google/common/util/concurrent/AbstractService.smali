.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$6;,
        Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;,
        Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;,
        Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;
    }
.end annotation


# static fields
.field private static final RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPING_FROM_STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_NEW_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final TERMINATED_FROM_STOPPING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field private final monitor:Lcom/google/common/util/concurrent/Monitor;

.field private volatile snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$1;

    const-string v1, "starting()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$2;

    const-string v1, "running()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->stoppingCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->stoppingCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->terminatedCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStartableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppableGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$HasReachedRunningGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$IsStoppedGuard;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/Monitor;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    return-object v0
.end method

.method private checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    if-eq v0, p1, :cond_1

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected the service to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the service has FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected the service to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private executeListeners()V
    .locals 2

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ListenerCallQueue;->execute()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$5;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed({from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$5;-><init>(Lcom/google/common/util/concurrent/AbstractService;Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$5;->enqueueOn(Ljava/lang/Iterable;)V

    return-void
.end method

.method private running()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    return-void
.end method

.method private starting()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    return-void
.end method

.method private stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_STARTING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->STOPPING_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static stoppingCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopping({from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractService$4;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_NEW_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    :goto_0
    return-void

    :pswitch_2
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_RUNNING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->TERMINATED_FROM_STOPPING_CALLBACK:Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->enqueueOn(Ljava/lang/Iterable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static terminatedCallback(Lcom/google/common/util/concurrent/Service$State;)Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Callback",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminated({from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractService$3;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->isTerminal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->listeners:Ljava/util/List;

    new-instance v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/ListenerCallQueue;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitRunning()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->hasReachedRunning:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reach the RUNNING state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final awaitTerminated()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->isStopped:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->checkCurrentState(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reach a terminal state. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed while in state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/AbstractService;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final notifyStarted()V
    .locals 3

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v2, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-boolean v1, v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->running()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final notifyStopped()V
    .locals 4

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    :try_start_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    iget-object v1, v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lcom/google/common/util/concurrent/Service$State;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot notifyStopped() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v2

    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->terminated(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->isStartable:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->starting()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;->externalState()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 6

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->isStoppable:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v2, Lcom/google/common/util/concurrent/AbstractService$6;->$SwitchMap$com$google$common$util$concurrent$Service$State:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    :cond_0
    :goto_0
    return-object p0

    :pswitch_0
    :try_start_2
    new-instance v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractService;->terminated(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    goto :goto_0

    :pswitch_1
    :try_start_3
    new-instance v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractService;->stopping(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractService;->monitor:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->executeListeners()V

    throw v2

    :pswitch_2
    :try_start_4
    new-instance v2, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->snapshot:Lcom/google/common/util/concurrent/AbstractService$StateSnapshot;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractService;->stopping(Lcom/google/common/util/concurrent/Service$State;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_1

    :pswitch_3
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
