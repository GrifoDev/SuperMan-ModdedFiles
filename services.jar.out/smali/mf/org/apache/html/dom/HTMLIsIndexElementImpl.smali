.class public Lmf/org/apache/html/dom/HTMLIsIndexElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLIsIndexElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLIsIndexElement;


# static fields
.field private static final serialVersionUID:J = 0x2aa757bd7c4fc063L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPrompt()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "prompt"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIsIndexElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "prompt"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIsIndexElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
