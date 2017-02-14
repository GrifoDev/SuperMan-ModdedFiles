.class public Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.source "SchemaDVFactoryImpl.java"


# static fields
.field static final fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->createBuiltInTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/SchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
