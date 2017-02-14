.class public abstract Lmf/org/apache/xerces/dom/CharacterDataImpl;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "CharacterDataImpl.java"


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static transient singletonNodeList:Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public deleteData(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    return-void
.end method

.method internalDeleteData(IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iget-boolean v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gtz v0, :cond_4

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    add-int v4, p1, p2

    add-int v5, p1, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    invoke-virtual {p0, p1, p3, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez p2, :cond_2

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_0

    add-int v1, p1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
