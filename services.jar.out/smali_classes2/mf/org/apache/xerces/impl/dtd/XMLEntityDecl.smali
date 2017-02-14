.class public Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;
.super Ljava/lang/Object;
.source "XMLEntityDecl.java"


# instance fields
.field public baseSystemId:Ljava/lang/String;

.field public inExternal:Z

.field public isPE:Z

.field public name:Ljava/lang/String;

.field public notation:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public systemId:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->name:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->publicId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->systemId:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->baseSystemId:Ljava/lang/String;

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->notation:Ljava/lang/String;

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->isPE:Z

    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
