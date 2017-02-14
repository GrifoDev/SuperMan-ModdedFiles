.class public Lmf/org/apache/xerces/impl/xs/opti/TextImpl;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultText;
.source "TextImpl.java"


# instance fields
.field fCol:I

.field fData:Ljava/lang/String;

.field fRow:I

.field fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultText;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    iput p4, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->uri:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->localpart:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->prefix:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->rawname:Ljava/lang/String;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->nodeType:S

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#text"

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-gez p2, :cond_2

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "parameter error"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    add-int v0, p1, p2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
