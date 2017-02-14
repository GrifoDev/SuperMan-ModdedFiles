.class public Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;
.super Ljava/lang/Object;
.source "XMLAttributeDecl.java"


# instance fields
.field public final name:Lmf/org/apache/xerces/xni/QName;

.field public optional:Z

.field public final simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->optional:Z

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;Z)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->setValues(Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;)V

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->optional:Z

    return-void
.end method
