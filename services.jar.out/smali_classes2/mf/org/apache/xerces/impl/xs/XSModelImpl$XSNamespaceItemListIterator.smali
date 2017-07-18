.class final Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;
.super Ljava/lang/Object;
.source "XSModelImpl.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "XSNamespaceItemListIterator"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XSModelImpl;I)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->this$0:Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
