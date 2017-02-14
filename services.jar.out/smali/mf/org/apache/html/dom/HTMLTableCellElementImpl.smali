.class public Lmf/org/apache/html/dom/HTMLTableCellElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableCellElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableCellElement;


# static fields
.field private static final serialVersionUID:J = -0x2165ab8391302042L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAbbr()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "abbr"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAxis()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "axis"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "bgcolor"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellIndex()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-nez v2, :cond_2

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eq v1, p0, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public getCh()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "char"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColSpan()I
    .locals 1

    const-string/jumbo v0, "colspan"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "headers"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoWrap()Z
    .locals 1

    const-string/jumbo v0, "nowrap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    const-string/jumbo v0, "rowspan"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAbbr(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "abbr"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAxis(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "axis"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCellIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    instance-of v0, v2, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {v2, p0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, p1

    :goto_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    if-nez v3, :cond_2

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ne p0, v1, :cond_4

    :goto_2
    return-void

    :cond_4
    invoke-interface {v2, p0, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "char"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColSpan(I)V
    .locals 2

    const-string/jumbo v0, "colspan"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "headers"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoWrap(Z)V
    .locals 1

    const-string/jumbo v0, "nowrap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRowSpan(I)V
    .locals 2

    const-string/jumbo v0, "rowspan"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "scope"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "valign"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
