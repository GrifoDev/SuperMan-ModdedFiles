.class public Lmf/org/apache/xerces/impl/xs/identity/KeyRef;
.super Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;
.source "KeyRef.java"


# instance fields
.field protected final fKey:Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->fKey:Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->type:S

    return-void
.end method


# virtual methods
.method public getKey()Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->fKey:Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    return-object v0
.end method

.method public getRefKey()Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->fKey:Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    return-object v0
.end method
