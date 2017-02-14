.class Lmf/org/apache/xerces/dom/NodeListCache;
.super Ljava/lang/Object;
.source "NodeListCache.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6e043ddb01f12e5aL


# instance fields
.field fChild:Lmf/org/apache/xerces/dom/ChildNode;

.field fChildIndex:I

.field fLength:I

.field fOwner:Lmf/org/apache/xerces/dom/ParentNode;

.field next:Lmf/org/apache/xerces/dom/NodeListCache;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/ParentNode;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    return-void
.end method
