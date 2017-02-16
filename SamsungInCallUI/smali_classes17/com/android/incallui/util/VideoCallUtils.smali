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

    .prologue
    .line 106
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

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUpdateVTSpeakerState()Z
    .locals 1

    .prologue
    .line 316
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
    .param p0, "isNearEnd"    # Z

    .prologue
    .line 1041
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    .line 1042
    .local v0, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->captureImage(Z)V

    .line 1045
    :cond_0
    return-void
.end method

.method public static checkAndNotifyInfo(II)V
    .locals 1
    .param p0, "privCallState"    # I
    .param p1, "currCallState"    # I

    .prologue
    .line 1092
    invoke-static {p0, p1}, Lcom/android/incallui/util/VideoCallUtils;->notifyQualityInfo(II)V

    .line 1093
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    invoke-static {p0, p1}, Lcom/android/incallui/util/VideoCallUtils;->notifyCameraInfo(II)V

    .line 1096
    :cond_0
    return-void
.end method

.method public static checkCameraStartConditionSecurity()Z
    .locals 2

    .prologue
    .line 348
    const-string v1, "persist.sys.camera_lock"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "dev_camera_lock_state":Ljava/lang/String;
    const-string v1, "camera_lock.enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x1

    .line 351
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkStorageMemorySpace()Z
    .locals 16

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 253
    .local v6, "lCurrTime":J
    new-instance v8, Ljava/io/File;

    const-string v12, "/sdcard/"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v8, "path":Ljava/io/File;
    new-instance v9, Landroid/os/StatFs;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 255
    .local v9, "stat":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v12

    int-to-long v2, v12

    .line 256
    .local v2, "blockSize":J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v12

    int-to-long v10, v12

    .line 257
    .local v10, "totalBlocks":J
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v0, v12

    .line 258
    .local v0, "availableBlocks":J
    mul-long v12, v10, v2

    const-wide/16 v14, 0x400

    div-long v4, v12, v14

    .line 260
    .local v4, "finalSize":J
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

    .line 262
    const-wide/16 v12, 0x2

    cmp-long v12, v0, v12

    if-lez v12, :cond_0

    .line 263
    const/4 v12, 0x1

    .line 265
    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static checkStorageMemorySpace(Z)Z
    .locals 10
    .param p0, "checkForVideo"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    new-instance v2, Ljava/io/File;

    const-string v6, "/sdcard/"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 272
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x400

    div-long v0, v6, v8

    .line 273
    .local v0, "availableSize":J
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

    .line 274
    if-eqz p0, :cond_2

    .line 275
    const-wide/16 v6, 0x2710

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 279
    goto :goto_0

    .line 282
    :cond_2
    const-wide/16 v6, 0x3e8

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 285
    goto :goto_0
.end method

