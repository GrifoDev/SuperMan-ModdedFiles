.class final Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "SeslMapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;I)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    iput p2, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mSize:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mCanRemove:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->this$0:Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslMapCollections;->colRemoveAt(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
