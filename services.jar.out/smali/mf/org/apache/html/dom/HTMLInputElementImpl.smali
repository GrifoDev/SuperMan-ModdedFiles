.class public Lmf/org/apache/html/dom/HTMLInputElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLInputElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLInputElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x8e23b5328e32967L


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

.method public click()V
    .locals 0

    return-void
.end method

.method public focus()V
    .locals 0

    return-void
.end method

.method public getAccept()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "accept"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "alt"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    const-string/jumbo v0, "checked"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultChecked()Z
    .locals 1

    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    const-string/jumbo v0, "maxlength"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    :try_start_0
    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 0

    return-void
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "accept"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "accesskey"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

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

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "alt"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const-string/jumbo v0, "checked"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultChecked(Z)V
    .locals 1

    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 2

    const-string/jumbo v0, "maxlength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
