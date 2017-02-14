.class public Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTextAreaElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTextAreaElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = -0x5d8165ac6004c458L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blur()V
    .locals 0

    return-void
.end method

.method public focus()V
    .locals 0

    return-void
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

.method public getCols()I
    .locals 1

    const-string/jumbo v0, "cols"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "default-value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRows()I
    .locals 1

    const-string/jumbo v0, "rows"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTabIndex()I
    .locals 1

    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 0

    return-void
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

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

.method public setCols(I)V
    .locals 2

    const-string/jumbo v0, "cols"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "default-value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRows(I)V
    .locals 2

    const-string/jumbo v0, "rows"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTextAreaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
