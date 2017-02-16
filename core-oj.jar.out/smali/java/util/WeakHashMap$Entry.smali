.class Ljava/util/WeakHashMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field next:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;ILjava/util/WeakHashMap$Entry;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p5, "next":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 696
    iput-object p2, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 697
    iput p4, p0, Ljava/util/WeakHashMap$Entry;->hash:I

    .line 698
    iput-object p5, p0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 694
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    const/4 v6, 0x0

    .line 717
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_0

    .line 718
    return v6

    :cond_0
    move-object v0, p1

    .line 719
    check-cast v0, Ljava/util/Map$Entry;

    .line 720
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 721
    .local v1, "k1":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 722
    .local v2, "k2":Ljava/lang/Object;
    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 723
    :cond_1
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 724
    .local v3, "v1":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 725
    .local v4, "v2":Ljava/lang/Object;
    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 726
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 728
    .end local v3    # "v1":Ljava/lang/Object;, "TV;"
    .end local v4    # "v2":Ljava/lang/Object;
    :cond_3
    return v6
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    const/4 v2, 0x0

    .line 732
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 733
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 734
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    move v3, v2

    .line 735
    :goto_0
    if-nez v1, :cond_1

    .line 734
    :goto_1
    xor-int/2addr v2, v3

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 735
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 712
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 713
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    .local p0, "this":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap<TK;TV;>.Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/WeakHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
