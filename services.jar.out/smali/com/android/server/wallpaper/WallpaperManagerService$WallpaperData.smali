.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field allowBackup:Z

.field animatedPkgName:Ljava/lang/String;

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field callingPackage:Ljava/lang/String;

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field cropFile:Ljava/io/File;

.field final cropHint:Landroid/graphics/Rect;

.field height:I

.field imageWallpaperPending:Z

.field kwpType:I

.field lastDiedTime:J

.field length:I

.field motionPkgName:Ljava/lang/String;

.field multiCropFile:[Ljava/io/File;

.field multiWallpaperFile:[Ljava/io/File;

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field preloadKWPColorCode:Ljava/lang/String;

.field setComplete:Landroid/app/IWallpaperManagerCallback;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperId:I

.field wallpaperObserver:Landroid/os/FileObserver;

.field wallpaperUpdating:Z

.field whichPending:I

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->preloadKWPColorCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->motionPkgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->animatedPkgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callingPackage:Ljava/lang/String;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-le p5, v0, :cond_0

    invoke-virtual {p0, p2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setMultiWallpaperData(Ljava/io/File;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method cropExists()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method setDefaultWallpaperData(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    return-void
.end method

.method setMultiWallpaperData(Ljava/io/File;I)V
    .locals 6

    const-string/jumbo v3, "wallpaper_lock_orig"

    invoke-static {p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap5(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_lock"

    invoke-static {p2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap5(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v3, p2, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    new-array v3, p2, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->kwpType:I

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->length:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiWallpaperFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->multiCropFile:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
