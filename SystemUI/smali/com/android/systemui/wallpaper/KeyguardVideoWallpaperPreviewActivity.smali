.class public Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;,
        Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBgBlendingImageView:Landroid/widget/ImageView;

.field private mEditBtnContainer:Landroid/view/View;

.field private mEditButton:Landroid/widget/TextView;

.field private mFakeImageView:Landroid/widget/ImageView;

.field private mFileExt:Ljava/lang/String;

.field private mInfinityConfirmDialog:Landroid/app/Dialog;

.field private mInfoTextView:Landroid/widget/TextView;

.field private mIsTaskRunning:Z

.field private mIsVideoFileSaveServiceBound:Z

.field private mOriginVideoFilePath:Ljava/lang/String;

.field private mOutputFileName:Ljava/lang/String;

.field private mOverlayImageView:Landroid/widget/ImageView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSetAsWallpaperButton:Landroid/widget/TextView;

.field private mSetBtnContainer:Landroid/view/View;

.field private mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceTransformHandler:Landroid/os/Handler;

.field private mThemePkgName:Ljava/lang/String;

.field private mVideoCopyTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

.field private mVideoFileCopyService:Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFilePath:Ljava/lang/String;

.field private final mVideoFileSaveConnection:Landroid/content/ServiceConnection;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field private mVideoSurfaceView:Landroid/view/TextureView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mFileExt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileCopyService:Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoSurfaceView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileCopyService:Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setupVideoPreview()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsTaskRunning:Z

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceTransformHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileSaveConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private getBackgroundImg()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    return-object v6

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getBackgroundImg() error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_5
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getBackgroundImg() file is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_2
    return-object v3

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_3
    throw v1

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getRealPreviewBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/storage/emulated/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6

    :cond_0
    sget-object v6, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initCapturedView(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v6, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private isSpecIn()Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    return v7

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v7, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isSpecIn() file path is empty"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v7, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "isSpecIn() video file is not exist"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    const-wide/16 v0, 0x3e80

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v9, 0x405

    invoke-virtual {v3, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    sget-object v9, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isSpecIn() d = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", s = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x3e7f

    cmp-long v9, v0, v10

    if-gtz v9, :cond_3

    const-wide/32 v10, 0x6400000

    cmp-long v9, v4, v10

    if-gtz v9, :cond_3

    :goto_1
    return v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v9, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "isSpecIn() occur exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_1
.end method

.method private setSystemSettings(Ljava/lang/String;II)Z
    .locals 3

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettings(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setSystemSettingsForUser(Ljava/lang/String;II)Z
    .locals 4

    const/4 v3, -0x2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemSettingsForUser(): key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setupVideoPreview()V
    .locals 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setupVideoPreview()"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->isSpecIn()Z

    move-result v3

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSetBtnContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfoTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const v4, 0x7f1206f5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mEditBtnContainer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOverlayImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getRealPreviewBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getBackgroundImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mBgBlendingImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mFakeImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->GAUSSIAN:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-static {v4}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->createImageFilter(Lcom/samsung/android/graphics/SemImageFilter$FilterType;)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setRadius(F)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mBgBlendingImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    const v4, 0x7f1206f6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "background image is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public bindVideoFileCopyaService()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.wallpaper.video.VideoFileSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileSaveConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot bind to com.android.systemui.wallpaper.video.VideoFileSaveService"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Video file save service is started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Video file save service is already started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_11608(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->updateVideoFile()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_11712(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_5621(FFFFII)V
    .locals 5

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setScaleSurface() sx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", px = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", py = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, v1, Landroid/os/Message;->arg1:I

    iput p6, v1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceTransformHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_8590(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->showConfirmDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->updateVideoFile()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_8850(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->showVideoTrimmerActivity()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_wallpaper_KeyguardVideoWallpaperPreviewActivity_9394(Landroid/content/DialogInterface;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VideoFileCopyTask.onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoCopyTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->cancelTask()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoCopyTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->cancel(Z)Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onActivityResult() mOutputFileName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setupVideoPreview()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult() output file is not exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "video_1.mp4"

    invoke-static {v1, v0, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "File path or descriptor is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOriginVideoFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->bindVideoFileCopyaService()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0d009e

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setContentView(I)V

    const v1, 0x7f0a03eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mBgBlendingImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a030e

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOverlayImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a030d

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mFakeImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a030f

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoSurfaceView:Landroid/view/TextureView;

    const v1, 0x7f0a03ed

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfoTextView:Landroid/widget/TextView;

    const v1, 0x7f0a019c

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mEditButton:Landroid/widget/TextView;

    const v1, 0x7f0a04b7

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/TextView;

    const v1, 0x7f0a04b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSetBtnContainer:Landroid/view/View;

    const v1, 0x7f0a019d

    invoke-virtual {p0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mEditBtnContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoSurfaceView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mEditButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    const-string/jumbo v2, "mp4"

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFileExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mFileExt:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSurfaceController:Lcom/android/systemui/wallpaper/video/SurfaceController;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/video/SurfaceController;Z)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoCopyTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

    new-instance v1, Landroid/app/ProgressDialog;

    const v2, 0x7f1300b8

    invoke-direct {v1, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->unbindVideoFileCopyService()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    return-void
.end method

.method protected showConfirmDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1206ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$1;-><init>(Ljava/lang/Object;)V

    const v2, 0x7f1206ef

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$Lambda$zISa71F4vgnBMtfo7SaHtWhoHZ8$2;-><init>(Ljava/lang/Object;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mInfinityConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showVideoTrimmerActivity()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "600"

    const-string/jumbo v5, "0007"

    invoke-static {v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mThemePkgName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_0
    const-string/jumbo v4, "600"

    const-string/jumbo v5, "0008"

    invoke-static {v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getOutputVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showVideoTrimmerActivity() output file path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", output size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.app.newtrim/com.samsung.app.newtrim.trimactivity.TrimActivity"

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "uri"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "VIDEO_OUTPUT_PATH"

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mOutputFileName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "VIDEO_OUTPUT_WIDTH"

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "VIDEO_OUTPUT_HEIGHT"

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "VIDEO_OUTPUT_SIZE"

    const v5, 0x19000

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "CALLER_APP"

    const-string/jumbo v5, "VideoWallpaper"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "showVideoTrimmerActivity() activity not found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized unbindVideoFileCopyService()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileSaveConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoFileSaveConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsVideoFileSaveServiceBound:Z

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Video file copy service is unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Video file copy service is already unbound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateVideoFile()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "600"

    const-string/jumbo v1, "0002"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsTaskRunning:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVideoFile() return - task is already running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mIsTaskRunning:Z

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateVideoFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->mVideoCopyTask:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
