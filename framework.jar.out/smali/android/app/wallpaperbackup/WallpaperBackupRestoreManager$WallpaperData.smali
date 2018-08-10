.class Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field rotation:I

.field top:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->left:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->top:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->right:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->bottom:I

    iput v0, p0, Landroid/app/wallpaperbackup/WallpaperBackupRestoreManager$WallpaperData;->rotation:I

    return-void
.end method
