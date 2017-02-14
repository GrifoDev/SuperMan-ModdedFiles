.class public Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;
.super Ljava/lang/Object;
.source "XMLNotationDecl.java"


# instance fields
.field public baseSystemId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->name:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->publicId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->systemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLNotationDecl;->baseSystemId:Ljava/lang/String;

    return-void
.end method
