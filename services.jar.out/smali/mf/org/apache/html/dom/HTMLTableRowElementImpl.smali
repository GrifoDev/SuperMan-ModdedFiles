.class public Lmf/org/apache/html/dom/HTMLTableRowElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableRowElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableRowElement;


# static fields
.field private static final serialVersionUID:J = 0x4b12a08e58842c27L


# instance fields
.field _cells:Lmf/org/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0
.end method

.method public deleteCell(I)V
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, p1

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_2
    return-void
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "bgcolor"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCells()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x3

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->_cells:Lmf/org/w3c/dom/html/HTMLCollection;

    goto :goto_0
.end method

.method public getCh()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "char"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChOff()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "charoff"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRowIndex()I
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_0

    :goto_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method getRowIndex(Lmf/org/w3c/dom/Node;)I
    .locals 3

    check-cast p1, Lmf/org/w3c/dom/html/HTMLElement;

    const-string/jumbo v0, "TR"

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eq v2, p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSectionRowIndex()I
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getRowIndex(Lmf/org/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertCell(I)Lmf/org/w3c/dom/html/HTMLElement;
    .locals 4

    new-instance v2, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v1, "TD"

    invoke-direct {v2, v0, v1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, p1

    :goto_0
    if-eqz v1, :cond_2

    instance-of v3, v1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-nez v3, :cond_0

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v2

    :cond_2
    invoke-virtual {p0, v2}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v2
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCells(Lmf/org/w3c/dom/html/HTMLCollection;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/html/HTMLCollection;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "char"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "charoff"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRowIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_0

    :goto_0
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableElement;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;

    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V

    goto :goto_1
.end method

.method public setSectionRowIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v0, p1, p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    goto :goto_0
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
