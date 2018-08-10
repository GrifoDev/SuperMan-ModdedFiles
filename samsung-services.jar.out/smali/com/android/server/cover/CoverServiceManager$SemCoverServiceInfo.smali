.class Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;
.super Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemCoverServiceInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->this$0:Lcom/android/server/cover/CoverServiceManager;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/cover/CoverServiceManager$CoverServiceInfo;-><init>(Lcom/android/server/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/IBinder;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/cover/ICoverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverService;

    move-result-object v0

    return-object v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 4

    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverAppStateChanged : covered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverService;->onCoverAppCovered(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method systemReady()V
    .locals 4

    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "systemReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CoverServiceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/CoverServiceManager$SemCoverServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lcom/samsung/android/cover/ICoverService;

    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverService;->onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
