.class public final Landroid/telecom/RemoteConference;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConference$Callback;
    }
.end annotation


# instance fields
.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCapabilities:I

.field private mConnectionProperties:I

.field private final mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mState:I

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/RemoteConference;)I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method static synthetic -get1(Landroid/telecom/RemoteConference;)I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    return v0
.end method

.method static synthetic -get2(Landroid/telecom/RemoteConference;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/RemoteConference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/RemoteConference;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-void
.end method

.method private notifyExtrasChanged()V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$9;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$9;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$3;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$3;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    return v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    return v0
.end method

.method public hold()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public merge()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playDtmfTone(C)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method putExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConference;->unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method removeConnection(Landroid/telecom/RemoteConnection;)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$4;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$4;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeExtras(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/telecom/RemoteConference;->notifyExtrasChanged()V

    return-void
.end method

.method public separate(Landroid/telecom/RemoteConnection;)V
    .locals 4

    iget-object v1, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$7;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$7;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6

    iget v4, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    if-eq v4, p1, :cond_0

    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionCapabilities:I

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$5;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$5;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionProperties(I)V
    .locals 6

    iget v4, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    if-eq v4, p1, :cond_0

    iput p1, p0, Landroid/telecom/RemoteConference;->mConnectionProperties:I

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$6;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConference$6;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 8

    iget-object v6, p0, Landroid/telecom/RemoteConference;->mChildConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroid/telecom/RemoteConference$1;

    invoke-direct {v7, p0, v0, p0}, Landroid/telecom/RemoteConference$1;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6

    const/4 v5, 0x6

    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v4, v5, :cond_0

    iput-object p1, p0, Landroid/telecom/RemoteConference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p0, v5}, Landroid/telecom/RemoteConference;->setState(I)V

    iget-object v4, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$8;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConference$8;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 10

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string/jumbo v0, "Unsupported state transition for Conference call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Landroid/telecom/RemoteConference;->mState:I

    if-eq v0, p1, :cond_1

    iget v4, p0, Landroid/telecom/RemoteConference;->mState:I

    iput p1, p0, Landroid/telecom/RemoteConference;->mState:I

    iget-object v0, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/CallbackRecord;

    move-object v6, p0

    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConference$Callback;

    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Landroid/telecom/RemoteConference$2;

    move-object v1, p0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConference$2;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopDtmfTone()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public swap()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConference;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallbackRecord;

    invoke-virtual {v0}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/telecom/RemoteConference;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
