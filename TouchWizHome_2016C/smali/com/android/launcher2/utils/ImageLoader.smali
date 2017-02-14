.class public abstract Lcom/android/launcher2/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;,
        Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final FADE_IN_TIME:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mFadeInBitmap:Z

.field private mImageCache:Lcom/android/launcher2/utils/ImageCache;

.field private mImageSize:I

.field private mLoadingBitmap:Landroid/graphics/Bitmap;

.field private mPauseWork:Z

.field private final mPauseWorkLock:Ljava/lang/Object;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mFadeInBitmap:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWork:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageSize:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/utils/ImageLoader;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/utils/ImageLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWork:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/utils/ImageLoader;)Lcom/android/launcher2/utils/ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/utils/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/utils/ImageLoader;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher2/utils/ImageLoader;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x1

    if-gt v0, p2, :cond_0

    if-le v5, p1, :cond_2

    :cond_0
    int-to-float v7, v0

    int-to-float v8, p2

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v7, v5

    int-to-float v8, p1

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ge v1, v6, :cond_1

    move v2, v1

    :goto_0
    mul-int v7, v5, v0

    int-to-float v3, v7

    mul-int v7, p1, p2

    mul-int/lit8 v7, v7, 0x2

    int-to-float v4, v7

    :goto_1
    mul-int v7, v2, v2

    int-to-float v7, v7

    div-float v7, v3, v7

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 6

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/launcher2/utils/ImageLoader;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    move-result-object v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->data:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->access$000(Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->cancel(Z)Z

    const-string v3, "WP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelPotentialWork - cancelled work for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static cancelWork(Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/utils/ImageLoader;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/utils/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;

    invoke-virtual {v0}, Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;->getBitmapWorkerTask()Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    iget-boolean v1, p0, Lcom/android/launcher2/utils/ImageLoader;->mFadeInBitmap:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/launcher2/utils/ImageLoader;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addImageCache(Landroid/support/v4/app/FragmentManager;F)V
    .locals 1

    invoke-static {p1, p2}, Lcom/android/launcher2/utils/ImageCache;->getInstance(Landroid/support/v4/app/FragmentManager;F)Lcom/android/launcher2/utils/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;

    return-void
.end method

.method public getImageSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageSize:I

    return v0
.end method

.method public loadImage(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 6

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/utils/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/utils/ImageLoader;->mImageCache:Lcom/android/launcher2/utils/ImageCache;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/utils/ImageCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v3, "WP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PERF:cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/android/launcher2/utils/ImageLoader;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;-><init>(Lcom/android/launcher2/utils/ImageLoader;Landroid/widget/ImageView;)V

    new-instance v0, Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;

    iget-object v3, p0, Lcom/android/launcher2/utils/ImageLoader;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/launcher2/utils/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v3, v4, v2}, Lcom/android/launcher2/utils/ImageLoader$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/utils/ImageLoader$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected abstract processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method public setImageFadeIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/utils/ImageLoader;->mFadeInBitmap:Z

    return-void
.end method

.method public setLoadingImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mLoadingBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPauseWork(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWork:Z

    iget-boolean v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWork:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageLoader;->mPauseWorkLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
