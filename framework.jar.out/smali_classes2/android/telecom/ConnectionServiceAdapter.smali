.class final Landroid/telecom/ConnectionServiceAdapter;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telecom/IConnectionServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    .line 47
    return-void
.end method


# virtual methods
.method addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 52
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 53
    const-string/jumbo v3, "Ignoring duplicate adapter addition."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void

    .line 57
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_2
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 280
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 282
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 279
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 400
    const-string/jumbo v3, "addExistingConnection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 403
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 399
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telecom/IConnectionServiceAdapter;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 83
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 85
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 79
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    return-void
.end method

.method handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 94
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 96
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 93
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onConferenceMergeFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 234
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v3, "merge failed for call %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 231
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 505
    const-string/jumbo v3, "onConnectionEvent: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 508
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 504
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onPostDialChar(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 266
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 268
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 265
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 259
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 256
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 452
    const-string/jumbo v4, "putExtra: %s %s=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v4, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 455
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    invoke-interface {v0, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 451
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v3    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 471
    const-string/jumbo v4, "putExtra: %s %s=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v4, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 474
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-interface {v0, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 470
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v3    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 433
    const-string/jumbo v4, "putExtra: %s %s=%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    iget-object v4, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 436
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 438
    invoke-interface {v0, p1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 432
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v3    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 416
    const-string/jumbo v3, "putExtras: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 419
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 415
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 293
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Exception trying to query for remote CSs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 69
    .local v0, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 66
    .end local v0    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "it$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method removeCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 250
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 247
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "removeExtras: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 491
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 487
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setActive(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 111
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 108
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 345
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 347
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 344
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 354
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 356
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 353
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "setConferenceableConnections: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 387
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 383
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "capabilities"    # I

    .prologue
    .line 191
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 193
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 190
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setConnectionProperties(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "properties"    # I

    .prologue
    .line 200
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 202
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 199
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setDialing(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 139
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 136
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 153
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 155
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 152
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 219
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v3, "sending connection %s with conference %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 216
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    .line 327
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 329
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 326
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setOnHold(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 169
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 166
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .prologue
    .line 182
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 184
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 181
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setRinging(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 125
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 122
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 336
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 338
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 335
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    const/4 v4, 0x0

    .line 310
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 314
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    if-nez p2, :cond_0

    move-object v3, v4

    .line 312
    :goto_1
    :try_start_0
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 314
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 309
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    return-void
.end method

.method setVideoState(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 374
    const-string/jumbo v3, "setVideoState: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 377
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 373
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method
