.class final Lcom/google/common/cache/LocalCache$WeakAccessEntry;
.super Lcom/google/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 1406
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1419
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1432
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1402
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .prologue
    .line 1410
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1423
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1415
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->accessTime:J

    .line 1416
    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->nextAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1429
    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1441
    .local p0, "this":Lcom/google/common/cache/LocalCache$WeakAccessEntry;, "Lcom/google/common/cache/LocalCache$WeakAccessEntry<TK;TV;>;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WeakAccessEntry;->previousAccess:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 1442
    return-void
.end method
