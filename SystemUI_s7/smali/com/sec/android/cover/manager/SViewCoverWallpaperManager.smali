.class public Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.super Ljava/lang/Object;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;,
        Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;
    }
.end annotation


# static fields
.field private static final FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# instance fields
.field private final PRELOAD_WALLPAPER_ID:[I

.field private mContext:Landroid/content/Context;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCurrentUserWallpaperFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->grantPermissionsToFileProvider()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->registerFileObserver()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->unregisterFileObserver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.wallpapercropper2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.themestore"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create SViewCoverWallpaperManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->grantPermissionsToFileProvider()V

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sview_bg_wallpaper_uri"

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getFileProviderUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$array;->s_view_cover_default_wallpaper_drawable_list:I

    invoke-static {v0, v1}, Lcom/sec/android/cover/CoverUtils;->getResourceArray(Landroid/content/Context;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->registerFileObserver()V

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method private getCurrentUserWallpaperFile()Ljava/io/File;
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sview_bg_wallpaper_path"

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mkdirs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cover_wallpaper.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->loadDeafaultWallpaper(Ljava/io/File;)V

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "IOException cannot create file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getFileProviderUriString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.android.systemui.cover.fileprovider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wallpaper_images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cover_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->sInstance:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    return-object v0
.end method

.method private getUserWallpaperDirectory()Ljava/io/File;
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/storage/emulated/0/Android/data/com.android.systemui/files/"

    const-string/jumbo v3, "wallpaper_images"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mkdirs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/storage/emulated/0/Android/data/com.android.systemui/files/"

    const-string/jumbo v3, "guest_wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getWallpaperFile()Ljava/io/File;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sview_bg_wallpaper_path"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getCurrentUserWallpaperFile()Ljava/io/File;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "cover_wallpaper.jpg"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->loadOldWallpaper(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method private getWallpaperIndexByColor()I
    .locals 7

    const/4 v0, 0x0

    const-string/jumbo v4, "wallpaper"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getPreloadWallpaperColorCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget-object v4, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getWallpaperIndexByColor colorId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const-string/jumbo v4, "zd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x5

    :cond_0
    :goto_1
    return v2

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "RemoteException occurred !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "zs"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x7

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "zb"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "zi"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v2, 0x9

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "zk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1
.end method

.method private grantPermissionsToFileProvider()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getFileProviderUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->FILEPROVIDER_WRITE_PERMISSION_PACKAGES:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v0, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadDeafaultWallpaper(Ljava/io/File;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperIndexByColor()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getPreloadWallpaperResId(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "FileNotFoundException: Wallpaper File does not exists"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    sget-object v6, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error writing Bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private loadOldWallpaper(Ljava/io/File;Ljava/io/File;)V
    .locals 8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getWallpaperFile oldWallpaperFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "FileNotFoundException: Wallpaper File does not exists"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v5, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error writing Bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v5

    :catch_3
    move-exception v1

    sget-object v6, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error writing Bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private registerFileObserver()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getUserWallpaperDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;-><init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->startWatching()V

    :cond_0
    return-void
.end method

.method private unregisterFileObserver()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;->stopWatching()V

    iput-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->mFileObserver:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$SViewCoverWallpaperFileObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreloadWallpaperResId(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PRELOAD_WALLPAPER is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/sec/android/sviewcover/R$drawable;->wallpaper_default_01:I

    return v0

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid preload wallpaper index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max length : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->PRELOAD_WALLPAPER_ID:[I

    aget v0, v0, p1

    return v0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 5

    sget-object v3, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWallpaperBitmap()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->getWallpaperFile()Ljava/io/File;

    move-result-object v2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
