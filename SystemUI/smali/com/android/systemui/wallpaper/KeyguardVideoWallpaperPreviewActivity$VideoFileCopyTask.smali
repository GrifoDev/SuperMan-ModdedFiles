.class Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;
.super Landroid/os/AsyncTask;
.source "KeyguardVideoWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFileCopyTask"
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
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;-><init>(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)V

    return-void
.end method


# virtual methods
.method cancelTask()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get3(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get5(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v5, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    invoke-virtual {v5, v9, v3}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.doInBackground() set completed from theme"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doInBackground() return false - service is not bounded"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v6}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->setupAdditionalFileInfo(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->getVideoFileDescriptorAsUser()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v5, :cond_4

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doInBackground() return false - copy fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->deleteVideoFile(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "VideoFileCopyTask.doInBackground() delete file complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-eqz v5, :cond_7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->renameVideoFile()Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->setVideoLockscreenWallpaperAsOwner()V

    sget-object v5, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "VideoFileCopyTask.doInBackground() set completed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 8

    const/4 v7, 0x1

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "VideoFileCopyTask.onCancelled()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->isVideoFileExists(Z)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->renameVideoFile()Z

    move-result v2

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "VideoFileCopyTask.onCancelled() forced set video because origin file is lost, success = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get4(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/wallpaper/video/VideoFileSaveServiceWrapper;->deleteVideoFile(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "VideoFileCopyTask.onCancelled() delete file complete"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VideoFileCopyTask.onPostExecute() success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->mIsCancelled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const-string/jumbo v1, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v1, v4, v3}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap1(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const-string/jumbo v1, "lockscreen_wallpaper"

    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1206ea

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity$VideoFileCopyTask;->this$0:Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;->-get2(Lcom/android/systemui/wallpaper/KeyguardVideoWallpaperPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
