.class public Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "ProcessingInstructionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ProcessingInstruction;


# static fields
.field static final serialVersionUID:J = 0x68d6bec406f214c6L


# instance fields
.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->target:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;->synchronizeData()V

    goto :goto_0
.end method
