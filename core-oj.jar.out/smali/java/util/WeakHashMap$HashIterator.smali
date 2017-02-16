.class abstract Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
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
.field private currentKey:Ljava/lang/Object;

.field private entry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private index:I

.field private lastReturned:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;

.field final synthetic this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;)V
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    .local p1, "this$0":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 761
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 746
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 747
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 753
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 759
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 762
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 761
    return-void

    .line 762
    :cond_0
    iget-object v0, p1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 766
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v2, v3, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 768
    .local v2, "t":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 769
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 770
    .local v0, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 771
    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 772
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v2, v1

    goto :goto_1

    .line 773
    :cond_1
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 774
    iput v1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 775
    if-nez v0, :cond_2

    .line 776
    iput-object v4, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 777
    return v5

    .line 779
    :cond_2
    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 780
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 781
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v3, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    .line 783
    .end local v0    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v1    # "i":I
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method protected nextEntry()Ljava/util/WeakHashMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v2, 0x0

    .line 788
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 789
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 793
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 794
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 795
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 796
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 797
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    return-object v0

    .line 791
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    const/4 v2, 0x0

    .line 801
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 803
    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 804
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 806
    :cond_1
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 808
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 809
    iput-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 800
    return-void
.end method
