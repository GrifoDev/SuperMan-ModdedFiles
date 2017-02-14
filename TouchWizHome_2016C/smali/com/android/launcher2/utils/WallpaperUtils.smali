.class public Lcom/android/launcher2/utils/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperUtils"

.field private static mWallpaperManager:Landroid/app/WallpaperManager;

.field private static refClassName:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wpDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getWallpaperDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-class v1, Lcom/android/launcher2/utils/WallpaperUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "Launcher.WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperDrawable is called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    :cond_0
    sget-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher2/utils/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isCurrentLiveWallpaper()Z
    .locals 3

    const-class v2, Lcom/android/launcher2/utils/WallpaperUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    :cond_0
    sget-object v1, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized releaseWallpaperDrawable(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x1

    const-class v3, Lcom/android/launcher2/utils/WallpaperUtils;

    monitor-enter v3

    :try_start_0
    const-string v4, "Launcher.WallpaperUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWallpaperDrawable is called by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", refLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v4, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    sget-object v4, Lcom/android/launcher2/utils/WallpaperUtils;->refClassName:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lcom/android/launcher2/utils/WallpaperUtils;->wpDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "Launcher.WallpaperUtils"

    const-string v5, "check bitmap.recycle() on releaseWallpaperDrawable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v4, Lcom/android/launcher2/utils/WallpaperUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
