.class public Lcom/samsung/android/mateservice/MateService;
.super Lcom/samsung/android/mateservice/IMateService$Stub;
.source "MateService.java"

# interfaces
.implements Lcom/samsung/android/mateservice/MateSvcBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "Main"


# instance fields
.field private final mAccessMgr:Lcom/samsung/android/mateservice/AccessMgr;

.field private final mAccessoryMgr:Lcom/samsung/android/mateservice/AccessoryMgr;

.field private final mActionAgentSvcRelay:Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;

.field private final mContext:Landroid/content/Context;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/mateservice/action/ActionBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/mateservice/IMateService$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/mateservice/AccessMgr;

    invoke-direct {v1, p1}, Lcom/samsung/android/mateservice/AccessMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mAccessMgr:Lcom/samsung/android/mateservice/AccessMgr;

    new-instance v1, Lcom/samsung/android/mateservice/AccessoryMgr;

    invoke-direct {v1}, Lcom/samsung/android/mateservice/AccessoryMgr;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mAccessoryMgr:Lcom/samsung/android/mateservice/AccessoryMgr;

    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isRoDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/samsung/android/mateservice/HistoryMgr;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/samsung/android/mateservice/HistoryMgr;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mExecutes:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/MateSvcBase;)V

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mActionAgentSvcRelay:Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mExecutes:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;

    invoke-direct {v2, p1, p0}, Lcom/samsung/android/mateservice/action/ActionAccessoryStateChanged;-><init>(Landroid/content/Context;Lcom/samsung/android/mateservice/MateSvcBase;)V

    const v3, 0x110001

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mExecutes:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/mateservice/action/ActionGetAccessory;

    invoke-direct {v2, p0}, Lcom/samsung/android/mateservice/action/ActionGetAccessory;-><init>(Lcom/samsung/android/mateservice/MateSvcBase;)V

    const v3, 0x120001

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    goto :goto_0
.end method


# virtual methods
.method public varargs appendHistory(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/mateservice/HistoryMgr;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs appendHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mateservice/HistoryMgr;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "Main"

    const-string/jumbo v2, "dump"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Main"

    const-string/jumbo v2, "permission denied - pid[%d] uid[%d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/mateservice/MateLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/mateservice/MateService;->getDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/MateService;->mAccessMgr:Lcom/samsung/android/mateservice/AccessMgr;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/mateservice/AccessMgr;->isAccessible(II)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Main"

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/mateservice/MateService;->throwSecurityException(ILjava/lang/String;)V

    return-object v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/MateService;->mExecutes:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/samsung/android/mateservice/MateService;->mActionAgentSvcRelay:Lcom/samsung/android/mateservice/action/ActionAgentSvcRelay;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mateservice/action/ActionBase;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p1}, Lcom/samsung/android/mateservice/action/ActionBase;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isDebugLogLevel()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->isRoDebugLevelMid()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    instance-of v2, v0, Landroid/os/RemoteException;

    if-eqz v2, :cond_3

    throw v0

    :cond_3
    return-object v4
.end method

.method public getAccessoryMgr()Lcom/samsung/android/mateservice/AccessoryMgr;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mateservice/MateService;->mAccessoryMgr:Lcom/samsung/android/mateservice/AccessoryMgr;

    return-object v0
.end method

.method getDump()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "************************************************************************\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "productDev: %s / logLevel: %d  / safeString: %s\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->logLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Lcom/samsung/android/mateservice/MateLog;->useSafeString()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mAccessoryMgr:Lcom/samsung/android/mateservice/AccessoryMgr;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mateservice/AccessoryMgr;->getDump(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/mateservice/MateService;->mHistoryMgr:Lcom/samsung/android/mateservice/HistoryMgr;

    invoke-virtual {v1, v0}, Lcom/samsung/android/mateservice/HistoryMgr;->getDump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const-string/jumbo v1, "\n************************************************************************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    const-string/jumbo v0, "Main"

    const-string/jumbo v1, "systemReady!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/MateLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public throwSecurityException(ILjava/lang/String;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v3, "Main"

    const-string/jumbo v4, "illegal access: uid[%d] / pid[%d] / %d / %s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v9

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    const/4 v6, 0x3

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/samsung/android/mateservice/MateLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "%s: reason(%d)"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p2, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method
