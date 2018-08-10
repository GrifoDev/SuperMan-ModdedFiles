.class public Lcom/samsung/android/knox/SemRemoteContentManager;
.super Ljava/lang/Object;
.source "SemRemoteContentManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "SemRemoteContentManager"


# instance fields
.field mService:Lcom/samsung/android/knox/ISemRemoteContentManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ISemRemoteContentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    return-void
.end method


# virtual methods
.method public addExportShortcutInfo(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->addExportShortcutInfo(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelCopyChunks(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->cancelCopyChunks(J)V

    :cond_0
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, -0x14d

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "copyFile: srcContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " destContainerId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " destFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public doSyncForSyncer(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doSyncForSyncer, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , providerID :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemRemoteContentManager;->executeCommandForPersona(Landroid/app/Command;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to get getCallerInfo(). "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public getExportShortcutInfo(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getExportShortcutInfo(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getRCPInterface()Landroid/content/IRCPInterface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1}, Lcom/samsung/android/knox/ISemRemoteContentManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to get IRCPGlobalContactsDir from getRCPProxy()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-object v3
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " in createShortcut() for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/knox/ISemRemoteContentManager;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "RemoteException trying to get createShortcut(). "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public moveFiles(ILandroid/net/Uri;II)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "moveFiles uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    if-gez p3, :cond_1

    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveFiles total fileCount is smaller than zero : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveUnlimitedFiles(ILandroid/net/Uri;II)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v4
.end method

.method public moveFiles(ILjava/util/List;Ljava/util/List;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    if-gez p1, :cond_0

    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid App Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "invalid srcFilePaths"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "invalid destFilePaths"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide v0

    return-wide v0

    :cond_5
    return-wide v4
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->moveFilesForApp(ILjava/util/List;Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/ISemRemoteContentManager;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "RemoteException trying to query provider  queryAllProviders()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "SemRemoteContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/knox/ISemRemoteContentManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "SemRemoteContentManager"

    const-string/jumbo v1, "RemoteException trying to query provider  queryProvider"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "registerCommandExe callback object is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register command executor callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, v0, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;I)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public registerObserver(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerDbObserver, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register registerDbObserver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register provider callback registerProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRCPInterface(): My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerSync(Landroid/content/ISyncCallBack;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->registerSync(Landroid/content/ISyncCallBack;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to register sync callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeExportShortcutInfo(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->removeExportShortcutInfo(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "Failed to call Persona service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unRegisterObserver(Ljava/lang/String;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SemRemoteContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unRegisterDbObserver, SyncerName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/SemRemoteContentManager;->mService:Lcom/samsung/android/knox/ISemRemoteContentManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/ISemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemRemoteContentManager"

    const-string/jumbo v2, "RemoteException trying to unRegisterDbObserver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
