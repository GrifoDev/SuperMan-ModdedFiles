.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 3

    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v1, p1, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    iget v1, p1, Ljava/util/HashMap;->size:I

    if-lez v1, :cond_1

    iget-object v0, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    :cond_0
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iget v3, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_0
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v1, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    :cond_2
    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$HashMapEntry;

    if-eqz v2, :cond_2

    :cond_3
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    return-object v0
.end method

.method public remove()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iget v2, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    iget-object v0, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$HashMapEntry;

    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->removeEntryForKey(Ljava/lang/Object;)Ljava/util/Map$Entry;

    iget-object v1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    return-void
.end method
