.class public Lcom/samsung/android/graphics/spr/cache/SprCacheManager;
.super Ljava/lang/Object;
.source "SprCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    }
.end annotation


# instance fields
.field private mCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;",
            ">;"
        }
    .end annotation
.end field

.field private mHashCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    rem-int/lit16 v0, p2, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCache(Landroid/graphics/Bitmap;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v6

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v5, v4, :cond_1

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v5, v3, :cond_1

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v5, p2, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getCache(III)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v3, p3, :cond_0

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    return-object v0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public lock(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SprDrawable"

    const-string/jumbo v3, "-lock--------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public printDebug()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "SprDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " printDebug start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    const-string/jumbo v2, "SprDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Cache ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "SprDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " printDebug end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method public unlock(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    iget-object v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->unlock()V

    iget v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_2
    monitor-exit v3

    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SprDrawable"

    const-string/jumbo v3, "-unlock------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
