.class public Lmf/org/apache/xerces/impl/validation/ValidationState;
.super Ljava/lang/Object;
.source "ValidationState.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/ValidationContext;


# static fields
.field private static final fNullValue:Ljava/lang/Object;


# instance fields
.field private fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

.field private fExtraChecking:Z

.field private fFacetChecking:Z

.field private final fIdRefTable:Ljava/util/HashMap;

.field private final fIdTable:Ljava/util/HashMap;

.field private fLocale:Ljava/util/Locale;

.field private fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fNamespaces:Z

.field private fNormalize:Z

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    sget-object v1, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    sget-object v1, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNullValue:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public checkIDRefID()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/validation/EntityState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/validation/EntityState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needExtraChecking()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    return v0
.end method

.method public needFacetChecking()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    return v0
.end method

.method public needToNormalize()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public resetIDTables()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fIdRefTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fEntityState:Lmf/org/apache/xerces/impl/validation/EntityState;

    return-void
.end method

.method public setExtraChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fExtraChecking:Z

    return-void
.end method

.method public setFacetChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fFacetChecking:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    return-void
.end method

.method public setNormalizationRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNormalize:Z

    return-void
.end method

.method public setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public setUsingNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    return-void
.end method

.method public useNamespaces()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ValidationState;->fNamespaces:Z

    return v0
.end method
