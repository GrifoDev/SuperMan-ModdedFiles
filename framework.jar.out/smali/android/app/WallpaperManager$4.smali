.class final Landroid/app/WallpaperManager$4;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Landroid/app/WallpaperManager$SubUserWallpaperChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager;->getDefaultWallpaperFile()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSubUserCSCFile(I)Ljava/io/File;
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const-string/jumbo v0, "/system/wallpaper/default_wallpaper/"

    invoke-static {}, Landroid/app/WallpaperManager;->-get1()Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->-wrap0(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
