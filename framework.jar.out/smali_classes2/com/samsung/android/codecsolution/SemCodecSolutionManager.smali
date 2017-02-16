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
    .param p1, "service"    # Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    .line 26
    if-nez p1, :cond_0

    .line 27
    const-string/jumbo v0, "CodecSolutionManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ICodecSolutionManagerService) is null"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    .line 25
    return-void
.end method


# virtual methods
.method public debug()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->debug()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmartFittingMode()I
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->getSmartFittingMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    const/4 v1, -0x1

    return v1
.end method

.method public setMetaData(IIII)V
    .locals 2
    .param p1, "maxAvgLight"    # I
    .param p2, "maxContentLight"    # I
    .param p3, "maxDispL"    # I
    .param p4, "minDispL"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->setMhdrMetaData(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setSmartFittingMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->setSmartFittingMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startMhdrService(ILjava/lang/String;)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "vendor"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->startMhdrService(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startSmartFittingService(I)V
    .locals 2
    .param p1, "blackBarState"    # I

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1, p1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->startSmartFittingService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMhdrService()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->stopMhdrService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopSmartFittingService()V
    .locals 2

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/codecsolution/SemCodecSolutionManager;->mService:Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    invoke-interface {v1}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;->stopSmartFittingService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
