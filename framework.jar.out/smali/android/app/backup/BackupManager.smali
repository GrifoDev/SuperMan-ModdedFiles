.class public Landroid/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;,
        Landroid/app/backup/BackupManager$BackupObserverWrapper;,
        Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;
    }
.end annotation


# static fields
.field public static final ERROR_AGENT_FAILURE:I = -0x3eb

.field public static final ERROR_BACKUP_CANCELLED:I = -0x7d3

.field public static final ERROR_BACKUP_NOT_ALLOWED:I = -0x7d1

.field public static final ERROR_PACKAGE_NOT_FOUND:I = -0x7d2

.field public static final ERROR_TRANSPORT_ABORTED:I = -0x3e8

.field public static final ERROR_TRANSPORT_INVALID:I = -0x2

.field public static final ERROR_TRANSPORT_PACKAGE_REJECTED:I = -0x3ea

.field public static final ERROR_TRANSPORT_QUOTA_EXCEEDED:I = -0x3ed

.field public static final ERROR_TRANSPORT_UNAVAILABLE:I = -0x1

.field public static final EXTRA_BACKUP_SERVICES_AVAILABLE:Ljava/lang/String; = "backup_services_available"

.field public static final FLAG_NON_INCREMENTAL_BACKUP:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BackupManager"

.field private static sService:Landroid/app/backup/IBackupManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkServiceBinder()V
    .locals 1

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    sput-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    :cond_0
    return-void
.end method

.method public static dataChanged(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p0}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "dataChanged(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public backupNow()V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public beginRestoreSession()Landroid/app/backup/RestoreSession;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/app/backup/RestoreSession;

    iget-object v4, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v4, "BackupManager"

    const-string/jumbo v5, "beginRestoreSession() couldn\'t connect"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelBackups()V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->cancelBackups()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "cancelBackups() couldn\'t connect."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dataChanged()V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "dataChanged() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->getAvailableRestoreToken(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "getAvailableRestoreToken() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "getCurrentTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->isAppEligibleForBackup(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "isAppEligibleForBackup(pkg) couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isBackupEnabled()Z
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "isBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSubUserSupported()Z
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isSubUserSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "isSubUserSupported() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "listAllTransports() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/backup/BackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/BackupObserver;Landroid/app/backup/BackupManagerMonitor;I)I
    .locals 5

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v3, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v3, :cond_2

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    sget-object v3, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, p1, v2, v1, p4}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v3

    return v3

    :cond_0
    new-instance v2, Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v3, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2}, Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;

    invoke-direct {v1, p0, p3}, Landroid/app/backup/BackupManager$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/app/backup/BackupManagerMonitor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "BackupManager"

    const-string/jumbo v4, "requestBackup() couldn\'t connect"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public requestRestore(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 8

    const/4 v2, -0x1

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :try_start_0
    sget-object v5, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    iget-object v6, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/app/backup/RestoreSession;

    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/app/backup/RestoreSession;-><init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1, p2}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v3, v4

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string/jumbo v5, "BackupManager"

    const-string/jumbo v6, "restoreSelf() unable to contact service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    :cond_2
    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "selectBackupTransport() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3
.end method

.method public selectBackupTransport(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 4

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, p1, v1}, Landroid/app/backup/IBackupManager;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;

    iget-object v2, p0, Landroid/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2}, Landroid/app/backup/BackupManager$SelectTransportListenerWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/SelectBackupTransportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BackupManager"

    const-string/jumbo v3, "selectBackupTransportAsync() couldn\'t connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public semBackupPackage(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/backup/IBackupManager;->fullBackupEx(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "could not get backup service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semBackupPackageAsUser(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/backup/IBackupManager;->semBackupPackageAsUser(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "BackupManager"

    const-string/jumbo v1, "could not get backup service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public semRestorePackage(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupManager;->fullRestoreEx(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "backupNow() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "could not get backup service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public semRestorePackageAsUser(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)Z
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/backup/IBackupManager;->semRestorePackageAsUser(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "could not get backup service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAutoRestore(Z)V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "setAutoRestore() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackupEnabled(Z)V
    .locals 3

    invoke-static {}, Landroid/app/backup/BackupManager;->checkServiceBinder()V

    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Landroid/app/backup/BackupManager;->sService:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BackupManager"

    const-string/jumbo v2, "setBackupEnabled() couldn\'t connect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
