.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "LockscreenWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;,
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;
    }
.end annotation


# instance fields
.field private final mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCached:Z

.field private mCurrentUserId:I

.field private final mH:Landroid/os/Handler;

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUser:Landroid/os/UserHandle;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private postUpdateWallpaper()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 7

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :cond_0
    move v2, p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "LockscreenWallpaper"

    const-string/jumbo v5, "Can\'t decode file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->fail()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->getBitmapAsUser(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v4

    return-object v4

    :cond_2
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v4

    return-object v4
.end method

.method public onWallpaperChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->postUpdateWallpaper()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v2, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;ILandroid/os/UserHandle;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method
