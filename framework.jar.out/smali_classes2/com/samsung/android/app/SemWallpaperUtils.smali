.class public Lcom/samsung/android/app/SemWallpaperUtils;
.super Ljava/lang/Object;
.source "SemWallpaperUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startBackupWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;

    invoke-direct {v0}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;->startRestoreWallpaper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
