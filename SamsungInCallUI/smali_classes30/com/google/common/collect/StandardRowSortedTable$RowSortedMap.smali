.class Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;
.super Lcom/google/common/collect/StandardTable$RowMap;
.source "StandardRowSortedTable.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardRowSortedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/StandardTable",
        "<TR;TC;TV;>.RowMap;",
        "Ljava/util/SortedMap",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/StandardRowSortedTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;)V
    .locals 0

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    iput-object p1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$RowMap;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardRowSortedTable;Lcom/google/common/collect/StandardRowSortedTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/StandardRowSortedTable;
    .param p2, "x1"    # Lcom/google/common/collect/StandardRowSortedTable$1;

    .prologue
    .line 95
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;-><init>(Lcom/google/common/collect/StandardRowSortedTable;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->createKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    new-instance v0, Lcom/google/common/collect/Maps$SortedKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    .local p1, "toKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    invoke-super {p0}, Lcom/google/common/collect/StandardTable$RowMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v0}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TR;"
    .local p2, "toKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;, "Lcom/google/common/collect/StandardRowSortedTable<TR;TC;TV;>.RowSortedMap;"
    .local p1, "fromKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    # invokes: Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/google/common/collect/StandardRowSortedTable;->access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardRowSortedTable$RowSortedMap;->this$0:Lcom/google/common/collect/StandardRowSortedTable;

    iget-object v2, v2, Lcom/google/common/collect/StandardRowSortedTable;->factory:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardRowSortedTable;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    invoke-virtual {v0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
