.class public Lmf/org/apache/xerces/dom/CDATASectionImpl;
.super Lmf/org/apache/xerces/dom/TextImpl;
.source "CDATASectionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CDATASection;


# static fields
.field static final serialVersionUID:J = 0x20eb4a4713edb7f4L


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#cdata-section"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
