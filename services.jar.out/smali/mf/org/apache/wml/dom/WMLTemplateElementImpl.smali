.class public Lmf/org/apache/wml/dom/WMLTemplateElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLTemplateElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLTemplateElement;


# static fields
.field private static final serialVersionUID:J = 0x3aba2299492e8f29L


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

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterBackward()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterForward()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "onenterforward"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnTimer()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ontimer"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnEnterBackward(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "onenterbackward"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnEnterForward(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "onenterforward"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnTimer(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ontimer"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTemplateElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
