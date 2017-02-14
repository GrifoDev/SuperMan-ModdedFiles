.class public Lmf/org/apache/wml/dom/WMLSelectElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLSelectElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLSelectElement;


# static fields
.field private static final serialVersionUID:J = 0x5a0df562e7ea561dL


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "class"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "iname"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ivalue"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiple()Z
    .locals 2

    const-string/jumbo v0, "multiple"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 2

    const-string/jumbo v0, "tabindex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "iname"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ivalue"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMultiple(Z)V
    .locals 1

    const-string/jumbo v0, "multiple"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    const-string/jumbo v0, "tabindex"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xml:lang"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
