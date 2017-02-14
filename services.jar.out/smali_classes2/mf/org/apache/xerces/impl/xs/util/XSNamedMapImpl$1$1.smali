.class Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;
.super Ljava/lang/Object;
.source "XSNamedMapImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

.field private final synthetic val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

.field private final synthetic val$length:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;I[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->this$1:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->val$length:I

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->index:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->val$length:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->index:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->val$length:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->val$entries:[Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$1$1;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
