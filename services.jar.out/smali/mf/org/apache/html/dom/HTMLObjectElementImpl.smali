.class public Lmf/org/apache/html/dom/HTMLObjectElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLObjectElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLObjectElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x1f995ce618552ccbL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "archive"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "border"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "codebase"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "codetype"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclare()Z
    .locals 1

    const-string/jumbo v0, "declare"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "hspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandby()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "standby"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    :try_start_0
    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArchive(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "archive"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "border"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCodeBase(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "codebase"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCodeType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "codetype"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "data"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeclare(Z)V
    .locals 1

    const-string/jumbo v0, "declare"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "hspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setStandby(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "standby"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "vspace"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
