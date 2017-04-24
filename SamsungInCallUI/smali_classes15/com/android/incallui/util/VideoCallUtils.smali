.class public Lcom/android/incallui/util/VideoCallUtils;
.super Ljava/lang/Object;
.source "VideoCallUtils.java"


# static fields
.field public static final CAPTURED_DISPLAY_IMAGE:Ljava/lang/String; = "captured_display_image.tmp"

.field public static final CAPTURED_PREVIEW_IMAGE:Ljava/lang/String; = "captured_preview_image.tmp"

.field private static final CHECKING_LOW_MEMORY_FOR_CAPTURE:I = 0x3e8

.field private static final CHECKING_LOW_MEMORY_FOR_RECORDING:I = 0x2710

.field public static final DEFAULT_IMAGE_QCIF:Ljava/lang/String; = "preset_defaultimage_qcif.jpg"

.field public static final DEFAULT_IMAGE_QVGA_LAND:Ljava/lang/String; = "preset_default_image_qvga_land.jpg"

.field public static final DEFAULT_IMAGE_VGA:Ljava/lang/String; = "preset_defaultimage_vga.jpg"

.field public static final DEFAULT_IMAGE_VGA_LAND:Ljava/lang/String; = "preset_defaultimage_vga_land.jpg"

.field public static final FILE_PROVIDER_AUTHORITIES:Ljava/lang/String; = "com.samsung.android.incallui.fileprovider"

.field private static final LOG_TAG:Ljava/lang/String; = "SECVT-VideoCallUtils"

.field public static final NOTIFY_CAPTURING_QCIF:Ljava/lang/String; = "notify_capturing_qcif.jpg"

.field public static final NOTIFY_CAPTURING_VGA:Ljava/lang/String; = "notify_capturing_vga.jpg"

.field public static final NOTIFY_RECORDING_QCIF:Ljava/lang/String; = "notify_recording_qcif.jpg"

.field private static final PICKED_IMAGE_FILE_TEMP:Ljava/lang/String; = "temp_picked_image_from_gallery.vci"

.field public static final PICK_IMAGE_FORM_GALLERY:Ljava/lang/String; = "during_vt_photo.jpg"

.field private static final VIDEOCALL_DIRECTORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Videocall/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUpdateVTSpeakerState()Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static captureImage(Z)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->captureImage(Z)V

    :cond_0
    return-void
.end method

.method public static checkAndNotifyInfo(II)V
    .locals 1

    invoke-static {p0, p1}, Lcom/android/incallui/util/VideoCallUtils;->notifyQualityInfo(II)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/incallui/util/VideoCallUtils;->notifyCameraInfo(II)V

    :cond_0
    return-void
.end method

