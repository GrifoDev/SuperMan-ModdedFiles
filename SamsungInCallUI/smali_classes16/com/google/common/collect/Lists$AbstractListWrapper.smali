.class Lcom/google/common/collect/Lists$AbstractListWrapper;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p1, "backingList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 1143
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    .line 1144
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1149
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1153
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1173
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1158
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 1163
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1178
    .local p0, "this":Lcom/google/common/collect/Lists$AbstractListWrapper;, "Lcom/google/common/collect/Lists$AbstractListWrapper<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$AbstractListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
