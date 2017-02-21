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

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    return v1
.end method

.method public hangupVoIPCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

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

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

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

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

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

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

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

    invoke-static {}, Lcom/samsung/android/voip/SemVoipInterfaceManager;->-get0()Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;->onCommandReceived(I)V

    const/4 v0, 0x1

    return v0
.end method
