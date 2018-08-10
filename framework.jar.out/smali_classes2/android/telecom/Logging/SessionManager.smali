.class public Landroid/telecom/Logging/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Logging/SessionManager$ICurrentThreadId;,
        Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;,
        Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;,
        Landroid/telecom/Logging/SessionManager$ISessionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SESSION_TIMEOUT_MS:J = 0x7530L

.field private static final LOGGING_TAG:Ljava/lang/String; = "Logging"

.field private static final SESSION_ID_ROLLOVER_THRESHOLD:J = 0x40000L

.field private static final TIMEOUTS_PREFIX:Ljava/lang/String; = "telecom."


# instance fields
.field public mCleanStaleSessions:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

.field private mSessionCleanupHandler:Landroid/os/Handler;

.field private mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

.field private mSessionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Logging/SessionManager$ISessionListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telecom/Logging/Session;",
            ">;"
        }
    .end annotation
.end field

.field private sCodeEntryCounter:I


# direct methods
.method static synthetic -android_telecom_Logging_SessionManager-mthref-0()I
    .locals 1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24$2;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24;

    invoke-direct {v0}, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    new-instance v0, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24$1;

    invoke-direct {v0, p0}, Landroid/telecom/Logging/-$Lambda$OwO3BlCgqcOx28O1BaOAPVPor24$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized createSubsession(Z)Landroid/telecom/Logging/Session;
    .locals 9

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/Logging/Session;

    if-nez v8, :cond_0

    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "Log.createSubsession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_0
    :try_start_1
    new-instance v1, Landroid/telecom/Logging/Session;

    invoke-virtual {v8}, Landroid/telecom/Logging/Session;->getNextChildId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    move v6, p1

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/telecom/Logging/Session;->addChild(Landroid/telecom/Logging/Session;)V

    invoke-virtual {v1, v8}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    if-nez p1, :cond_1

    const-string/jumbo v2, "Logging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CREATE_SUBSESSION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "CREATE_SUBSESSION (Invisible subsession)"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private endParentSessions(Landroid/telecom/Logging/Session;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getChildSessions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v4}, Landroid/telecom/Logging/Session;->setParentSession(Landroid/telecom/Logging/Session;)V

    invoke-virtual {v2, p1}, Landroid/telecom/Logging/Session;->removeChild(Landroid/telecom/Logging/Session;)V

    invoke-virtual {v2}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v6

    sub-long v0, v4, v6

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    :cond_2
    invoke-direct {p0, v2}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-string/jumbo v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "END_SESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isExternal()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getShortMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0, v1}, Landroid/telecom/Logging/SessionManager;->notifySessionCompleteListeners(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private getBase64Encoding(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCallingThreadId()I
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCurrentThreadId:Landroid/telecom/Logging/SessionManager$ICurrentThreadId;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ICurrentThreadId;->get()I

    move-result v0

    return v0
.end method

.method private getCleanupTimeout(Landroid/content/Context;)J
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "telecom.stale_session_cleanup_timeout_millis"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized getNextSessionID()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/32 v4, 0x40000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->restartSessionCounter()V

    iget v1, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telecom/Logging/SessionManager;->getBase64Encoding(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getSessionCleanupTimeoutMs()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupTimeoutMs:Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;

    invoke-interface {v0}, Landroid/telecom/Logging/SessionManager$ISessionCleanupTimeoutMs;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private notifySessionCompleteListeners(Ljava/lang/String;J)V
    .locals 4

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/SessionManager$ISessionListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/telecom/Logging/SessionManager$ISessionListener;->sessionComplete(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized resetStaleSessionTimer()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionCleanupHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mCleanStaleSessions:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized restartSessionCounter()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/telecom/Logging/SessionManager;->sCodeEntryCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelSubsession(Landroid/telecom/Logging/Session;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    invoke-direct {p0, p1}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanupStaleSessions(J)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string/jumbo v5, "Stale Sessions Cleaned:\n"

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v7, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/Logging/Session;

    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->getExecutionStartTimeMilliseconds()J

    move-result-wide v8

    sub-long v8, v0, v8

    cmp-long v7, v8, p1

    if-lez v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/telecom/Logging/Session;->printFullSessionTree()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v7, "Logging"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v5, v8}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v7, "Logging"

    const-string/jumbo v8, "No stale logging sessions needed to be cleaned..."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    invoke-virtual {p1, p2}, Landroid/telecom/Logging/Session;->setShortMethodName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/telecom/Logging/Session;->setExecutionStartTimeMs(J)V

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "Logging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Log.continueSession was called with no session active for method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Logging"

    const-string/jumbo v2, "CONTINUE_SUBSESSION"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v1, "Logging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CONTINUE_SUBSESSION (Invisible Subsession) with Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public createSubsession()Landroid/telecom/Logging/Session;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endSession()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v2

    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    if-nez v0, :cond_0

    const-string/jumbo v3, "Logging"

    const-string/jumbo v4, "Log.endSession was called with no session active."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "END_SUBSESSION (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mS)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getParentSession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->endParentSessions(Landroid/telecom/Logging/Session;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->isSessionCompleted()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->isStartedFromActiveSession()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v3, "Logging"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "END_SUBSESSION (Invisible Subsession) (dur: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->getLocalExecutionTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getExternalSession()Landroid/telecom/Logging/Session$Info;
    .locals 6

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v0

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Logging/Session;

    if-nez v1, :cond_0

    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "Log.getExternalSession was called with no session active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telecom/Logging/Session;->getInfo()Landroid/telecom/Logging/Session$Info;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/Logging/Session;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method synthetic lambda$-android_telecom_Logging_SessionManager_1888()V
    .locals 2

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getSessionCleanupTimeoutMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/telecom/Logging/SessionManager;->cleanupStaleSessions(J)V

    return-void
.end method

.method synthetic lambda$-android_telecom_Logging_SessionManager_2450()J
    .locals 2

    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/telecom/Logging/SessionManager;->getCleanupTimeout(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized registerSessionListener(Landroid/telecom/Logging/SessionManager$ISessionListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/telecom/Logging/SessionManager;->mSessionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Logging/SessionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v8

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/Logging/Session;

    if-eqz v9, :cond_1

    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "trying to start an external session with a session already active."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "START_EXTERNAL_SESSION"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/telecom/Logging/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "E-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telecom/Logging/Session;->setIsExternal(Z)V

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/telecom/Logging/Session;->markSessionCompleted(J)V

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/telecom/Logging/SessionManager;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/telecom/Logging/SessionManager;->startSession(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Logging/SessionManager;->startExternalSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->resetStaleSessionTimer()V

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getCallingThreadId()I

    move-result v9

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Logging/Session;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/telecom/Logging/SessionManager;->createSubsession(Z)Landroid/telecom/Logging/Session;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Landroid/telecom/Logging/SessionManager;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "Logging"

    const-string/jumbo v3, "START_SESSION"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/telecom/Logging/Session;

    invoke-direct {p0}, Landroid/telecom/Logging/SessionManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Logging/Session;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;)V

    iget-object v2, p0, Landroid/telecom/Logging/SessionManager;->mSessionMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
