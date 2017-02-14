.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;
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

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockDir:Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mDesktopWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    move v1, p1

    move-object v2, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->-wrap0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZI)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    const-string/jumbo v8, "wallpaper_lock_orig"

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMultiWallpaperLockFile(IILjava/lang/String;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    aget-object v0, v0, v6

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mMultiWallpaperLockFiles:[Ljava/io/File;

    aget-object v0, v0, v6

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "onEvent multiLockWallpaperChanged is true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->-wrap0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;ILjava/lang/String;Ljava/io/File;ZZI)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
