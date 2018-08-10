.class public abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0

    return-void
.end method

.method public onAudioRouteChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0

    return-void
.end method

.method public onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConferenceStarted()V
    .locals 0

    return-void
.end method

.method public onConferenceSupportedChanged(Landroid/telecom/Connection;Z)V
    .locals 0

    return-void
.end method

.method public onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPostDialChar(Landroid/telecom/Connection;C)V
    .locals 0

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRemoteRttRequest(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0

    return-void
.end method

.method public onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0

    return-void
.end method

.method public onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0

    return-void
.end method
