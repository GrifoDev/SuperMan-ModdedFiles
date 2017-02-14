.class Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/utils/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/utils/ImageLoader;Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->data:Ljava/lang/Object;

    return-object v0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    # invokes: Lcom/android/launcher2/utils/ImageLoader;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;
    invoke-static {v1}, Lcom/android/launcher2/utils/ImageLoader;->access$500(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    move-result-object v0

    if-ne p0, v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    aget-object v2, p1, v4

    iput-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->data:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher2/utils/ImageLoader;->access$100(Lcom/android/launcher2/utils/ImageLoader;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mPauseWork:Z
    invoke-static {v2}, Lcom/android/launcher2/utils/ImageLoader;->access$200(Lcom/android/launcher2/utils/ImageLoader;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher2/utils/ImageLoader;->access$100(Lcom/android/launcher2/utils/ImageLoader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/utils/ImageLoader;->processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "WP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitmapWorker doInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;
    invoke-static {v2}, Lcom/android/launcher2/utils/ImageLoader;->access$300(Lcom/android/launcher2/utils/ImageLoader;)Lcom/android/launcher2/utils/ImageCache;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;
    invoke-static {v2}, Lcom/android/launcher2/utils/ImageLoader;->access$300(Lcom/android/launcher2/utils/ImageLoader;)Lcom/android/launcher2/utils/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/utils/ImageCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_2
    const-string v2, "WP"

    const-string v3, "BitmapWorker doInBackground: BMP is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/utils/ImageLoader;->access$100(Lcom/android/launcher2/utils/ImageLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # getter for: Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/launcher2/utils/ImageLoader;->access$100(Lcom/android/launcher2/utils/ImageLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->this$0:Lcom/android/launcher2/utils/ImageLoader;

    # invokes: Lcom/android/launcher2/utils/ImageLoader;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0, p1}, Lcom/android/launcher2/utils/ImageLoader;->access$400(Lcom/android/launcher2/utils/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
