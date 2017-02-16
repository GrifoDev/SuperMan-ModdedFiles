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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mName:Ljava/lang/String;

    .line 41
    rem-int/lit16 v0, p2, 0x2710

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mHashCode:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public addCache(Landroid/graphics/Bitmap;I)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dpi"    # I

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 57
    .local v4, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 59
    .local v3, "height":I
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "hasCache":Z
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cache$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 62
    .local v0, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v5, v3, :cond_0

    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v5, p2, :cond_0

    .line 63
    const/4 v2, 0x1

    .line 68
    .end local v0    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_1
    if-nez v2, :cond_2

    .line 69
    iget-object v5, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    invoke-direct {v7, p1, p2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    .line 55
    return-void

    .line 59
    .end local v1    # "cache$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getCache(III)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "cache$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 79
    .local v1, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->width:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->height:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    if-ne v3, p3, :cond_0

    .line 80
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_1
    monitor-exit v4

    .line 86
    return-object v0

    .line 77
    .end local v2    # "cache$iterator":Ljava/util/Iterator;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public lock(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cache$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 95
    .local v0, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_2
    monitor-exit v3

    .line 102
    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_3

    .line 103
    const-string/jumbo v2, "SprDrawable"

    const-string/jumbo v3, "-lock--------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    .line 89
    :cond_3
    return-void

    .line 93
    .end local v1    # "cache$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public printDebug()V
    .locals 6

    .prologue
    .line 45
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 46
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

    .line 47
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cache$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 48
    .local v0, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
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

    .line 49
    const-string/jumbo v5, "["

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->dpi:I

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    const-string/jumbo v5, "]) "

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    iget v5, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    .end local v0    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    .end local v1    # "cache$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 51
    .restart local v1    # "cache$iterator":Ljava/util/Iterator;
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

    .line 44
    return-void
.end method

.method public unlock(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cache$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;

    .line 114
    .local v0, "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    iget-object v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, p1, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->unlock()V

    .line 116
    iget v2, v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;->refCount:I

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->mCacheList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    const/4 v0, 0x0

    .end local v0    # "cache":Lcom/samsung/android/graphics/spr/cache/SprCacheManager$SprCache;
    :cond_2
    monitor-exit v3

    .line 125
    sget-boolean v2, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v2, :cond_3

    .line 126
    const-string/jumbo v2, "SprDrawable"

    const-string/jumbo v3, "-unlock------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    .line 108
    :cond_3
    return-void

    .line 112
    .end local v1    # "cache$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
