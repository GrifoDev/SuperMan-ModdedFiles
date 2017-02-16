.class final Lcom/samsung/android/voip/SemVoipInterfaceManager$1;
.super Landroid/os/IVoIPCallbackInterface$Stub;
.source "SemVoipInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/voip/SemVoipInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/os/IVoIPCallbackInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public answerVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 182
    return v1
.end method

.method public hangupVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public holdVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public moveVoIPToTop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public muteVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public resumeVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method
