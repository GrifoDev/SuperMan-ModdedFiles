.class public abstract Landroid/telecom/Conference$Listener;
.super Ljava/lang/Object;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 49
    return-void
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 55
    return-void
.end method

.method public onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connectionProperties"    # I

    .prologue
    .line 57
    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 50
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 53
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 48
    return-void
.end method

.method public onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 61
    return-void
.end method

.method public onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Conference;II)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 60
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 59
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Conference;I)V
    .locals 0
    .param p1, "c"    # Landroid/telecom/Conference;
    .param p2, "videoState"    # I

    .prologue
    .line 58
    return-void
.end method
