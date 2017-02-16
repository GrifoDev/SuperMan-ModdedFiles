.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field private mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 61
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 63
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 68
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 67
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 69
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    .line 40
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const-string/jumbo v0, "account_sync_settings"

    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 80
    const-string/jumbo v0, "preferred_activities"

    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 81
    const-string/jumbo v0, "notifications"

    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 82
    const-string/jumbo v0, "permissions"

    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 83
    const-string/jumbo v0, "usage_stats"

    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 84
    const-string/jumbo v0, "shortcut_manager"

    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 78
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 98
    new-instance v3, Landroid/app/backup/WallpaperBackupHelper;

    .line 99
    new-array v4, v6, [Ljava/lang/String;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v5, v4, v8

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v5, v4, v7

    .line 100
    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "/data/data/com.android.settings/files/wallpaper"

    aput-object v6, v5, v8

    const-string/jumbo v6, "/data/system/wallpaper_info.xml"

    aput-object v6, v5, v7

    .line 98
    invoke-direct {v3, p0, v4, v5}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    .line 101
    const-string/jumbo v3, "wallpaper"

    iget-object v4, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 104
    const-string/jumbo v3, "system_files"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    .line 105
    new-array v5, v7, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 106
    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v6, v8

    .line 104
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 108
    const-string/jumbo v3, "account_sync_settings"

    new-instance v4, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v4, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 109
    const-string/jumbo v3, "preferred_activities"

    new-instance v4, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v4}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 110
    const-string/jumbo v3, "notifications"

    new-instance v4, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v4, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 111
    const-string/jumbo v3, "permissions"

    new-instance v4, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v4}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 112
    const-string/jumbo v3, "usage_stats"

    new-instance v4, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v4, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 113
    const-string/jumbo v3, "shortcut_manager"

    new-instance v4, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v4}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v3, v4}, Landroid/app/backup/BackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 116
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 119
    const-string/jumbo v3, "wallpaper"

    .line 118
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .local v2, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v2, :cond_0

    .line 122
    :try_start_1
    invoke-interface {v2}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 123
    .restart local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "SystemBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t restore settings\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 127
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "SystemBackupAgent"

    const-string/jumbo v4, "restore failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 132
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 15
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restoring file domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v13, 0x0

    .line 145
    .local v13, "restoredWallpaper":Z
    const/4 v10, 0x0

    .line 147
    .local v10, "outFile":Ljava/io/File;
    const-string/jumbo v2, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string/jumbo v2, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    new-instance v10, Ljava/io/File;

    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    .line 158
    .end local v10    # "outFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 159
    :try_start_0
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping unrecognized system file: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    .line 161
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 163
    if-eqz v13, :cond_2

    .line 166
    const-string/jumbo v2, "wallpaper"

    .line 165
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    check-cast v14, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    .local v14, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v14, :cond_2

    .line 169
    :try_start_1
    invoke-interface {v14}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_2
    :goto_1
    return-void

    .line 151
    .local v10, "outFile":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    new-instance v10, Ljava/io/File;

    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    goto :goto_0

    .line 170
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v12

    .line 171
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t restore settings\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 175
    .end local v12    # "re":Landroid/os/RemoteException;
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v11

    .line 176
    .local v11, "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    .line 178
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 179
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public onRestoreFinished()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    invoke-virtual {v0}, Landroid/app/backup/WallpaperBackupHelper;->onRestoreFinished()V

    .line 185
    :cond_0
    return-void
.end method
