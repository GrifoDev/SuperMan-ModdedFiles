.class public Lmf/org/apache/xerces/dom/CommentImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "CommentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;
.implements Lmf/org/w3c/dom/Comment;


# static fields
.field static final serialVersionUID:J = -0x2545a76b9b796b9cL


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#comment"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
