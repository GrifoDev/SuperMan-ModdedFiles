.class public Lmf/org/apache/html/dom/HTMLStyleElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLStyleElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLStyleElement;


# static fields
.field private static final serialVersionUID:J = -0x7cecdfbc1a600374L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "media"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLStyleElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
