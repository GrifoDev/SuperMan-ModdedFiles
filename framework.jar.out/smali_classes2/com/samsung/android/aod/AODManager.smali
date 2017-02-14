.class public Lcom/samsung/android/aod/AODManager;
.super Ljava/lang/Object;
.source "AODManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AODManager"


# instance fields
.field mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/aod/IAODManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/aod/IAODManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;
    .locals 1

    const-string/jumbo v0, "AODManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/aod/AODManager;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/aod/IAODManager;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "AODManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/aod/IAODManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "AODManager"

    const-string/jumbo v2, "getService fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    return-object v1
.end method


# virtual methods
.method public isAODState()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1}, Lcom/samsung/android/aod/IAODManager;->isAODState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestNotificationKeys()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1}, Lcom/samsung/android/aod/IAODManager;->requestNotificationKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateAODTspRect(IIII)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/aod/IAODManager;->updateAODTspRect(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/aod/IAODManager;->updateNotificationKeys(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "AODManagerService dead?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManager;->getService()Lcom/samsung/android/aod/IAODManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/aod/AODManager;->mService:Lcom/samsung/android/aod/IAODManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/aod/IAODManager;->writeAODCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "AODManagerService dead?"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
