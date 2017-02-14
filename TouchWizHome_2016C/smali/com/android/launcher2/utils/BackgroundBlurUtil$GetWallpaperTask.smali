.class Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;
.super Landroid/os/AsyncTask;
.source "BackgroundBlurUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/utils/BackgroundBlurUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetWallpaperTask"
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
.field private mWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;Lcom/android/launcher2/utils/BackgroundBlurUtil$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;-><init>(Lcom/android/launcher2/utils/BackgroundBlurUtil;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # invokes: Lcom/android/launcher2/utils/BackgroundBlurUtil;->getWallpaperBitmap()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$400(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    # invokes: Lcom/android/launcher2/utils/BackgroundBlurUtil;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$500(Lcom/android/launcher2/utils/BackgroundBlurUtil;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$600(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->this$0:Lcom/android/launcher2/utils/BackgroundBlurUtil;

    # getter for: Lcom/android/launcher2/utils/BackgroundBlurUtil;->mWallpaperBlurView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->access$100(Lcom/android/launcher2/utils/BackgroundBlurUtil;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher2/utils/BackgroundBlurUtil$GetWallpaperTask;->mWallpaperBlurBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
