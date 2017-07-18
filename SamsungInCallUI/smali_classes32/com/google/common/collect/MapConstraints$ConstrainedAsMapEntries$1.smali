.class Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "MapConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries$1;->this$0:Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    invoke-static {v0}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;->access$600(Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;)Lcom/google/common/collect/MapConstraint;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/MapConstraints;->access$700(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
