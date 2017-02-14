.class public Lcom/android/launcher2/utils/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/utils/ImageCache$RetainFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageCache"


# instance fields
.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/launcher2/utils/ImageCache;->init(F)V

    return-void
.end method

.method public static calculateMemCacheSize(F)I
    .locals 2

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/android/launcher2/utils/ImageCache$RetainFragment;
    .locals 3

    const-string v1, "ImageCache"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/utils/ImageCache$RetainFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/ImageCache$RetainFragment;

    invoke-direct {v0}, Lcom/android/launcher2/utils/ImageCache$RetainFragment;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ImageCache"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-object v0
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;F)Lcom/android/launcher2/utils/ImageCache;
    .locals 1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/ImageCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/utils/ImageCache;-><init>(F)V

    :cond_0
    return-object v0
.end method

.method private init(F)V
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/utils/ImageCache;->calculateMemCacheSize(F)I

    move-result v0

    new-instance v1, Lcom/android/launcher2/utils/ImageCache$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/utils/ImageCache$1;-><init>(Lcom/android/launcher2/utils/ImageCache;I)V

    iput-object v1, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-void
.end method


# virtual methods
.method public addBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/utils/ImageCache;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
