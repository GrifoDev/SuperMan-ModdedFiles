.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0

    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPostDialChar(Landroid/telecom/RemoteConnection;C)V
    .locals 0

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 0

    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 0

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0

    return-void
.end method

.method public onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 0

    return-void
.end method
