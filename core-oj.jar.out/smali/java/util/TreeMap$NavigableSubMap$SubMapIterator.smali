.class abstract Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$NavigableSubMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SubMapIterator"
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

.field final fenceKey:Ljava/lang/Object;

.field lastReturned:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/TreeMap$TreeMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Ljava/util/TreeMap$NavigableSubMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$NavigableSubMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object p2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/TreeMap;->-get0()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v1, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final nextEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_2
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    return-object v0
.end method

.method final prevEntry()Ljava/util/TreeMap$TreeMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->fenceKey:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v1, v1, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_2
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    return-object v0
.end method

.method final removeAscending()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iput-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->next:Ljava/util/TreeMap$TreeMapEntry;

    :cond_2
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    return-void
.end method

.method final removeDescending()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    iput-object v2, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    iget-object v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->this$1:Ljava/util/TreeMap$NavigableSubMap;

    iget-object v0, v0, Ljava/util/TreeMap$NavigableSubMap;->m:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$NavigableSubMap$SubMapIterator;->expectedModCount:I

    return-void
.end method
