.class public Lmf/org/apache/html/dom/HTMLMetaElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLMetaElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLMetaElement;


# static fields
.field private static final serialVersionUID:J = -0x21557ba093a7e0d0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "content"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "http-equiv"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "scheme"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
