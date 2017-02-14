.class public Lmf/org/apache/html/dom/HTMLDirectoryElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLDirectoryElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLDirectoryElement;


# static fields
.field private static final serialVersionUID:J = -0xe0593bde38b2916L


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

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLDirectoryElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCompact(Z)V
    .locals 1

    const-string/jumbo v0, "compact"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLDirectoryElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method
