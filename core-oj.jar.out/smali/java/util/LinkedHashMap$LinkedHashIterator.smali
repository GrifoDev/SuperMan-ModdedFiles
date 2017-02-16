.class abstract Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedHashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    .prologue
    .line 383
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 392
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashIterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 395
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-eq v1, v2, :cond_0

    .line 411
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 412
    :cond_0
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->-get1(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 413
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 415
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 416
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->nextEntry:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 417
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator<TT;>;"
    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 401
    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    iget v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 402
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 404
    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iput-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 406
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 398
    return-void
.end method
