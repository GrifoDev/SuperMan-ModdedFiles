.class public Landroid/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Handler$BlockingRunnable;,
        Landroid/os/Handler$Callback;,
        Landroid/os/Handler$MessengerImpl;
    }
.end annotation


# static fields
.field private static final FIND_POTENTIAL_LEAKS:Z = false

.field private static MAIN_THREAD_HANDLER:Landroid/os/Handler; = null

.field private static final TAG:Ljava/lang/String; = "Handler"


# instance fields
.field final mAsynchronous:Z

.field final mCallback:Landroid/os/Handler$Callback;

.field final mLooper:Landroid/os/Looper;

.field mMessenger:Landroid/os/IMessenger;

.field final mQueue:Landroid/os/MessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    iput-object p1, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    iput-boolean p2, p0, Landroid/os/Handler;->mAsynchronous:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    iget-object v0, p1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iput-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    iput-boolean p3, p0, Landroid/os/Handler;->mAsynchronous:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z
    .locals 1

    iput-object p0, p2, Landroid/os/Message;->target:Landroid/os/Handler;

    iget-boolean v0, p0, Landroid/os/Handler;->mAsynchronous:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/MessageQueue;->enqueueMessage(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public static getMain()Landroid/os/Handler;
    .locals 2

    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    :cond_0
    sget-object v0, Landroid/os/Handler;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method private static getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object p0, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static handleCallback(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static mainIfNull(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/Handler;->handleCallback(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final dumpMine(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "looper uninitialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method final getIMessenger()Landroid/os/IMessenger;
    .locals 3

    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler$MessengerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/os/Handler$MessengerImpl;-><init>(Landroid/os/Handler;Landroid/os/Handler$MessengerImpl;)V

    iput-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;

    iget-object v0, p0, Landroid/os/Handler;->mMessenger:Landroid/os/IMessenger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTraceName(Landroid/os/Message;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public final hasCallbacks(Ljava/lang/Runnable;)Z
    .locals 2

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasMessages(I)Z
    .locals 2

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasMessagesOrCallbacks()Z
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->hasMessages(Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 2

    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    invoke-static {p1, p2}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    invoke-static {p1}, Landroid/os/Handler;->getPostMessage(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1}, Landroid/os/MessageQueue;->removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 2

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/MessageQueue;->removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public final runWithScissors(Ljava/lang/Runnable;J)Z
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "runnable must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeout must be non-negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/os/Handler;->mLooper:Landroid/os/Looper;

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    return v1

    :cond_2
    new-instance v0, Landroid/os/Handler$BlockingRunnable;

    invoke-direct {v0, p1}, Landroid/os/Handler$BlockingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0, p2, p3}, Landroid/os/Handler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result v1

    return v1
.end method

.method public final sendEmptyMessage(I)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    return v1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 4

    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Looper"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v2

    return v2
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 4

    iget-object v1, p0, Landroid/os/Handler;->mQueue:Landroid/os/MessageQueue;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sendMessageAtTime() called with no mQueue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Looper"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-direct {p0, v1, p1, p2, p3}, Landroid/os/Handler;->enqueueMessage(Landroid/os/MessageQueue;Landroid/os/Message;J)Z

    move-result v2

    return v2
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Handler ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
