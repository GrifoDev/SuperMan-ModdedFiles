.class public Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBaseFontElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBaseFontElement;


# static fields
.field private static final serialVersionUID:J = -0x32a84af6a008528dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "color"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "face"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "color"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "face"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
