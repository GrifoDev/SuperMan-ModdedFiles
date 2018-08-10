.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTickerAddSpace:Z


# instance fields
.field private currentUserHandle:Landroid/os/UserHandle;

.field mAm:Landroid/app/IActivityManager;

.field private mCapturedOrigin:I

.field private mCapturedType:I

.field private mDisplayNotiIcon:Z

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageDisplayName:Ljava/lang/String;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsSavingFailed:Z

.field private mIsScrollCaptureConnectionListenerInvoked:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarVisible:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRotation:I

.field private mScreenCaptureTime:Ljava/lang/String;

.field private final mScreenshotDir:Ljava/io/File;

.field private mScrollCaptureAvailable:Z

.field private mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private mScrollCaptureTransactionId:J

.field private mStatusBarHeight:I

.field private mStatusBarVisible:Z

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 28

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v23, Landroid/os/Binder;

    invoke-direct/range {v23 .. v23}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget-object v23, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v22

    const-string/jumbo v23, "2.0"

    const-string/jumbo v24, "version"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    const-string/jumbo v23, "persona"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v5

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_2

    new-instance v23, Landroid/os/UserHandle;

    invoke-virtual {v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKioskId()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-string/jumbo v23, "Screenshot_%s_%s"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->topApplication:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getImageFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ".jpg"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getFormattedCurrentTime(J)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    new-instance v23, Ljava/io/File;

    sget-object v24, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    const-string/jumbo v25, "Screenshots"

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedType:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarVisible:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarVisible:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/ColorMatrix;

    invoke-direct {v8}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v23, 0x3e800000    # 0.25f

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    const/16 v23, 0x80

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v23, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v13, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    move/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v23, v0

    sub-int v23, v19, v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v24, v0

    sub-int v24, v18, v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v21, v23, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v10, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move/from16 v0, v21

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, v10

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v21

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    int-to-float v0, v10

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v21

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v23, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-direct/range {v23 .. v23}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLandroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z

    :cond_1
    sget-boolean v23, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/lit8 v23, v23, 0x1

    sput-boolean v23, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v23, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v23 .. v23}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    new-instance v23, Landroid/app/Notification$Builder;

    sget-object v24, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v24, 0x7f120a1a

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f120a18

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f0805d3

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    const-string/jumbo v24, "progress"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x10601bc

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    new-instance v23, Landroid/app/Notification$Builder;

    sget-object v24, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v24, 0x7f120a1a

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f120a18

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x7f0805d3

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v23

    const v24, 0x10601bc

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v24, v0

    const/16 v23, 0x0

    check-cast v23, Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void

    :cond_2
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v23

    if-nez v23, :cond_3

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v23

    if-eqz v23, :cond_0

    :cond_3
    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    goto/16 :goto_0
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCapturedOrigin : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mImageFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mScreenCpatureTime :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method private isEditorAvailable(Landroid/content/Context;)Z
    .locals 9

    const-string/jumbo v3, "com.dama.paperartist"

    const-string/jumbo v2, "com.dama.paperartist.PaperArtistActivity"

    const-string/jumbo v5, "com.sec.android.mimage.photoretouching"

    const-string/jumbo v4, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    const-string/jumbo v7, "air.com.adobe.pstouch.oem1"

    const-string/jumbo v6, "air.com.adobe.pstouch.oem1.AppEntry"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-direct {p0, p1, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    return v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    return v8
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 42

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "doInBackground"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v37

    if-eqz v37, :cond_0

    const/16 v37, 0x0

    return-object v37

    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_1

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "params.length is wrong"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    return-object v37

    :cond_1
    const/16 v37, -0x2

    invoke-static/range {v37 .. v37}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v37, 0x0

    aget-object v37, p1, v37

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/16 v37, 0x0

    aget-object v37, p1, v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/16 v21, 0x0

    const/16 v24, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x3e8

    div-long v8, v38, v40

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "mImageFilePath : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    if-eqz v20, :cond_13

    sget-object v37, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v38, 0x64

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v37

    if-eqz v37, :cond_13

    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    move-object/from16 v0, v25

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Encoding finished : FileSize : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v40

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", Width : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", Height : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", duration : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v18

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v37, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v37, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v37, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v37, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v37, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v37, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v37, "mime_type"

    const-string/jumbo v38, "image/jpeg"

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v37, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v37, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v37, "_size"

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v37, v0

    if-eqz v37, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-object/from16 v37, v0

    invoke-static/range {v36 .. v37}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->putWebDataToContentValues(Landroid/content/ContentValues;Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;)V

    :cond_2
    sget-object v37, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v35

    if-nez v35, :cond_a

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "uri is null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    aget-object v37, p1, v37

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    :goto_0
    const/16 v37, 0x0

    aget-object v37, p1, v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const/16 v37, 0x0

    aget-object v37, p1, v37

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const-string/jumbo v37, "sys.iss.state"

    const-string/jumbo v38, "0"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v37, "3rd"

    const-string/jumbo v38, "ro.release.3rd_party"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_3

    const-string/jumbo v37, "true"

    const-string/jumbo v38, "ro.release.iss"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/16 v38, 0x40

    move/from16 v0, v37

    move/from16 v1, v38

    if-lt v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_1
    if-eqz v25, :cond_5

    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    move-object/from16 v24, v25

    move-object/from16 v21, v22

    :cond_6
    :goto_3
    if-eqz v20, :cond_7

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "image recycle"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v37, v0

    if-eqz v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v37, v0

    if-eqz v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    move/from16 v37, v0

    if-nez v37, :cond_8

    const/16 v4, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v32

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-object/from16 v37, v0

    const-wide/16 v40, 0x3e8

    move-object/from16 v0, v37

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    :try_start_6
    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "doInBackground : ScrollCapture connection waiting time = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    sub-long v40, v40, v32

    invoke-virtual/range {v39 .. v41}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    monitor-exit v38

    :cond_9
    const/16 v37, 0x0

    aget-object v37, p1, v37

    return-object v37

    :cond_a
    :try_start_7
    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "uri : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    move/from16 v37, v0

    if-nez v37, :cond_f

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v37

    new-instance v38, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v37 .. v38}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v37, "Screenshot (%s)"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v34, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    new-instance v30, Landroid/content/Intent;

    const-string/jumbo v37, "android.intent.action.SEND"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v37, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v37, 0x10008000

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v37, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v37, "Uri"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v37, "Subject"

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v37, "NotificationId"

    const v38, 0x7f0a03a9

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v37, v0

    if-eqz v37, :cond_b

    const v37, 0x7f080782

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v29

    :cond_b
    new-instance v37, Landroid/app/Notification$Action$Builder;

    const v38, 0x7f1209e7

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/high16 v40, 0x10000000

    move/from16 v0, v39

    move-object/from16 v1, v30

    move/from16 v2, v40

    invoke-static {v5, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    const/16 v37, 0x0

    aget-object v37, p1, v37

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEditorAvailable(Landroid/content/Context;)Z

    move-result v37

    if-eqz v37, :cond_10

    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v37, "android.intent.action.EDIT"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v37, "Uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v37, "NotificationId"

    const v38, 0x7f0a03a9

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v37, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v37, 0x10008000

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v37, v0

    if-eqz v37, :cond_c

    const v37, 0x7f080781

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v15

    :cond_c
    new-instance v37, Landroid/app/Notification$Action$Builder;

    const v38, 0x7f1209e4

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/high16 v40, 0x10000000

    move/from16 v0, v39

    move-object/from16 v1, v16

    move/from16 v2, v40

    invoke-static {v5, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v15, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_d
    :goto_5
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v37, "android.intent.action.DELETE"

    move-object/from16 v0, v37

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v37, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v37, "currentUserHandle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->currentUserHandle:Landroid/os/UserHandle;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-class v37, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v37

    invoke-virtual {v11, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v37, "NotificationId"

    const v38, 0x7f0a03a9

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v37, v0

    if-eqz v37, :cond_e

    const v37, 0x7f080780

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    :cond_e
    new-instance v37, Landroid/app/Notification$Action$Builder;

    const v38, 0x7f1209e3

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/high16 v40, 0x10000000

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v5, v0, v11, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v10, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v37, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v37

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v37, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v37, "noToast"

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_f
    const/16 v37, 0x0

    aget-object v37, p1, v37

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    move-object/from16 v24, v25

    move-object/from16 v21, v22

    :goto_6
    :try_start_8
    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "doInBackground() Exception occured : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const/16 v37, 0x0

    aget-object v37, p1, v37

    invoke-virtual/range {v37 .. v37}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    const/16 v37, 0x0

    aget-object v37, p1, v37

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v24, :cond_6

    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v12

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "IOException"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    :try_start_a
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v37

    if-nez v37, :cond_d

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const/high16 v37, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v37, "notification_id"

    const v38, 0x7f0a03a9

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class v37, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    move/from16 v37, v0

    if-eqz v37, :cond_11

    const v37, 0x7f080781

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v15

    :cond_11
    new-instance v37, Landroid/app/Notification$Action$Builder;

    const v38, 0x7f1209e4

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    const/high16 v40, 0x10000000

    move/from16 v0, v39

    move-object/from16 v1, v17

    move/from16 v2, v40

    invoke-static {v5, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v15, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v37

    move-object/from16 v24, v25

    move-object/from16 v21, v22

    :goto_7
    if-eqz v24, :cond_12

    :try_start_b
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_12
    :goto_8
    throw v37

    :cond_13
    :try_start_c
    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "Fail to create capture image file"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x0

    aget-object v37, p1, v37

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v37

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v12

    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v38, "IOException"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_3
    move-exception v12

    sget-object v38, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v39, "IOException"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_4
    move-exception v13

    :try_start_d
    sget-object v37, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "doInBackground : Exception thrown during waiting ScrollCapture connection. e="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v37

    monitor-exit v38

    throw v37

    :catchall_2
    move-exception v37

    goto :goto_7

    :catchall_3
    move-exception v37

    move-object/from16 v21, v22

    goto :goto_7

    :catch_5
    move-exception v12

    goto/16 :goto_6

    :catch_6
    move-exception v12

    move-object/from16 v21, v22

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 12

    const/high16 v11, 0x10000000

    const v10, 0x10601bc

    const/4 v9, 0x1

    const v8, 0x7f0a03a9

    const/4 v7, 0x0

    sget-object v4, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPostExecute. params.result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v4, :cond_0

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v5, 0x7f1209e5

    invoke-static {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-wide v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v5, v8}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v4}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    :goto_0
    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void

    :cond_1
    iget v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v5, 0x7f1209e5

    invoke-static {v4, v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "imageUri"

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "NotificationId"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/screenshot/ScreenshotViewActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v5, 0x7f120a17

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f120a16

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v5, v7, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v5, 0x7f120a17

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f120a16

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v5, v7, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
