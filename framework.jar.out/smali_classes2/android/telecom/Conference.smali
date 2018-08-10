.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$1;,
        Landroid/telecom/Conference$Listener;
    }
.end annotation


# static fields
.field public static final CONNECT_TIME_NOT_SPECIFIED:J = 0x0L

.field static final LOG_TAG:Ljava/lang/String; = "Telecom-Conference"


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Conference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Conference;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method public static can(II)Z
    .locals 2

    const/4 v0, 0x0

    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final clearConferenceableList()V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/Conference;->setState(IZ)V

    return-void
.end method

.method private setState(IZ)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    const-string/jumbo v3, "setState(forced)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_1

    const-string/jumbo v3, "Unsupported state transition for Conference call."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget v2, p0, Landroid/telecom/Conference;->mState:I

    iput p1, p0, Landroid/telecom/Conference;->mState:I

    iget-object v3, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, v2, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1

    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setConnectionCapabilities(I)V

    return-void
.end method

.method public final addConnection(Landroid/telecom/Connection;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "Connection=%s, connection="

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    return v4
.end method

.method public final addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 3

    const-string/jumbo v0, "Telecom-Conference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addListener - listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public can(I)Z
    .locals 1

    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Conference;->can(II)Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "destroying conference : %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    const-string/jumbo v4, "removing connection %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/telecom/Conference;->mState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    const-string/jumbo v4, "setting to disconnected"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v4}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :cond_1
    iget-object v4, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0

    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onHold()V
    .locals 0

    return-void
.end method

.method public onMerge()V
    .locals 0

    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0

    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    return-void
.end method

.method public onSwap()V
    .locals 0

    return-void
.end method

.method public onUnhold()V
    .locals 0

    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v3, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v3}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    return-void
.end method

.method public removeCapability(I)V
    .locals 2

    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    not-int v1, p1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setConnectionCapabilities(I)V

    return-void
.end method

.method public final removeConnection(Landroid/telecom/Connection;)V
    .locals 6

    const-string/jumbo v2, "removing %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    monitor-exit v6

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, p0, v4}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public final removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 3

    const-string/jumbo v0, "Telecom-Conference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeListener - listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final setActive()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    return-void
.end method

.method public final setActiveForcedUpdate()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/telecom/Conference;->setState(IZ)V

    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3

    const-string/jumbo v0, "setCallAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v2, "Telecom-Conference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConferenceableConnections - conferenceableConnections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3

    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v2, :cond_0

    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3

    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v2, :cond_0

    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConnectionTime(J)V
    .locals 1

    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-void
.end method

.method public final setDialing()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3

    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Conference;->setState(I)V

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    :cond_3
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v3, :cond_4

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    :cond_4
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_5

    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v4

    return-void
.end method

.method public final setOnHold()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3

    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5

    const-string/jumbo v2, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setVideoState(Landroid/telecom/Connection;I)V
    .locals 6

    const-string/jumbo v2, "setVideoState Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/telecom/Conference;->mState:I

    invoke-static {v3}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-super {p0}, Landroid/telecom/Conferenceable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
