.class public Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;
.super Ljava/lang/Object;
.source "XSAttributeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAttributeDeclaration;


# static fields
.field public static final SCOPE_ABSENT:S = 0x0s

.field public static final SCOPE_GLOBAL:S = 0x1s

.field public static final SCOPE_LOCAL:S = 0x2s


# instance fields
.field fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field fConstraintType:S

.field fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field fScope:S

.field fTargetNamespace:Ljava/lang/String;

.field fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field public fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fConstraintType:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fScope:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method


# virtual methods
.method public getActualVC()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualVCType()S
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2d

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getConstraintType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fConstraintType:S

    return v0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnclosingCTDefinition()Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getScope()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fScope:S

    return v0
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getValInfo()Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fUnresolvedTypeName:Lmf/org/apache/xerces/xni/QName;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fConstraintType:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fScope:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fConstraintType:S

    int-to-short v0, p5

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fScope:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object p7, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fEnclosingCT:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object p8, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-void
.end method
