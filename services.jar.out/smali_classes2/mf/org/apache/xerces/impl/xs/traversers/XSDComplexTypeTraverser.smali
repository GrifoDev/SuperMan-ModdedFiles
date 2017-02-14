.class Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDComplexTypeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_NUM:I = 0xb

.field private static fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private static fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;


# instance fields
.field private fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field private fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fBlock:S

.field private fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fContentType:S

.field private fDerivedBy:S

.field private fFinal:S

.field private fGlobalStore:[Ljava/lang/Object;

.field private fGlobalStorePos:I

.field private fIsAbstract:Z

.field private fName:Ljava/lang/String;

.field private fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fTargetNamespace:Ljava/lang/String;

.field private fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    return-void
.end method

.method private addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_0
.end method

.method private contentBackup()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v2, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    aput-object v0, v1, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v2, Ljava/lang/Integer;

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    shl-int/lit8 v3, v3, 0x10

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v2, v0, v1

    return-void

    :cond_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v0, v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2
.end method

.method private contentRestore()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-void
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#AnonType_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private static getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v4, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v4, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v0, v2, v3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v2, 0x3

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto :goto_0
.end method

.method private static getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_0
.end method

.method private handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method private isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method private mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v4

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v2, "ct-props-correct.5"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1

    :cond_2
    if-eqz p4, :cond_0

    const-string/jumbo v5, "ct-props-correct.4"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p2, v4, v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V

    goto :goto_1

    :cond_3
    if-nez p4, :cond_5

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v2, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v0

    iput-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v1, "src-ct.5"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-direct {v0, v1, v2, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_6
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto :goto_2
.end method

.method private processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_3

    :goto_0
    if-nez v6, :cond_e

    :cond_0
    :goto_1
    if-eqz v0, :cond_11

    :cond_1
    :goto_2
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_12

    if-nez p2, :cond_13

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    :goto_3
    if-nez v1, :cond_14

    :cond_2
    :goto_4
    return-void

    :cond_3
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, p1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    invoke-virtual {v0, p1, p4, p5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v1

    if-nez v1, :cond_6

    move v0, v6

    :goto_5
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    move v6, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_0

    :cond_6
    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-eqz v0, :cond_7

    move v0, v6

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_6
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_a
    iget v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v0, :cond_9

    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v0, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/16 v4, 0x8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_7
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_0

    :cond_d
    iget-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v0, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_e
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_f
    :goto_8
    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_10
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    goto :goto_8

    :cond_11
    if-eqz p2, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    goto/16 :goto_2

    :cond_12
    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_3

    :cond_13
    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_3

    :cond_14
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v0, p0

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_16

    if-nez p3, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto/16 :goto_4

    :cond_15
    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v2, "s4s-elt-invalid-content.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v0

    :cond_16
    new-instance v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v2, "s4s-elt-invalid-content.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v1
.end method

.method private traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v5

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move/from16 v12, p2

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v3, v8

    :goto_1
    if-eqz v3, :cond_4

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {v2, v5, v6, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    goto :goto_0

    :cond_2
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v5, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v3, v8

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_2
    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v9

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v2, v9, v2

    check-cast v2, Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v6, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_a

    instance-of v4, v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v4, :cond_b

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v4

    move-object/from16 v0, p0

    iget-short v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v4, v6

    if-nez v4, :cond_c

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    if-nez v7, :cond_e

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_13

    move-object v11, v7

    :goto_3
    const/4 v13, 0x1

    move-object/from16 v10, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    :try_start_0
    invoke-direct/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v6, 0x2

    if-eq v4, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v4, :cond_17

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    if-nez v3, :cond_18

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :try_start_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object/from16 v12, p0

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-att-must-appear"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const-string/jumbo v7, "base"

    aput-object v7, v6, v4

    invoke-direct {v2, v5, v6, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v2

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v4, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "src-ct.1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-direct {v4, v5, v6, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    const-string/jumbo v2, "derivation-ok-restriction.1"

    :goto_5
    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v4, v2, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_d
    const-string/jumbo v2, "cos-ct-extends.1.1"

    goto :goto_5

    :cond_e
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_10

    :goto_6
    if-nez v7, :cond_11

    move-object v11, v7

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v7, v9, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_6

    :cond_11
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object v11, v7

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_13
    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v11, v7

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v2

    :cond_14
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    :cond_15
    :try_start_2
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_16
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "derivation-ok-restriction.5.4.1.2"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v2

    :cond_17
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c

    :cond_19
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    :cond_1b
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    :goto_7
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v3, 0x2

    iput v3, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v6, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v6, v7

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v7, v3, v6

    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v6, 0x3

    iput-short v6, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "cos-ct-extends.1.4.3.2.2.1.a"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1d
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "cos-ct-extends.1.4.3.2.2.1.b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-ne v3, v4, :cond_1b

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "cos-all-limited.1.2"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_20
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-eq v3, v4, :cond_1f

    goto/16 :goto_7

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v2
.end method

.method private traverseComplexContentDecl(Lmf/org/w3c/dom/Element;Z)V
    .locals 0

    return-void
.end method

.method private traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 18

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v3, p3, v3

    check-cast v3, Ljava/lang/Boolean;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v4, p3, v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v5, p3, v5

    move-object v9, v5

    check-cast v9, Ljava/lang/Boolean;

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v5, p3, v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    :goto_0
    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    :goto_1
    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    if-nez v3, :cond_5

    :cond_0
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v4, v10

    :cond_1
    :goto_3
    if-eqz v4, :cond_a

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-short v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    move-object/from16 v0, p0

    iget-short v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    move-object/from16 v0, p0

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    move-object/from16 v0, p0

    iget-short v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-instance v15, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    invoke-virtual/range {v3 .. v15}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v3

    :cond_3
    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_6
    :try_start_1
    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    move-object v4, v10

    :goto_6
    if-eqz v4, :cond_1

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {v3, v5, v6, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lmf/org/w3c/dom/Element;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_7
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v10, v1, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v10}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v10

    move-object v4, v10

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v4, v10

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v4, v10

    goto/16 :goto_3

    :cond_a
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v6, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v5

    :cond_c
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v4, v3, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v6, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-direct {v5, v6, v7, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v5
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_0

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_5
.end method

.method private traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v7, v8

    :goto_0
    if-eqz v7, :cond_3

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-direct {v2, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v5, v2, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v7, v8

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_1
    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v7, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v9

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v2, v9, v2

    check-cast v2, Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v2, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v8, 0xf

    if-eq v3, v8, :cond_b

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v6, 0x2

    if-eq v3, v6, :cond_f

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v3

    move/from16 v16, v3

    move-object v3, v4

    move-object v4, v2

    move/from16 v2, v16

    :goto_2
    move-object/from16 v0, p0

    iget-short v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v2, v6

    if-nez v2, :cond_10

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_12

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_15

    move-object v11, v2

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v6, 0x2

    if-eq v2, v6, :cond_16

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v11, :cond_22

    :goto_4
    if-nez v3, :cond_25

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v4, v5, v6, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-att-must-appear"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string/jumbo v6, "base"

    aput-object v6, v5, v3

    invoke-direct {v2, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v2

    :cond_b
    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v4

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v8, 0x2

    if-eq v3, v8, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.2.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_d
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move/from16 v16, v4

    move-object v4, v3

    move-object v3, v2

    move/from16 v2, v16

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_c

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, v2

    move v2, v4

    move-object v4, v6

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.2.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v8, v5, v6

    const/4 v6, 0x1

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-direct {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    const-string/jumbo v2, "derivation-ok-restriction.1"

    :goto_6
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v2, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_11
    const-string/jumbo v2, "cos-ct-extends.1.1"

    goto :goto_6

    :cond_12
    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_14

    move-object v11, v2

    :goto_7
    if-eqz v11, :cond_5

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v9, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    move-object v11, v2

    goto :goto_7

    :cond_14
    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v11, v2

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    move-object v11, v2

    goto/16 :goto_3

    :cond_16
    if-nez v11, :cond_18

    move-object v14, v4

    move-object v8, v11

    :goto_8
    if-eqz v14, :cond_1d

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-nez v8, :cond_1e

    :goto_9
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v10, v10, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p2

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v10, v12}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v10, v6, v4, v2, v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    instance-of v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v2, :cond_1f

    :goto_b
    if-nez v7, :cond_20

    :cond_17
    :try_start_1
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v3, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2, v3, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_18
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object v14, v4

    move-object v8, v11

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v11, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v14

    if-eqz v14, :cond_1b

    if-nez v4, :cond_1c

    :cond_1a
    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v11

    move-object v8, v11

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v2

    :cond_1c
    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v2

    invoke-static {v14, v4, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "derivation-ok-restriction.5.2.2.1"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v14}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-direct {v2, v3, v5, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "src-ct.2.2"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v14, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v2

    iget-object v7, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    iget-object v6, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iget-short v4, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    goto/16 :goto_9

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v10, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    goto/16 :goto_b

    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v10, p0

    move-object v11, v7

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :catch_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v2

    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v10, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v2, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v3, "s4s-elt-invalid-content.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v11}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_25
    :try_start_2
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v10, p0

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v2
.end method

.method private traverseSimpleContentDecl(Lmf/org/w3c/dom/Element;)V
    .locals 0

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v8, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v3, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-nez v2, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1

    :cond_0
    const-string/jumbo v0, "s4s-att-must-appear"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v1, v6

    goto :goto_2

    :cond_1
    invoke-virtual {p3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    move-object v1, v0

    goto :goto_2

    :cond_4
    instance-of v2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v2, :cond_5

    move-object v0, v1

    goto :goto_3

    :cond_5
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    goto :goto_3
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v0
.end method
