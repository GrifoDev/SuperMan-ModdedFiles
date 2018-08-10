.class Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;
.super Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.source "SeslArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->getCollection()Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/util/SeslMapCollections",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap$1;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
