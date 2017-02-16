.class Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
.super Ljava/lang/Object;
.source "SprCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/cache/SprCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SprCache"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final dpi:I

.field public final height:I

.field public refCount:I

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "d"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    .line 18
    iput-object p1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    .line 20
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    .line 21
    iput p2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    .line 23
    iput v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    .line 17
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 27
    :try_start_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 26
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 31
    :try_start_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 30
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
