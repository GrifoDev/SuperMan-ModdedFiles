.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$Callback;,
        Landroid/telecom/RemoteConnection$CallbackRecord;,
        Landroid/telecom/RemoteConnection$VideoProvider;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

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

.field private mConnected:Z

.field private mConnectionCapabilities:I

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionProperties:I

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/RemoteConnection;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    iput v5, p0, Landroid/telecom/RemoteConnection;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iput-boolean v5, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mState:I

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v2, v1, p4, p5}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    :goto_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v2

    iput-boolean v2, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v2

    iput v2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    iput-object v6, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iput-object v6, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    goto :goto_0
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1

    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method static synthetic lambda$-android_telecom_RemoteConnection_57520(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic lambda$-android_telecom_RemoteConnection_57881(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/RemoteConnection$Callback;->onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V

    return-void
.end method

.method static synthetic lambda$-android_telecom_RemoteConnection_58248(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method static synthetic lambda$-android_telecom_RemoteConnection_58603(Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection$Callback;->onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V

    return-void
.end method

.method private notifyExtrasChanged()V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$17;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$17;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer(I)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
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

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionProperties()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public hold()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isRingbackRequested()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v6, p0

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Landroid/telecom/RemoteConnection$18;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$18;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onPostDialChar(C)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$8;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRemoteRttRequest()V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8;

    invoke-direct {v5, v0, p0}, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttInitiationFailure(I)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$3;

    invoke-direct {v5, p1, v0, p0}, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttInitiationSuccess()V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$1;

    invoke-direct {v5, v0, p0}, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method onRttSessionRemotelyTerminated()V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$2;

    invoke-direct {v5, v0, p0}, Landroid/telecom/-$Lambda$jt22v7S6acXavRq-_4QCBipXsH8$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public postDialContinue(Z)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pullExternalCall()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
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
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public reject()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

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

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/telecom/RemoteConnection;->notifyExtrasChanged()V

    return-void
.end method

.method public sendRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 6

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionService;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 10

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v6, p0

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Landroid/telecom/RemoteConnection$13;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 10

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v6, p0

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Landroid/telecom/RemoteConnection$14;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v4, p1, :cond_0

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$16;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
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

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$15;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6

    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$4;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setConnectionProperties(I)V
    .locals 6

    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionProperties:I

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$5;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 7

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    new-instance v4, Landroid/telecom/DisconnectCause;

    const-string/jumbo v5, "Connection destroyed."

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :cond_0
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$6;

    invoke-direct {v5, p0, v0, p0}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    :cond_2
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6

    const/4 v5, 0x6

    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v4, v5, :cond_0

    iput v5, p0, Landroid/telecom/RemoteConnection;->mState:I

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$2;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 6

    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$11;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$7;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setRingbackRequested(Z)V
    .locals 6

    iget-boolean v4, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v4, p1, :cond_0

    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$3;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 6

    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v4, p1, :cond_0

    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$1;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 6

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$12;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 6

    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$10;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVideoState(I)V
    .locals 6

    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection$CallbackRecord;

    move-object v1, p0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    invoke-virtual {v2}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$9;

    invoke-direct {v5, p0, v0, p0, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 6

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Connection$RttTextStream;->getFdToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/telecom/IConnectionService;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopRtt()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-virtual {v0}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
