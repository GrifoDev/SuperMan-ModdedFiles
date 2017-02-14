.class public Lmf/org/apache/wml/dom/WMLAccessElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLAccessElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLAccessElement;


# static fields
.field private static final serialVersionUID:J = -0x3451dac67a12246L


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

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "domain"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "class"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "domain"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLAccessElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
