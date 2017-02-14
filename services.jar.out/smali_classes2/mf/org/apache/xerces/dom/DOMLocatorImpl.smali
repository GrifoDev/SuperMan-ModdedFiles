.class public Lmf/org/apache/xerces/dom/DOMLocatorImpl;
.super Ljava/lang/Object;
.source "DOMLocatorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMLocator;


# instance fields
.field public fByteOffset:I

.field public fColumnNumber:I

.field public fLineNumber:I

.field public fRelatedNode:Lmf/org/w3c/dom/Node;

.field public fUri:Ljava/lang/String;

.field public fUtf16Offset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object p5, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput p6, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    iput v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    iput p1, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    iput p2, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteOffset()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fByteOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    return v0
.end method

.method public getRelatedNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUtf16Offset()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    return v0
.end method
