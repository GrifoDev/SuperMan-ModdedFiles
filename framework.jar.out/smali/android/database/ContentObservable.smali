.class public Landroid/database/ContentObservable;
.super Landroid/database/Observable;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchChange(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public dispatchChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    return-void
.end method

.method public notifyChange(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public registerObserver(Landroid/database/ContentObserver;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic registerObserver(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