.method private static createImageFileFromResId(Landroid/content/Context;ILjava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 154
    .local v4, "image":Landroid/graphics/Bitmap;
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 155
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 156
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 162
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 163
    .local v3, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/io/IOException;
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

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
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

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v1, "createVideoCallDir - already exists"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 302
    if-nez p0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
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

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deletePickImageTempFile()V
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFile(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public static deleteSavedImage(Ljava/lang/String;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteFile(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public static deleteVideoHeldImage()V
    .locals 7

    .prologue
    .line 685
    sget v3, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 698
    .local v0, "dir":Ljava/io/File;
    :cond_0
    return-void

    .line 686
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 687
    .restart local v0    # "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 689
    .local v2, "file_list":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 690
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 691
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 692
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

    .line 693
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 690
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getAiveVideoCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 760
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 761
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return-object v0

    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllowCamera()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 329
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 330
    .local v0, "context":Landroid/content/Context;
    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 331
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_0

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v2

    .line 332
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-object v1

    .line 358
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 361
    .local v1, "selectedImage":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;
    .param p1, "ignore"    # Lcom/android/incallui/Call;
    .param p2, "skipDisconnected"    # Z

    .prologue
    .line 873
    if-nez p0, :cond_1

    .line 874
    const/4 v0, 0x0

    .line 939
    :cond_0
    :goto_0
    return-object v0

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 876
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    .line 880
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_3

    if-ne v0, p1, :cond_0

    .line 885
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 887
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 890
    const/4 v0, 0x0

    .line 895
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 898
    const-string v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 899
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 900
    if-nez p1, :cond_a

    .line 901
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    .line 902
    if-nez v0, :cond_0

    .line 912
    :cond_5
    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_0

    .line 919
    :cond_6
    if-nez p2, :cond_8

    .line 920
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_0

    .line 924
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 925
    if-eqz v0, :cond_8

    if-ne v0, p1, :cond_0

    .line 931
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_0

    .line 937
    :cond_9
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 939
    goto :goto_0

    .line 905
    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    goto :goto_0
.end method

.method public static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 4
    .param p0, "callList"    # Lcom/android/incallui/CallList;
    .param p1, "ignore"    # Lcom/android/incallui/Call;
    .param p2, "skipDisconnected"    # Z

    .prologue
    const/4 v1, 0x0

    .line 845
    if-nez p0, :cond_1

    move-object v0, v1

    .line 869
    :cond_0
    :goto_0
    return-object v0

    .line 848
    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 849
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 850
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 851
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 854
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 869
    goto :goto_0

    .line 862
    :cond_3
    if-nez p2, :cond_2

    .line 863
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    goto :goto_0
.end method

.method public static getCameraId(Lcom/android/incallui/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1189
    const/4 v0, 0x1

    .line 1190
    .local v0, "cameraId":I
    if-eqz p0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call$VideoSettings;->getCameraId()I

    move-result v0

    .line 1192
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v2

    .line 1194
    .local v2, "secVideoState":I
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1195
    .local v1, "hasBeenVideoCall":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1196
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1197
    const/4 v0, 0x0

    .line 1204
    .end local v1    # "hasBeenVideoCall":Z
    .end local v2    # "secVideoState":I
    :cond_0
    :goto_0
    return v0

    .line 1199
    .restart local v1    # "hasBeenVideoCall":Z
    .restart local v2    # "secVideoState":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 573
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 574
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/android/incallui/wrapper/ContextWrapper;->createPackageContextAsUserWithInstance(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 577
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 116
    const/4 v2, -0x1

    .line 118
    .local v2, "resId":I
    if-eqz p0, :cond_9

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
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

    .line 121
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 122
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

    .line 123
    const-string v4, "preset_defaultimage_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    const v2, 0x7f020094

    .line 139
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 140
    invoke-static {v0, v2, p0}, Lcom/android/incallui/util/VideoCallUtils;->createImageFileFromResId(Landroid/content/Context;ILjava/lang/String;)V

    .line 147
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 125
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "filePath":Ljava/lang/String;
    :cond_2
    const-string v4, "preset_defaultimage_vga.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 126
    const v2, 0x7f020096

    goto :goto_0

    .line 127
    :cond_3
    const-string v4, "preset_defaultimage_vga_land.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    const v2, 0x7f020097

    goto :goto_0

    .line 129
    :cond_4
    const-string v4, "preset_default_image_qvga_land.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    const v2, 0x7f020095

    goto :goto_0

    .line 131
    :cond_5
    const-string v4, "notify_capturing_vga.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 132
    const v2, 0x7f0202e2

    goto :goto_0

    .line 133
    :cond_6
    const-string v4, "notify_capturing_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 134
    const v2, 0x7f020073

    goto :goto_0

    .line 135
    :cond_7
    const-string v4, "notify_recording_qcif.jpg"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const v2, 0x7f020093

    goto :goto_0

    :cond_8
    move-object v1, v3

    .line 142
    goto :goto_1

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_9
    move-object v1, v3

    .line 147
    goto :goto_1
.end method

.method public static getDisplayMetrics(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1008
    if-eqz p0, :cond_0

    .line 1009
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1010
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1013
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDisplayRotation()I
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 508
    .local v0, "context":Landroid/content/Context;
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 509
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 511
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getExistFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    const/4 v0, 0x0

    .line 705
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

    .line 706
    return-object v0
.end method

.method public static getForegroundCallForVT()Lcom/android/incallui/Call;
    .locals 3

    .prologue
    .line 841
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

    .prologue
    .line 422
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 423
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 427
    const-string v0, "NONE"

    .line 429
    .local v0, "frameSize":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 430
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    .line 431
    .local v1, "resolution":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 432
    const-string v0, "QCIF"

    .line 445
    .end local v1    # "resolution":I
    :cond_0
    :goto_0
    return-object v0

    .line 433
    .restart local v1    # "resolution":I
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 434
    const-string v0, "QVGA"

    goto :goto_0

    .line 435
    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 436
    const-string v0, "QVGALAND"

    goto :goto_0

    .line 437
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 438
    const-string v0, "VGALAND"

    goto :goto_0

    .line 439
    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 440
    const-string v0, "HD720"

    goto :goto_0

    .line 442
    :cond_5
    const-string v0, "VGA"

    goto :goto_0
.end method

.method public static getGrayBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "file_path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 581
    if-nez p0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v1

    .line 582
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 585
    .local v1, "grayScaledBidmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getMediaType(Lcom/android/incallui/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 817
    const/16 v0, 0xf

    .line 818
    .local v0, "mediaType":I
    if-eqz p0, :cond_1

    .line 819
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    .line 820
    .local v1, "resolution":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 821
    const/16 v0, 0xc

    .line 830
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getSecVideoState(Lcom/android/incallui/Call;)I

    move-result v2

    .line 832
    .local v2, "secVideoState":I
    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 833
    const/4 v0, -0x1

    .line 837
    .end local v1    # "resolution":I
    .end local v2    # "secVideoState":I
    :cond_1
    return v0

    .line 822
    .restart local v1    # "resolution":I
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 823
    const/16 v0, 0xd

    goto :goto_0

    .line 824
    :cond_3
    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    .line 825
    const/16 v0, 0xe

    goto :goto_0

    .line 826
    :cond_4
    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    .line 827
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getModifyProgressingCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 768
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 769
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPickedImageTempFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
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

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 172
    .local v2, "imagePath":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "preset_Name":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "presetImageSrc":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "photo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 176
    move-object v2, v3

    .line 198
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

    .line 199
    return-object v2

    .line 177
    :cond_1
    if-eqz v4, :cond_2

    const-string v6, "video"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 178
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_video_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 180
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/util/VideoCallUtils;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 183
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "frameSize":Ljava/lang/String;
    const-string v1, "preset_defaultimage_vga.jpg"

    .line 185
    .local v1, "imageFile":Ljava/lang/String;
    const-string v6, "QCIF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    const-string v1, "preset_defaultimage_qcif.jpg"

    .line 196
    :goto_1
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 187
    :cond_3
    const-string v6, "QVGALAND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 188
    const-string v1, "preset_default_image_qvga_land.jpg"

    goto :goto_1

    .line 189
    :cond_4
    const-string v6, "QVGA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 190
    const-string v1, "preset_defaultimage_vga.jpg"

    goto :goto_1

    .line 191
    :cond_5
    const-string v6, "VGALAND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 192
    const-string v1, "preset_defaultimage_vga_land.jpg"

    goto :goto_1

    .line 194
    :cond_6
    const-string v1, "preset_defaultimage_vga.jpg"

    goto :goto_1
.end method

.method public static getSecVideoState(Lcom/android/incallui/Call;)I
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 751
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    .line 752
    .local v0, "secVideoState":I
    if-eqz p0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    .line 755
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

    .line 756
    return v0
.end method

.method public static getValidFileName(Z)Ljava/lang/String;
    .locals 6
    .param p0, "video"    # Z

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v0, "tempFileName":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->createVideoCallDir()V

    .line 235
    if-eqz p0, :cond_0

    .line 236
    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 240
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
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

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 242
    :cond_0
    sget-object v1, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, 0x0

    .line 520
    const/4 v12, 0x0

    .line 521
    .local v12, "lFilepath":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 522
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

    .line 523
    const-wide/16 v10, 0x0

    .line 524
    .local v10, "id":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 527
    .local v2, "cols":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 528
    .local v6, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 530
    .local v7, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 531
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 533
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 534
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

    .line 541
    :cond_0
    if-eqz v6, :cond_1

    .line 542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2    # "cols":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "id":J
    :cond_1
    :goto_0
    move-object v0, v12

    .line 549
    :goto_1
    return-object v0

    .line 536
    .restart local v2    # "cols":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v10    # "id":J
    :catch_0
    move-exception v8

    .line 541
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    if-eqz v6, :cond_2

    .line 542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    goto :goto_1

    .line 538
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 541
    .local v9, "ex":Ljava/lang/UnsupportedOperationException;
    if-eqz v6, :cond_3

    .line 542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v13

    goto :goto_1

    .line 541
    .end local v9    # "ex":Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 542
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 545
    .end local v2    # "cols":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "context":Landroid/content/Context;
    .end local v10    # "id":J
    :cond_5
    const v0, 0x7f090119

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 546
    const-string v0, "getVideoFileNameFromUri is null"

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getVideoResolution()I
    .locals 4

    .prologue
    .line 449
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 450
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getVideoResolution(Lcom/android/incallui/Call;)I
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 454
    const/4 v0, 0x3

    .line 455
    .local v0, "resolution":I
    if-nez p0, :cond_0

    .line 456
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object p0

    .line 458
    :cond_0
    if-eqz p0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    const/4 v0, 0x1

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v0

    .line 464
    :cond_2
    return v0
.end method

.method public static hasVideoPauseState(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, "state":Z
    if-eqz p0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1233
    :cond_0
    :goto_0
    return v0

    .line 1231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveOrBackgroundCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    .line 1176
    if-nez p0, :cond_1

    .line 1180
    :cond_0
    :goto_0
    return v1

    .line 1179
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 1180
    .local v0, "state":I
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

    .prologue
    .line 787
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 788
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveHasVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAliveHasVideoState(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 792
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 794
    :goto_0
    return v1

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 794
    .local v0, "state":I
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAliveStateForVideo(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 804
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 798
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 800
    :goto_0
    return v1

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 800
    .local v0, "state":I
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isAliveVideoCall()Z
    .locals 4

    .prologue
    .line 776
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 777
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAliveVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 781
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 783
    :goto_0
    return v1

    .line 782
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 783
    .local v0, "state":I
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static isCameraEnabled()Z
    .locals 3

    .prologue
    .line 338
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    .local v0, "context":Landroid/content/Context;
    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v2, "isCameraEnabled"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->isRestrictedByPolicy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x0

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isCameraRestricted()Z
    .locals 2

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "result":Z
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getAllowCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkCameraStartConditionSecurity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 325
    :cond_1
    return v0
.end method

.method public static isConferecedVideoRx(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1184
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1185
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

    .prologue
    const/4 v1, 0x1

    .line 515
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v0

    .line 516
    .local v0, "rotation":I
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
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isForegroundActivity()Z
    .locals 3

    .prologue
    .line 1032
    const/4 v1, 0x0

    .line 1033
    .local v1, "isForegroundActivity":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1034
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v1

    .line 1037
    :cond_0
    return v1
.end method

.method public static isQCIF()Z
    .locals 4

    .prologue
    .line 468
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 469
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isQCIF(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "isQCIF":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQVGA()Z
    .locals 4

    .prologue
    .line 494
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 495
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isQVGA(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isQVGA(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "isQVGA":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 312
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

    .prologue
    .line 481
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 482
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isVGA(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVGA(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, "isVGA":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVideoFile()Z
    .locals 4

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "sendVideoFile":Z
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "preset_Name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 208
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 809
    const-string v0, "SECVT-VideoCallUtils"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "always"    # Z

    .prologue
    .line 813
    const-string v0, "SECVT-VideoCallUtils"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 814
    return-void
.end method

.method public static makeCapureFilePath(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 606
    const/4 v0, 0x0

    .line 607
    .local v0, "fileName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 608
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->createVideoCallDir()V

    .line 609
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 610
    .local v1, "tempFileName":Ljava/lang/StringBuffer;
    sget-object v2, Lcom/android/incallui/util/VideoCallUtils;->VIDEOCALL_DIRECTORY:Ljava/lang/String;

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 612
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    .line 613
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "yyMMdd_kkmmss"

    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    .line 615
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ".jpg"

    .line 615
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .end local v1    # "tempFileName":Ljava/lang/StringBuffer;
    :cond_0
    return-object v0
.end method

.method public static makeFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 674
    if-eqz p0, :cond_0

    .line 675
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

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeFileProviderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 729
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 730
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 733
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :cond_0
    const/4 v0, 0x0

    .line 740
    .local v0, "contentUri":Landroid/net/Uri;
    :try_start_1
    const-string v4, "com.samsung.android.incallui.fileprovider"

    invoke-static {v1, v4, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 741
    const-string v4, "com.sec.sve"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 742
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

    .line 747
    .end local v0    # "contentUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 734
    :catch_0
    move-exception v2

    .line 735
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 744
    .local v2, "e":Ljava/lang/Exception;
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
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 710
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

    .line 711
    const-string v3, "data/data"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "data/user"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->makeFileProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 713
    .local v2, "fileProviderUri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 725
    .end local v2    # "fileProviderUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 718
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_2

    .line 721
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static mediaScan(Ljava/lang/String;)V
    .locals 5
    .param p0, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 554
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 555
    .local v2, "userContext":Landroid/content/Context;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 556
    .local v1, "path":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p0, v1, v3

    .line 558
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v3

    if-nez v3, :cond_1

    .line 559
    move-object v2, v0

    .line 564
    :goto_0
    if-eqz v2, :cond_0

    .line 565
    const/4 v3, 0x0

    new-instance v4, Lcom/android/incallui/util/VideoCallUtils$1;

    invoke-direct {v4}, Lcom/android/incallui/util/VideoCallUtils$1;-><init>()V

    invoke-static {v2, v1, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 570
    :cond_0
    return-void

    .line 561
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    goto :goto_0
.end method

.method public static needToShowHideMeByUi(Ljava/lang/String;)Z
    .locals 3
    .param p0, "captured_image"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 213
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 214
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v2

    if-ne v2, v1, :cond_0

    if-nez p0, :cond_0

    .line 216
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
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
    .param p0, "prevVideoState"    # I
    .param p1, "newVideoState"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 1208
    const/4 v0, 0x0

    .line 1209
    .local v0, "needToUpdate":Z
    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    .line 1210
    const/4 v0, 0x1

    .line 1224
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

    .line 1225
    return v0

    .line 1211
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1212
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1213
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_USC()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1214
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_CAN_COMMON()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1215
    :cond_2
    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    if-ne p0, v2, :cond_0

    :cond_3
    if-ne p1, v3, :cond_0

    .line 1217
    const/4 v0, 0x1

    goto :goto_0

    .line 1219
    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1220
    if-ne p0, v2, :cond_0

    if-ne p1, v3, :cond_0

    .line 1221
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static notifyCameraInfo(II)V
    .locals 3
    .param p0, "prevCallState"    # I
    .param p1, "currCallState"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 1169
    if-ne p1, v2, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    if-ne p1, v1, :cond_3

    if-eq p0, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1171
    .local v0, "bShowCameraInfo":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1172
    const v1, 0x7f0900c4

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 1173
    :cond_2
    return-void

    .line 1169
    .end local v0    # "bShowCameraInfo":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static notifyQualityInfo(II)V
    .locals 14
    .param p0, "prevCallState"    # I
    .param p1, "currCallState"    # I

    .prologue
    .line 1099
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1101
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_SKT()Z

    move-result v7

    .line 1102
    .local v7, "isSKT":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_KTT()Z

    move-result v2

    .line 1103
    .local v2, "isKTT":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_LGU()Z

    move-result v3

    .line 1105
    .local v3, "isLGT":Z
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v10

    .line 1106
    .local v10, "resolution":Ljava/lang/String;
    const/4 v9, -0x1

    .line 1108
    .local v9, "resId":I
    const/4 v8, 0x0

    .line 1110
    .local v8, "isVMSCall":Z
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

    .line 1114
    .local v5, "isLowQualityByNearEnd":Z
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

    .line 1118
    .local v4, "isLowQualityByFarEnd":Z
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

    .line 1122
    .local v6, "isLowQualityByQVGA":Z
    :goto_2
    const/4 v0, 0x0

    .line 1124
    .local v0, "bShowQualityInfo":Z
    if-eqz v7, :cond_b

    .line 1125
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "videocallmessage_settings"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_a

    const/4 v0, 0x0

    .line 1133
    :cond_5
    :goto_3
    if-nez v0, :cond_d

    .line 1166
    :cond_6
    :goto_4
    return-void

    .line 1110
    .end local v0    # "bShowQualityInfo":Z
    .end local v4    # "isLowQualityByFarEnd":Z
    .end local v5    # "isLowQualityByNearEnd":Z
    .end local v6    # "isLowQualityByQVGA":Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 1114
    .restart local v5    # "isLowQualityByNearEnd":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 1118
    .restart local v4    # "isLowQualityByFarEnd":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_2

    .line 1125
    .restart local v0    # "bShowQualityInfo":Z
    .restart local v6    # "isLowQualityByQVGA":Z
    :cond_a
    const/4 v0, 0x1

    goto :goto_3

    .line 1126
    :cond_b
    if-eqz v2, :cond_c

    .line 1127
    const/4 v0, 0x1

    goto :goto_3

    .line 1128
    :cond_c
    if-eqz v3, :cond_5

    .line 1129
    if-nez v8, :cond_5

    .line 1130
    const/4 v0, 0x1

    goto :goto_3

    .line 1136
    :cond_d
    if-eqz v5, :cond_e

    .line 1137
    if-eqz v7, :cond_11

    .line 1138
    const v9, 0x7f09014c

    .line 1145
    :cond_e
    :goto_5
    if-eqz v4, :cond_f

    .line 1146
    if-eqz v7, :cond_13

    .line 1147
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_low_quality_by_far"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 1154
    :cond_f
    :goto_6
    if-eqz v6, :cond_10

    .line 1155
    if-eqz v7, :cond_15

    .line 1156
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_low_quality_by_far"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 1163
    :cond_10
    :goto_7
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 1164
    invoke-static {v9}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_4

    .line 1139
    :cond_11
    if-eqz v2, :cond_12

    .line 1140
    const v9, 0x7f0901bd

    goto :goto_5

    .line 1142
    :cond_12
    const v9, 0x7f09014f

    goto :goto_5

    .line 1148
    :cond_13
    if-eqz v2, :cond_14

    .line 1149
    const v9, 0x7f0901c2

    goto :goto_6

    .line 1151
    :cond_14
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v11

    const-string v12, "kor_psvt_quality_qcif_4g"

    invoke-virtual {v11, v1, v12}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    goto :goto_6

    .line 1157
    :cond_15
    if-eqz v2, :cond_16

    .line 1158
    const v9, 0x7f0901c1

    goto :goto_7

    .line 1160
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
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 1078
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    .line 1079
    .local v0, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->onReceivedMessageFromTelecom(Ljava/lang/String;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public static requestLowFPS(Z)V
    .locals 5
    .param p0, "enable"    # Z

    .prologue
    .line 943
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 944
    .local v1, "context":Landroid/content/Context;
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

    .line 945
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 946
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    const-string v2, "SSRM_STATUS_NAME"

    const-string v3, "Phone_vtCall"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    const-string v2, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    const-string v2, "PackageName"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    const-string v2, "PID"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 952
    return-void
.end method

.method public static requestPickImageToGallery()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 955
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 956
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 957
    const-string v2, "requestPickImageToGallery - failed because of low memory"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    .line 958
    const v2, 0x7f0901d5

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 973
    :goto_0
    return-void

    .line 961
    :cond_0
    if-nez v0, :cond_1

    .line 962
    const-string v2, "requestPickImageToGallery - failed because primary call is not exist"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 965
    :cond_1
    const-string v2, "requestPickImageToGallery"

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    .line 966
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/incallui/util/PickImageFromGallery;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 967
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "senderIsVideoCall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 968
    const-string v2, "imageSelected"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 969
    const-string v2, "resolution"

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const-string v2, "file_path"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPickedImageTempFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 972
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    .line 391
    if-nez p0, :cond_1

    .line 392
    const/4 p0, 0x0

    .line 410
    .end local p0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 394
    .restart local p0    # "image":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 395
    .local v2, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 397
    .local v0, "h":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    .line 398
    if-gt v2, p1, :cond_2

    if-le v0, p2, :cond_0

    .line 403
    :cond_2
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 404
    .local v1, "ratio":F
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int p1, v3

    .line 405
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int p2, v3

    .line 406
    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 407
    :cond_3
    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 409
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

    .line 410
    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "frameSize"    # Ljava/lang/String;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const/4 v2, 0x0

    .line 387
    :goto_0
    return-object v2

    .line 370
    :cond_0
    const/16 v1, 0xb0

    .line 371
    .local v1, "dw":I
    const/16 v0, 0x90

    .line 373
    .local v0, "dh":I
    const-string v2, "VGA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const/16 v1, 0x1e0

    .line 375
    const/16 v0, 0x280

    .line 387
    :cond_1
    :goto_1
    invoke-static {p0, v1, v0}, Lcom/android/incallui/util/VideoCallUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 376
    :cond_2
    const-string v2, "VGALAND"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    const/16 v1, 0x280

    .line 378
    const/16 v0, 0x1e0

    goto :goto_1

    .line 379
    :cond_3
    const-string v2, "QVGALAND"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    const/16 v1, 0x140

    .line 381
    const/16 v0, 0xf0

    goto :goto_1

    .line 382
    :cond_4
    const-string v2, "QVGA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const/16 v1, 0xf0

    .line 384
    const/16 v0, 0x140

    goto :goto_1
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 641
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-eqz v1, :cond_0

    .line 647
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/io/IOException;
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

    .line 642
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/io/IOException;
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

    .line 646
    if-eqz v1, :cond_0

    .line 647
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 649
    :catch_2
    move-exception v0

    .line 650
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

    .line 645
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 646
    if-eqz v1, :cond_1

    .line 647
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 651
    :cond_1
    :goto_1
    throw v2

    .line 649
    :catch_3
    move-exception v0

    .line 650
    .restart local v0    # "e":Ljava/io/IOException;
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
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 656
    const/4 v1, 0x0

    .line 658
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 664
    if-eqz v2, :cond_0

    .line 665
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 671
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 667
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
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

    .line 670
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 660
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 661
    .restart local v0    # "e":Ljava/io/IOException;
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

    .line 664
    if-eqz v1, :cond_1

    .line 665
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 667
    :catch_2
    move-exception v0

    .line 668
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

    .line 663
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 664
    :goto_2
    if-eqz v1, :cond_2

    .line 665
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 669
    :cond_2
    :goto_3
    throw v3

    .line 667
    :catch_3
    move-exception v0

    .line 668
    .restart local v0    # "e":Ljava/io/IOException;
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

    .line 663
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 660
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static saveSurfaceImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "surface"    # I

    .prologue
    .line 622
    if-nez p0, :cond_0

    .line 623
    const-string v1, "VideoCallUtils - saveSurfaceImage - error"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x0

    .line 634
    :goto_0
    return-object v0

    .line 627
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

    .line 628
    .local v0, "file_name":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_display_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_1
    invoke-static {p1, v0}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 631
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

    .prologue
    .line 976
    const-string v1, "In selectVideoFromMyFiles method"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    .line 977
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/incallui/util/PickImageFromGallery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    .local v0, "mVideoIntent":Landroid/content/Intent;
    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    const-string v1, "imageSelected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 980
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 981
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 982
    const-string v1, "Out selectVideoFromMyFiles method"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->log(Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public static sendPickedImage()V
    .locals 2

    .prologue
    .line 1064
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    .line 1065
    .local v0, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->sendPickedImage()V

    .line 1068
    :cond_0
    return-void
.end method

.method public static sendPickedVideo(Landroid/net/Uri;)V
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .prologue
    .line 1071
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    .line 1072
    .local v0, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoCallPresenter;->sendPickedVideo(Landroid/net/Uri;)V

    .line 1075
    :cond_0
    return-void
.end method

.method public static setRequestedOrientation(I)V
    .locals 2
    .param p0, "requestedOrientation"    # I

    .prologue
    .line 1085
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 1086
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 1087
    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 1089
    :cond_0
    return-void
.end method

.method public static setSmartAnswered(Z)V
    .locals 3
    .param p0, "smartAnswered"    # Z

    .prologue
    .line 1017
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1019
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

    .line 1021
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    const/16 v0, 0x68

    .line 1023
    .local v0, "event":I
    if-eqz p0, :cond_2

    .line 1024
    const/16 v0, 0x67

    .line 1027
    :cond_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    goto :goto_0
.end method

.method public static showRecordResult(Lcom/android/incallui/Call;)V
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 986
    if-eqz p0, :cond_1

    .line 987
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    .line 988
    .local v0, "adapter":Lcom/android/incallui/service/vt/VideoCallAdapter;
    if-eqz v0, :cond_1

    .line 989
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getFarEndRecordFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getFarEndRecordFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->showVideoRecordFileName(Ljava/lang/String;Z)V

    .line 993
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->resetRecordInfo()V

    .line 997
    .end local v0    # "adapter":Lcom/android/incallui/service/vt/VideoCallAdapter;
    :cond_1
    return-void
.end method

.method private static showVideoRecordFileName(Ljava/lang/String;Z)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "isForceStopped"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1000
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

    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090316

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1005
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090315

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
    .param p0, "isFarEnd"    # Z

    .prologue
    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "startRecording":Z
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v1

    .line 1050
    .local v1, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v1, :cond_0

    .line 1051
    invoke-virtual {v1, p0}, Lcom/android/incallui/VideoCallPresenter;->startRecord(Z)Z

    move-result v0

    .line 1053
    :cond_0
    return v0
.end method

.method public static stopRecord()V
    .locals 2

    .prologue
    .line 1057
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getVideoCallPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    .line 1058
    .local v0, "videoCallPresenter":Lcom/android/incallui/VideoCallPresenter;
    if-eqz v0, :cond_0

    .line 1059
    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->stopRecord()V

    .line 1061
    :cond_0
    return-void
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 592
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 593
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 594
    .local v6, "width":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 595
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 596
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 597
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 598
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v2, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 599
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 600
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 601
    invoke-virtual {v1, p0, v8, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 602
    return-object v0
.end method
