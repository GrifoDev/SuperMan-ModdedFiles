.class public Lcom/samsung/android/share/executor/CommandObserver;
.super Ljava/util/Observable;
.source "CommandObserver.java"


# static fields
.field private static final instance:Lcom/samsung/android/share/executor/CommandObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/CommandObserver;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/CommandObserver;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/CommandObserver;->instance:Lcom/samsung/android/share/executor/CommandObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/share/executor/CommandObserver;
    .locals 1

    sget-object v0, Lcom/samsung/android/share/executor/CommandObserver;->instance:Lcom/samsung/android/share/executor/CommandObserver;

    return-object v0
.end method


# virtual methods
.method public notify(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/share/executor/CommandObserver;->setChanged()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/executor/CommandObserver;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
