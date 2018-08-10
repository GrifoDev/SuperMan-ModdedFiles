.class public Lcom/samsung/android/codecsolution/SemCodecSolutionManager;
.super Ljava/lang/Object;
.source "SemCodecSolutionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CodecSolutionManager"


# instance fields
.field private mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    if-nez p1, :cond_0

    const-string/jumbo v0, "CodecSolutionManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ICodecSolutionManagerService) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    return-void
.end method


# virtual methods
.method public checkblackbarstatus()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->checkblackbarstatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public debug()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->debug()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmartFittingMode()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->getSmartFittingMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public getWhiteListStatus()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->getWhiteListStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, -0x1

    return v1
.end method

.method public hideSmartFittingButton()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->hideSmartFittingButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportMediaStatisticsEvent(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->reportMediaStatisticsEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSecVideoUseSmartFitting(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->setSecVideoUseSmartFitting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSmartFittingMode(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->setSmartFittingMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setWhiteListStatus(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->setWhiteListStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showSmartFittingButton()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->showSmartFittingButton()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startSmartFittingService()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->startSmartFittingService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopSmartFittingService()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->stopSmartFittingService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateblackbarstatus(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->updateblackbarstatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
