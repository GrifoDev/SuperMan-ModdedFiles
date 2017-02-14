.class Lcom/android/launcher2/HomeRealPreview$CompressTask;
.super Landroid/os/AsyncTask;
.source "HomeRealPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeRealPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeRealPreview;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/HomeRealPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/HomeRealPreview;Lcom/android/launcher2/HomeRealPreview$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeRealPreview$CompressTask;-><init>(Lcom/android/launcher2/HomeRealPreview;)V

    return-void
.end method

.method private saveMainHomeScreen()Z
    .locals 11

    const/16 v9, 0x64

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeRealPreview;->getCurrentOrientation()I

    move-result v1

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$000(Lcom/android/launcher2/HomeRealPreview;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    if-ne v1, v6, :cond_7

    move v2, v5

    :goto_1
    if-nez v2, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$100(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$200(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_3
    const-string v6, "capture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveMainHomeScreen start canCapture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v8}, Lcom/android/launcher2/HomeRealPreview;->access$300(Lcom/android/launcher2/HomeRealPreview;)Lcom/android/launcher2/HomeView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->canCapture()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v2, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$200(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "capture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveMainHomeScreen compress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_0

    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    if-eqz v2, :cond_9

    const-string v0, "homescreenPreview_capturetime_land"

    :goto_3
    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J
    invoke-static {v7}, Lcom/android/launcher2/HomeRealPreview;->access$400(Lcom/android/launcher2/HomeRealPreview;)J

    move-result-wide v8

    invoke-static {v6, v0, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    const-wide/16 v8, 0x0

    # setter for: Lcom/android/launcher2/HomeRealPreview;->mCaptureTime:J
    invoke-static {v6, v8, v9}, Lcom/android/launcher2/HomeRealPreview;->access$402(Lcom/android/launcher2/HomeRealPreview;J)J

    if-eqz v2, :cond_a

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$200(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$200(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # setter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmapLand:Landroid/graphics/Bitmap;
    invoke-static {v6, v10}, Lcom/android/launcher2/HomeRealPreview;->access$202(Lcom/android/launcher2/HomeRealPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # setter for: Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshotLand:Z
    invoke-static {v6, v4}, Lcom/android/launcher2/HomeRealPreview;->access$002(Lcom/android/launcher2/HomeRealPreview;Z)Z

    :goto_5
    iget-object v4, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    iget-object v4, v4, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    iget-object v4, v4, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    iput-object v10, v4, Lcom/android/launcher2/HomeRealPreview;->mRootView:Landroid/view/View;

    move v4, v5

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$100(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, v7, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto/16 :goto_2

    :cond_9
    const-string v0, "homescreenPreview_capturetime"

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$100(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # getter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/launcher2/HomeRealPreview;->access$100(Lcom/android/launcher2/HomeRealPreview;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # setter for: Lcom/android/launcher2/HomeRealPreview;->mainHomeBitmap:Landroid/graphics/Bitmap;
    invoke-static {v6, v10}, Lcom/android/launcher2/HomeRealPreview;->access$102(Lcom/android/launcher2/HomeRealPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/launcher2/HomeRealPreview$CompressTask;->this$0:Lcom/android/launcher2/HomeRealPreview;

    # setter for: Lcom/android/launcher2/HomeRealPreview;->mMainHomeScreenshot:Z
    invoke-static {v6, v4}, Lcom/android/launcher2/HomeRealPreview;->access$502(Lcom/android/launcher2/HomeRealPreview;Z)Z

    goto :goto_5

    :catch_0
    move-exception v6

    goto :goto_4
.end method

.method private saveToFileCaptureScreen(Ljava/io/ByteArrayOutputStream;Z)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    :cond_1
    :goto_1
    return v7

    :catch_0
    move-exception v2

    const-string v8, "capture"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Launcher.getInstance() is invalid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/homescreenPreviewLand.png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    const-string v7, "capture"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveToFileCaptureScreen ret : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SCREENSHOT_FILE_PATH : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v4, v5

    :cond_4
    :goto_3
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/homescreenPreview.png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v2

    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_6

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_7
    throw v7

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_6

    :catch_7
    move-exception v2

    move-object v4, v5

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v4, v5

    goto :goto_4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->saveMainHomeScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "capture"

    const-string v1, "cancelled capturetask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "capture"

    const-string v1, "save fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeRealPreview$CompressTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
