.class final Lcom/google/common/collect/Sets$CartesianSet;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lcom/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;",
            "Lcom/google/common/collect/CartesianList",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iput-object p2, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TE;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v4, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/ImmutableList;)V

    new-instance v6, Lcom/google/common/collect/Sets$CartesianSet;

    new-instance v7, Lcom/google/common/collect/CartesianList;

    invoke-direct {v7, v4}, Lcom/google/common/collect/CartesianList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v6, v0, v7}, Lcom/google/common/collect/Sets$CartesianSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/CartesianList;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->delegate:Lcom/google/common/collect/CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v5, v0, -0x1

    xor-int/lit8 v0, v5, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iget-object v5, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    mul-int/lit8 v5, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v6

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    div-int/2addr v6, v7

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v7

    mul-int/2addr v6, v7

    add-int v2, v5, v6

    xor-int/lit8 v5, v2, -0x1

    xor-int/lit8 v2, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v0

    xor-int/lit8 v5, v2, -0x1

    xor-int/lit8 v5, v5, -0x1

    return v5
.end method
