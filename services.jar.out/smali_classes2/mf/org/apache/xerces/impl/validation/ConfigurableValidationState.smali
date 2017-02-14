.class public final Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;
.super Lmf/org/apache/xerces/impl/validation/ValidationState;
.source "ConfigurableValidationState.java"


# instance fields
.field private fIdIdrefChecking:Z

.field private fUnparsedEntityChecking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    return-void
.end method


# virtual methods
.method public addId(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->addId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addIdRef(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->addIdRef(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkIDRefID()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isEntityDeclared(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isEntityUnparsed(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isIdDeclared(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/validation/ValidationState;->isIdDeclared(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIdIdrefChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fIdIdrefChecking:Z

    return-void
.end method

.method public setUnparsedEntityChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->fUnparsedEntityChecking:Z

    return-void
.end method
