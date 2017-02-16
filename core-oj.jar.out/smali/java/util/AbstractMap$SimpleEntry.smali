.class public Ljava/util/AbstractMap$SimpleEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x75f5135a03a97fe1L


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 586
    iput-object p2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 597
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 595
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 653
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    .line 654
    return v1

    :cond_0
    move-object v0, p1

    .line 655
    check-cast v0, Ljava/util/Map$Entry;

    .line 656
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/AbstractMap;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/AbstractMap;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

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
    .line 615
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 673
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 674
    :goto_0
    iget-object v2, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 673
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 674
    :cond_1
    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

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
    .line 626
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 627
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 628
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    .local p0, "this":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap<TK;TV;>.SimpleEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
