.class public abstract Ljava/security/Identity;
.super Ljava/lang/Object;
.source "Identity.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321904f09f5e92d3L


# instance fields
.field certificates:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field info:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;

.field scope:Ljava/security/IdentityScope;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string/jumbo v0, "restoring..."

    invoke-direct {p0, v0}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "No further information available."

    iput-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    iput-object p1, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Ljava/security/IdentityScope;->addIdentity(Ljava/security/Identity;)V

    :cond_0
    iput-object p2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private keyEquals(Ljava/security/Key;Ljava/security/Key;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    move v4, v2

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    xor-int/2addr v2, v4

    if-eqz v2, :cond_2

    return v3

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public addCertificate(Ljava/security/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const-string/jumbo v0, "addIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/Identity;->keyEquals(Ljava/security/Key;Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/security/KeyManagementException;

    const-string/jumbo v1, "public key different from cert public key"

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/security/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    :cond_2
    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public certificates()[Ljava/security/Certificate;
    .locals 3

    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/Certificate;

    return-object v2

    :cond_0
    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Ljava/security/Certificate;

    iget-object v2, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    if-ne p1, p0, :cond_0

    return v3

    :cond_0
    instance-of v1, p1, Ljava/security/Identity;

    if-eqz v1, :cond_2

    move-object v0, p1

    nop

    nop

    invoke-virtual {p0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/Identity;->fullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v0}, Ljava/security/Identity;->identityEquals(Ljava/security/Identity;)Z

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method fullName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public final getScope()Ljava/security/IdentityScope;
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected identityEquals(Ljava/security/Identity;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v3, p1, Ljava/security/Identity;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-eqz v0, :cond_3

    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_4

    iget-object v0, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    iget-object v3, p1, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method printCertificates()Ljava/lang/String;
    .locals 7

    const-string/jumbo v4, ""

    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-nez v5, :cond_0

    const-string/jumbo v5, "\tno certificates"

    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\tcertificates: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    iget-object v5, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Certificate;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\tcertificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\tfor  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/Certificate;->getPrincipal()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\t\t\tfrom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/security/Certificate;->getGuarantor()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v3

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method printKeys()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "\tpublic key initialized"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\tno public key"

    goto :goto_0
.end method

.method public removeCertificate(Ljava/security/Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const-string/jumbo v0, "removeIdentityCertificate"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/security/KeyManagementException;

    invoke-direct {v0}, Ljava/security/KeyManagementException;-><init>()V

    throw v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "setIdentityInfo"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    const-string/jumbo v0, "setIdentityPublicKey"

    invoke-static {v0}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/security/Identity;->publicKey:Ljava/security/PublicKey;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/security/Identity;->certificates:Ljava/util/Vector;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "printIdentity"

    invoke-static {v1}, Ljava/security/Identity;->check(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/security/Identity;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->scope:Ljava/security/IdentityScope;

    invoke-virtual {v2}, Ljava/security/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printKeys()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Identity;->printCertificates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Identity;->info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n\tno additional information available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
