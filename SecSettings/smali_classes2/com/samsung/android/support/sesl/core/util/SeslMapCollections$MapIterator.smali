.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEnd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v3, :cond_1

    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    move v1, v2

    :cond_0
    return v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This container does not support retaining Map.Entry objects"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v5, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/sesl/core/util/SeslContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEnd:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v4, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    xor-int/2addr v2, v3

    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move v3, v2

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEnd:I

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mEntryValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
