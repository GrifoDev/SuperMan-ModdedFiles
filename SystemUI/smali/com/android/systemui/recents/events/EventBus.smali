.class public Lcom/android/systemui/recents/events/EventBus;
.super Landroid/content/BroadcastReceiver;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/events/EventBus$1;,
        Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;,
        Lcom/android/systemui/recents/events/EventBus$Event;,
        Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;,
        Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
    }
.end annotation


# static fields
.field private static final EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mEventTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/EventBus$Event;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInterprocessEventNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriberTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/EventHandlerMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/events/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/events/EventBus$1;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/EventBus$1;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private findRegisteredSubscriber(Ljava/lang/Object;Z)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static getDefault()Lcom/android/systemui/recents/events/EventBus;
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/systemui/recents/events/EventBus;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/events/EventBus;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/events/EventBus;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->sDefaultBus:Lcom/android/systemui/recents/events/EventBus;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/util/MutableBoolean;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length v1, p2

    if-ne v1, v4, :cond_1

    const-class v1, Lcom/android/systemui/recents/events/EventBus$InterprocessEvent;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onInterprocessBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p3, Landroid/util/MutableBoolean;->value:Z

    return v4

    :cond_0
    const-class v1, Lcom/android/systemui/recents/events/EventBus$Event;

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBusEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p3, Landroid/util/MutableBoolean;->value:Z

    return v4

    :cond_1
    return v3
.end method

.method private static logWithPid(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "EventBus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 8

    iget-boolean v3, p2, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "Event dispatch cancelled"

    invoke-static {v3}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-boolean v3, p2, Lcom/android/systemui/recents/events/EventBus$Event;->trace:Z

    if-nez v3, :cond_2

    :goto_1
    iget-object v3, p1, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v3}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const-wide/16 v4, 0x0

    iget-object v3, p1, Lcom/android/systemui/recents/events/EventHandler;->method:Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/recents/events/EventHandlerMethod;->invoke(Ljava/lang/Object;Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_2
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventHandler;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/recents/events/EventBus;->logWithPid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventBus"

    const-string/jumbo v6, "Failed to invoke method"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    :try_start_1
    const-string/jumbo v3, "EventBus"

    const-string/jumbo v6, "Failed to deliver event to null subscriber"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPreDispatch()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v5, v0, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v5}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/EventBus$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/systemui/recents/events/EventBus$4;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/events/EventBus;->processEvent(Lcom/android/systemui/recents/events/EventHandler;Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/events/EventBus$5;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/recents/events/EventBus$5;-><init>(Lcom/android/systemui/recents/events/EventBus;Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    goto :goto_2
.end method

.method private registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V
    .locals 26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v22

    cmp-long v19, v4, v22

    if-eqz v19, :cond_0

    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Can not register() a subscriber from a non-main thread."

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    return-void

    :cond_1
    const-wide/16 v20, 0x0

    new-instance v16, Lcom/android/systemui/recents/events/Subscriber;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/events/Subscriber;-><init>(Ljava/lang/Object;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v12, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    new-instance v19, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mSubscribers:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Landroid/util/MutableBoolean;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v14

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v22, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v11, v14, v19

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15, v10}, Lcom/android/systemui/recents/events/EventBus;->isValidEventBusHandlerMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;Landroid/util/MutableBoolean;)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x0

    aget-object v7, v15, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-boolean v0, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    :try_start_0
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const-class v24, Landroid/os/Bundle;

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/util/MutableBoolean;->value:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    new-instance v12, Lcom/android/systemui/recents/events/EventHandlerMethod;

    invoke-direct {v12, v11, v7}, Lcom/android/systemui/recents/events/EventHandlerMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    new-instance v9, Lcom/android/systemui/recents/events/EventHandler;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-direct {v9, v0, v12, v1}, Lcom/android/systemui/recents/events/EventHandler;-><init>(Lcom/android/systemui/recents/events/Subscriber;Lcom/android/systemui/recents/events/EventHandlerMethod;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/recents/events/EventBus;->sortEventHandlersByPriority(Ljava/util/List;)V

    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Expected InterprocessEvent to have a Bundle constructor"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_7
    return-void
.end method

.method private sortEventHandlersByPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/events/EventHandler;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/recents/events/EventBus;->EVENT_HANDLER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->dumpInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Registered class types:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lcom/android/systemui/recents/events/EventBus$2;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/EventBus$2;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v10, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_0

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Event map:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Lcom/android/systemui/recents/events/EventBus$3;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/events/EventBus$3;-><init>(Lcom/android/systemui/recents/events/EventBus;)V

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, " -> "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v12, v2, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v12}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, " [0x"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v2, Lcom/android/systemui/recents/events/EventHandler;->priority:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v4, "interprocess_event_bundle"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/events/EventBus;->mInterprocessEventNameMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "EventBus"

    const-string/jumbo v5, "Failed to create InterprocessEvent"

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/events/EventBus;->registerSubscriber(Ljava/lang/Object;ILandroid/util/MutableBoolean;)V

    return-void
.end method

.method public send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Can not send() a message from a non-main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-boolean v4, p1, Lcom/android/systemui/recents/events/EventBus$Event;->requiresPost:Z

    iput-boolean v4, p1, Lcom/android/systemui/recents/events/EventBus$Event;->cancelled:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->queueEvent(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Can not unregister() a subscriber from a non-main thread."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/recents/events/EventBus;->findRegisteredSubscriber(Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mSubscriberTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/events/EventHandlerMethod;

    iget-object v8, p0, Lcom/android/systemui/recents/events/EventBus;->mEventTypeMap:Ljava/util/HashMap;

    iget-object v9, v4, Lcom/android/systemui/recents/events/EventHandlerMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/events/EventHandler;

    iget-object v8, v8, Lcom/android/systemui/recents/events/EventHandler;->subscriber:Lcom/android/systemui/recents/events/Subscriber;

    invoke-virtual {v8}, Lcom/android/systemui/recents/events/Subscriber;->getReference()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method
