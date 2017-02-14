.class public Lmf/org/apache/html/dom/HTMLHtmlElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLHtmlElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLHtmlElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4ebd77fa8316e6L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHtmlElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
