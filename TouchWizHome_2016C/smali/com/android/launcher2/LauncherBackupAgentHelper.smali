.class public Lcom/android/launcher2/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# static fields
.field static final DEBUG:Z = false

.field private static final LAUNCHER_DATA_PREFIX:Ljava/lang/String; = "L"

.field private static final TAG:Ljava/lang/String; = "LauncherBackupAgentHelper"

.field static final VERBOSE:Z

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private mHelper:Lcom/android/launcher2/LauncherBackupHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    :cond_0
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "dataChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    new-instance v0, Lcom/android/launcher2/LauncherBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherBackupHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher2/LauncherBackupHelper;

    const-string v0, "L"

    iget-object v1, p0, Lcom/android/launcher2/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher2/LauncherBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "You shall not pass!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Restore is only supported on devices running Lollipop and above."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "onRestore(), Provider.createEmptyDB()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherBackupAgentHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10, v2}, Lcom/android/launcher2/LauncherProvider;->createEmptyDB(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherBackupAgentHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screencount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screencount.homeonly"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherBackupAgentHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "LauncherBackupAgentHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestore(), hasData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", restoreSuccessful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher2/LauncherBackupHelper;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher2/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v0, :cond_4

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherProvider;->clearFlagEmptyDbCreated()V

    :cond_3
    :goto_2
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/launcher2/LauncherBackupAgentHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherBackupAgentHelper$1;-><init>(Lcom/android/launcher2/LauncherBackupAgentHelper;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Restore failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Nothing was restored, clearing DB"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/android/launcher2/LauncherProvider;->createEmptyDB(Z)V

    goto :goto_2
.end method
