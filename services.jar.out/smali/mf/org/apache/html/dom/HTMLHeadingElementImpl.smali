.class public Lmf/org/apache/html/dom/HTMLHeadingElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLHeadingElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLHeadingElement;


# static fields
.field private static final serialVersionUID:J = 0x5bac9d8ea282bda7L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHeadingElementImpl;->getCapitalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "align"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHeadingElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
