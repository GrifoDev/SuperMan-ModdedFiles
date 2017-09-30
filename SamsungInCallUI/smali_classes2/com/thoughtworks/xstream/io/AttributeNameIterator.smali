.class public Lcom/thoughtworks/xstream/io/AttributeNameIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final count:I

.field private current:I

.field private final reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeCount()I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->count:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->current:I

    iget v1, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->count:I

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

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget v1, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;->current:I

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
