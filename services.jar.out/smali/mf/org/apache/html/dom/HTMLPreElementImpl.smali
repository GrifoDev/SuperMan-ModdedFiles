.class public Lmf/org/apache/html/dom/HTMLPreElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLPreElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLPreElement;


# static fields
.field private static final serialVersionUID:J = -0x3a38ea770da00cacL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLPreElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLPreElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setWidth(I)V
    .locals 2

    const-string/jumbo v0, "width"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLPreElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
