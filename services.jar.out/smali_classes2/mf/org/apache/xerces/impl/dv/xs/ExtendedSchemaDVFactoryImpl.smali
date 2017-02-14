.class public Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;
.super Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;
.source "ExtendedSchemaDVFactoryImpl.java"


# static fields
.field static fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->createBuiltInTypes()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseSchemaDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes()V
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "anyAtomicType"

    const-string/jumbo v0, "duration"

    const-string/jumbo v0, "yearMonthDuration"

    const-string/jumbo v0, "dayTimeDuration"

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string/jumbo v1, "anyAtomicType"

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v10, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string/jumbo v11, "yearMonthDuration"

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "yearMonthDuration"

    const/16 v3, 0x1b

    const/16 v9, 0x2e

    move v6, v5

    move v7, v5

    move v8, v4

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    const-string/jumbo v11, "dayTimeDuration"

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "dayTimeDuration"

    const/16 v3, 0x1c

    const/16 v9, 0x2f

    move v6, v5

    move v7, v5

    move v8, v4

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    invoke-virtual {v10, v11, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/ExtendedSchemaDVFactoryImpl;->fBuiltInTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
