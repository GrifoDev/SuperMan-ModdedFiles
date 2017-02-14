.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$2;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    move v1, p1

    move-object v2, p2

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->-wrap0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZI)V

    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
