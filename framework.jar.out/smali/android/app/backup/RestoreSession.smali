.class public Landroid/app/backup/RestoreSession;
.super Ljava/lang/Object;
.source "RestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;,
        Landroid/app/backup/RestoreSession$RestoreObserverWrapper;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mBinder:Landroid/app/backup/IRestoreSession;

.field final mContext:Landroid/content/Context;

.field mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iput-object p1, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    return-void
.end method


# virtual methods
.method public endRestoreSession()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v1}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "RestoreSession"

    const-string/jumbo v2, "Can\'t contact server to get available sets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    throw v1
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/RestoreSession;->getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public getAvailableRestoreSets(Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 6

    const/4 v1, -0x1

    new-instance v3, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p1}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    invoke-interface {v4, v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_0
    new-instance v2, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v2, p0, p2}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "RestoreSession"

    const-string/jumbo v5, "Can\'t contact server to get available sets"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/backup/RestoreSession;->restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public restoreAll(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5

    const/4 v1, -0x1

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "restoreAll() called during active restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_0
    new-instance v3, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-nez p4, :cond_1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v3, p1, p2, v4, v2}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_1
    new-instance v2, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v2, p0, p4}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Can\'t contact server to restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I

    move-result v0

    return v0
.end method

.method public restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;)I
    .locals 5

    const/4 v1, -0x1

    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "restorePackage() called during active restore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_0
    new-instance v3, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, p2}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v3, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    invoke-interface {v3, p1, v4, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_1
    new-instance v2, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v2, p0, p3}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RestoreSession"

    const-string/jumbo v4, "Can\'t contact server to restore package"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I
    .locals 9

    const/4 v7, -0x1

    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RestoreSession"

    const-string/jumbo v2, "restoreAll() called during active restore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    new-instance v1, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    iget-object v2, p0, Landroid/app/backup/RestoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p3}, Landroid/app/backup/RestoreSession$RestoreObserverWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/content/Context;Landroid/app/backup/RestoreObserver;)V

    iput-object v1, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    if-nez p4, :cond_1

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/backup/RestoreSession;->mBinder:Landroid/app/backup/IRestoreSession;

    iget-object v4, p0, Landroid/app/backup/RestoreSession;->mObserver:Landroid/app/backup/RestoreSession$RestoreObserverWrapper;

    move-wide v2, p1

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/backup/IRestoreSession;->restoreSome(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    return v7

    :cond_1
    new-instance v5, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;

    invoke-direct {v5, p0, p4}, Landroid/app/backup/RestoreSession$BackupManagerMonitorWrapper;-><init>(Landroid/app/backup/RestoreSession;Landroid/app/backup/BackupManagerMonitor;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RestoreSession"

    const-string/jumbo v2, "Can\'t contact server to restore packages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreSome(JLandroid/app/backup/RestoreObserver;[Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/backup/RestoreSession;->restoreSome(JLandroid/app/backup/RestoreObserver;Landroid/app/backup/BackupManagerMonitor;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
