.class Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;
.super Landroid/os/AsyncTask;
.source "HomeBlurUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/utils/HomeBlurUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetBlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mTimeStamp:J

.field final synthetic this$0:Lcom/android/launcher2/utils/HomeBlurUtil;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/utils/HomeBlurUtil;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mTimeStamp:J

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doInBackground()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    invoke-virtual {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->getPreview()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doInBackground: mPreviewBitmap is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # setter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z
    invoke-static {v2, v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$202(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mInstance:Lcom/android/launcher2/utils/HomeBlurUtil;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$500()Lcom/android/launcher2/utils/HomeBlurUtil;

    move-result-object v2

    # invokes: Lcom/android/launcher2/utils/HomeBlurUtil;->blur(Z)Z
    invoke-static {v2, v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$600(Lcom/android/launcher2/utils/HomeBlurUtil;Z)Z

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    iget-object v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/android/launcher2/utils/HomeBlurUtil;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$700(Lcom/android/launcher2/utils/HomeBlurUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$900(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1000(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1000(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to drawBitmap() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1100(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1200(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mNonBlurRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$800(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1200(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancelled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlurView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTargetView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mIsFolderItem:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$900(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mFolderMarginTop:I
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1000(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    :goto_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1500(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$200(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mTargetView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1300(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Execution time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mTimeStamp:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mIsHomeItem:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1400(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mIsAppsItem:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1100(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mStatusBarHeight:I
    invoke-static {v2}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$1200(Lcom/android/launcher2/utils/HomeBlurUtil;)I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mAnimated:Z
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$200(Lcom/android/launcher2/utils/HomeBlurUtil;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->this$0:Lcom/android/launcher2/utils/HomeBlurUtil;

    # getter for: Lcom/android/launcher2/utils/HomeBlurUtil;->mBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/HomeBlurUtil;->access$100(Lcom/android/launcher2/utils/HomeBlurUtil;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher2/utils/HomeBlurUtil$GetBlurTask;->mBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method
