.class public Lcom/thoughtworks/xstream/core/util/ArrayIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final array:Ljava/lang/Object;

.field private idx:I

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->array:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->length:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->idx:I

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/core/util/ArrayIterator;->idx:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove from array"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
