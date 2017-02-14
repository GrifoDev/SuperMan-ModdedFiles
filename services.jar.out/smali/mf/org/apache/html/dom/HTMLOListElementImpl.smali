.class public Lmf/org/apache/html/dom/HTMLOListElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOListElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOListElement;


# static fields
.field private static final serialVersionUID:J = 0x11f453445bd6d402L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompact()Z
    .locals 1

    const-string/jumbo v0, "compact"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    const-string/jumbo v0, "start"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCompact(Z)V
    .locals 1

    const-string/jumbo v0, "compact"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStart(I)V
    .locals 2

    const-string/jumbo v0, "start"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOListElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