.method public static checkCameraStartConditionSecurity()Z
    .locals 2

    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkStorageMemorySpace()Z
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Ljava/io/File;

    const-string v12, "/sdcard/"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v2, v12

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    mul-long v12, v10, v2

    const-wide/16 v14, 0x400

    div-long v4, v12, v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Memory Size Avialable is in Kb : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    const-wide/16 v12, 0x2

    cmp-long v12, v0, v12

    if-lez v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static checkStorageMemorySpace(Z)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x400

    div-long v0, v6, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Memory Size Avialable is in Kb : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    const-wide/16 v6, 0x2710

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x3e8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private static createImageFileFromResId(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x0

    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "SECVT-VideoCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createImageFileFromResId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static createVideoCallDir()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createVideoCallDir create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "createVideoCallDir - already exists"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deletePickImageTempFile()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteSavedImage(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteVideoHeldImage()V
    .locals 7

    sget v3, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteVideoHeldImage - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getAiveVideoCall()Lcom/android/incallui/Call;
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllowCamera()Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 3

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_0

    :cond_6
    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    if-ne v0, p1, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    goto :goto_0
.end method

.method public static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    goto :goto_0
.end method

.method public static getCameraId(Lcom/android/incallui/Call;)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call$VideoSettings;->getCameraId()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/android/incallui/wrapper/ContextWrapper;->createPackageContextAsUserWithInstance(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultImageFilePath create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    const-string v4, "preset_defaultimage_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, 0x7f020094

    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    invoke-static {v0, v2, p0}, Lcom/android/incallui/util/VideoCallUtils;->createImageFileFromResId(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    const-string v4, "preset_defaultimage_vga.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x7f020096

    goto :goto_0

    :cond_3
    const-string v4, "preset_defaultimage_vga_land.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v2, 0x7f020097

    goto :goto_0

    :cond_4
    const-string v4, "preset_default_image_qvga_land.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v2, 0x7f020095

    goto :goto_0

    :cond_5
    const-string v4, "notify_capturing_vga.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v2, 0x7f0202e9

    goto :goto_0

    :cond_6
    const-string v4, "notify_capturing_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const v2, 0x7f020073

    goto :goto_0

    :cond_7
    const-string v4, "notify_recording_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f020093

    goto :goto_0

    :cond_8
    move-object v1, v3

    goto :goto_1

    :cond_9
    move-object v1, v3

    goto :goto_1
.end method

.method public static getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDisplayRotation()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getExistFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExistFile - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getForegroundCallForVT()Lcom/android/incallui/Call;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public static getFrameSize()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    const-string v0, "NONE"

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "QCIF"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v0, "QVGA"

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const-string v0, "QVGALAND"

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string v0, "VGALAND"

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    const-string v0, "HD720"

    goto :goto_0

    :cond_5
    const-string v0, "VGA"

    goto :goto_0
.end method

.method public static getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMediaType(Lcom/android/incallui/Call;)I
    .locals 4

    const/16 v0, 0xf

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/16 v0, 0xc

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getSecVideoState(Lcom/android/incallui/Call;)I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/16 v0, 0xd

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/16 v0, 0xe

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getModifyProgressingCall()Lcom/android/incallui/Call;
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPickedImageTempFile()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp_picked_image_from_gallery.vci"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreviewDefaultImage()Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_1

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPreviewDefaultImage  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    return-object v2

    :cond_1
    if-eqz v4, :cond_2

    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_video_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VideoCallUtils;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preset_defaultimage_vga.jpg"

    const-string v6, "QCIF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "preset_defaultimage_qcif.jpg"

    :goto_1
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v6, "QVGALAND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v1, "preset_default_image_qvga_land.jpg"

    goto :goto_1

    :cond_4
    const-string v6, "QVGA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v1, "preset_defaultimage_vga.jpg"

    goto :goto_1

    :cond_5
    const-string v6, "VGALAND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v1, "preset_defaultimage_vga_land.jpg"

    goto :goto_1

    :cond_6
    const-string v1, "preset_defaultimage_vga.jpg"

    goto :goto_1
.end method

.method public static getSecVideoState(Lcom/android/incallui/Call;)I
    .locals 3

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecVideoState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    return v0
.end method

.method public static getValidFileName(Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->createVideoCallDir()V

    if-eqz p0, :cond_0

    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoFileNameFromUri : Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    move-object v0, v12

    :goto_1
    return-object v0

    :catch_0
    move-exception v8

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    goto :goto_1

    :catch_1
    move-exception v9

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v13

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    const v0, 0x7f09011c

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    const-string v0, "getVideoFileNameFromUri is null"

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoResolution()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getVideoResolution(Lcom/android/incallui/Call;)I
    .locals 4

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v0

    :cond_2
    return v0
.end method

.method public static hasVideoPauseState(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveOrBackgroundCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAliveHasVideoState()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveHasVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAliveHasVideoState(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAliveStateForVideo(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAliveStateForVideo(Lcom/android/incallui/Call;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAliveVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAliveVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isCameraEnabled()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isCameraEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCameraRestricted()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getAllowCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkCameraStartConditionSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isConferecedVideoRx(Lcom/android/incallui/Call;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDeviceLandScape()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isForegroundActivity()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isHD720()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isHD720(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isHD720(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQCIF()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isQCIF(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQVGA()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQVGA(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isQVGA(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(I)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVGA()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isVGA(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVGA(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoFile()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SECVT-VideoCallUtils"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "SECVT-VideoCallUtils"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static makeCapureFilePath(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->createVideoCallDir()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "yyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static makeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeFileProviderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    const-string v4, "com.samsung.android.incallui.fileprovider"

    invoke-static {v1, v4, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "com.sec.sve"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeFileProviderUri - uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occured in makeFileProviderUri - filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static makeFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeFileUri - filePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;Z)V

    const-string v3, "data/data"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "data/user"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFileProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static mediaScan(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/incallui/util/VideoCallUtils$1;

    invoke-direct {v4}, Lcom/android/incallui/util/VideoCallUtils$1;-><init>()V

    invoke-static {v2, v1, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    goto :goto_0
.end method

.method public static needToShowHideMeByUi(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v2

    if-ne v2, v1, :cond_0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isVideoFile()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needToUpdateModificationState(II)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToUpdateModificationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_USC()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_COMMON()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_0

    :cond_3
    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne p0, v2, :cond_0

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static notifyCameraInfo(II)V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x4

    if-ne p1, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_3

    if-eq p0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f0900c6

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyQualityInfo(II)V
    .locals 14

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_KTT()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_LGU()Z

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string v11, "QCIF"

    if-ne v10, v11, :cond_7

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOn3G()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    if-ne p1, v11, :cond_0

    const/4 v11, 0x6

    if-ne p0, v11, :cond_1

    :cond_0
    const/4 v11, 0x4

    if-ne p1, v11, :cond_7

    const/4 v11, 0x4

    if-eq p0, v11, :cond_7

    :cond_1
    const/4 v5, 0x1

    :goto_0
    const-string v11, "QCIF"

    if-ne v10, v11, :cond_8

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnLTE()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x3

    if-ne p1, v11, :cond_8

    const/4 v11, 0x6

    if-eq p0, v11, :cond_2

    const/4 v11, 0x4

    if-ne p0, v11, :cond_8

    :cond_2
    const/4 v4, 0x1

    :goto_1
    const-string v11, "QVGA"

    if-eq v10, v11, :cond_3

    const-string v11, "QVGALAND"

    if-ne v10, v11, :cond_9

    :cond_3
    const/4 v11, 0x3

    if-ne p1, v11, :cond_9

    const/4 v11, 0x6

    if-eq p0, v11, :cond_4

    const/4 v11, 0x4

    if-ne p0, v11, :cond_9

    :cond_4
    const/4 v6, 0x1

    :goto_2
    const/4 v0, 0x0

    if-eqz v7, :cond_b

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocallmessage_settings"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_a

    const/4 v0, 0x0

    :cond_5
    :goto_3
    if-nez v0, :cond_d

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    :cond_a
    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    if-eqz v2, :cond_c

    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    if-eqz v3, :cond_5

    if-nez v8, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_d
    if-eqz v5, :cond_e

    if-eqz v7, :cond_11

    const v9, 0x7f090152

    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_low_quality_by_far"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    if-eqz v7, :cond_15

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_low_quality_by_far"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    :cond_10
    :goto_7
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    invoke-static {v9}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_4

    :cond_11
    if-eqz v2, :cond_12

    const v9, 0x7f0901c3

    goto :goto_5

    :cond_12
    const v9, 0x7f090155

    goto :goto_5

    :cond_13
    if-eqz v2, :cond_14

    const v9, 0x7f0901c8

    goto :goto_6

    :cond_14
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_quality_qcif_4g"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    goto :goto_6

    :cond_15
    if-eqz v2, :cond_16

    const v9, 0x7f0901c7

    goto :goto_7

    :cond_16
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_quality_qcif_4g"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    goto :goto_7
.end method

.method public static onReceivedMessageFromTelecom(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->onReceivedMessageFromTelecom(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static requestLowFPS(Z)V
    .locals 5

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SECVT-VideoCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLowFPS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SSRM_STATUS_NAME"

    const-string v3, "Phone_vtCall"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "PackageName"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static requestPickImageToGallery()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "requestPickImageToGallery - failed because of low memory"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    const v2, 0x7f0901db

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "requestPickImageToGallery - failed because primary call is not exist"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "requestPickImageToGallery"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/incallui/util/PickImageFromGallery;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "senderIsVideoCall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "imageSelected"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "resolution"

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "file_path"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    if-gt v2, p1, :cond_2

    if-le v0, p2, :cond_0

    :cond_2
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int p1, v3

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int p2, v3

    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizeBitmap ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " X "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/16 v1, 0xb0

    const/16 v0, 0x90

    const-string v2, "VGA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x1e0

    const/16 v0, 0x280

    :cond_1
    :goto_1
    invoke-static {p0, v1, v0}, Lcom/android/incallui/util/VideoCallUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "VGALAND"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x280

    const/16 v0, 0x1e0

    goto :goto_1

    :cond_3
    const-string v2, "QVGALAND"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x140

    const/16 v0, 0xf0

    goto :goto_1

    :cond_4
    const-string v2, "QVGA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xf0

    const/16 v0, 0x140

    goto :goto_1
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SECVT-VideoCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveBitmapToFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "SECVT-VideoCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveBitmapToFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "SECVT-VideoCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveBitmapToFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v2

    :catch_3
    move-exception v0

    const-string v3, "SECVT-VideoCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapToFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static saveBitmapToFilePath(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SECVT-VideoCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapToFilePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    const-string v3, "SECVT-VideoCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapToFilePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "SECVT-VideoCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveBitmapToFilePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v3

    :catch_3
    move-exception v0

    const-string v4, "SECVT-VideoCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveBitmapToFilePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static saveSurfaceImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string v1, "VideoCallUtils - saveSurfaceImage - error"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_display_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1, v0}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_preview_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static selectVideoFromMyFiles()V
    .locals 3

    const-string v1, "In selectVideoFromMyFiles method"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/incallui/util/PickImageFromGallery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "imageSelected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v1, "Out selectVideoFromMyFiles method"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static sendPickedImage()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->sendPickedImage()V

    :cond_0
    return-void
.end method

.method public static sendPickedVideo(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->sendPickedVideo(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public static setRequestedOrientation(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public static setSmartAnswered(Z)V
    .locals 3

    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartAnswered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x68

    if-eqz p0, :cond_2

    const/16 v0, 0x67

    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    goto :goto_0
.end method

.method public static showRecordResult(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getFarEndRecordFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getFarEndRecordFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->showVideoRecordFileName(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->resetRecordInfo()V

    :cond_1
    return-void
.end method

.method private static showVideoRecordFileName(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoRecordFileName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090329

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090328

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startRecord(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/incallui/VideoCallPresenter;->startRecord(Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static stopRecord()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->stopRecord()V

    :cond_0
    return-void
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
