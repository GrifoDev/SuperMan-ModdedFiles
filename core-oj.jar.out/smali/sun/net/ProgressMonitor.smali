.class public Lsun/net/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# static fields
.field private static meteringPolicy:Lsun/net/ProgressMeteringPolicy;

.field private static pm:Lsun/net/ProgressMonitor;


# instance fields
.field private progressListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private progressSourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/net/DefaultProgressMeteringPolicy;

    invoke-direct {v0}, Lsun/net/DefaultProgressMeteringPolicy;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    new-instance v0, Lsun/net/ProgressMonitor;

    invoke-direct {v0}, Lsun/net/ProgressMonitor;-><init>()V

    sput-object v0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getDefault()Lsun/net/ProgressMonitor;
    .locals 2

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefault(Lsun/net/ProgressMonitor;)V
    .locals 2

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lsun/net/ProgressMonitor;->pm:Lsun/net/ProgressMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setMeteringPolicy(Lsun/net/ProgressMeteringPolicy;)V
    .locals 2

    const-class v0, Lsun/net/ProgressMonitor;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addProgressListener(Lsun/net/ProgressListener;)V
    .locals 2

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProgressSources()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/net/ProgressSource;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v5, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/net/ProgressSource;

    invoke-virtual {v2}, Lsun/net/ProgressSource;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/net/ProgressSource;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v3

    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public declared-synchronized getProgressUpdateThreshold()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0}, Lsun/net/ProgressMeteringPolicy;->getProgressUpdateThreshold()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerSource(Lsun/net/ProgressSource;)V
    .locals 13

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/ProgressListener;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/net/ProgressListener;

    new-instance v0, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v8

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressStart(Lsun/net/ProgressEvent;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeProgressListener(Lsun/net/ProgressListener;)V
    .locals 2

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lsun/net/ProgressMonitor;->meteringPolicy:Lsun/net/ProgressMeteringPolicy;

    invoke-interface {v0, p1, p2}, Lsun/net/ProgressMeteringPolicy;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unregisterSource(Lsun/net/ProgressSource;)V
    .locals 13

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lsun/net/ProgressSource;->close()V

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_2
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/ProgressListener;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/net/ProgressListener;

    new-instance v0, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v8

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressFinish(Lsun/net/ProgressEvent;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateProgress(Lsun/net/ProgressSource;)V
    .locals 13

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressSourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    monitor-exit v2

    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lsun/net/ProgressMonitor;->progressListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/ProgressListener;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    monitor-exit v2

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/net/ProgressListener;

    new-instance v0, Lsun/net/ProgressEvent;

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getState()Lsun/net/ProgressSource$State;

    move-result-object v5

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getProgress()J

    move-result-wide v6

    invoke-virtual {p1}, Lsun/net/ProgressSource;->getExpected()J

    move-result-wide v8

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lsun/net/ProgressEvent;-><init>(Lsun/net/ProgressSource;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Lsun/net/ProgressSource$State;JJ)V

    invoke-interface {v12, v0}, Lsun/net/ProgressListener;->progressUpdate(Lsun/net/ProgressEvent;)V

    goto :goto_1

    :cond_2
    return-void
.end method
