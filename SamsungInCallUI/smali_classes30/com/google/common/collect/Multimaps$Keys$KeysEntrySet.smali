.class Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
.super Lcom/google/common/collect/Multisets$EntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeysEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$EntrySet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Multimaps$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$Keys;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    iget-object v3, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v3}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v2, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    iget-object v2, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    iget-object v2, v2, Lcom/google/common/collect/Multimaps$Keys;->multimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;->this$0:Lcom/google/common/collect/Multimaps$Keys;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$Keys;->distinctElements()I

    move-result v0

    return v0
.end method
