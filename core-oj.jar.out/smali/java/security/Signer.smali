.class public abstract Ljava/security/Signer;
.super Ljava/security/Identity;
.source "Signer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18791541fd710b48L


# instance fields
.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/Identity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/Identity;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/security/Identity;-><init>(Ljava/lang/String;Ljava/security/IdentityScope;)V

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


# virtual methods
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    const-string/jumbo v0, "getSignerPrivateKey"

    invoke-static {v0}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    iget-object v0, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method printKeys()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/security/Identity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    if-eqz v2, :cond_0

    const-string/jumbo v0, "\tpublic and private keys initialized"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\tno keys"

    goto :goto_0
.end method

.method public final setKeyPair(Ljava/security/KeyPair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;,
            Ljava/security/KeyException;
        }
    .end annotation

    const-string/jumbo v3, "setSignerKeyPair"

    invoke-static {v3}, Ljava/security/Signer;->check(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    :cond_1
    :try_start_0
    new-instance v3, Ljava/security/Signer$1;

    invoke-direct {v3, p0, v2}, Ljava/security/Signer$1;-><init>(Ljava/security/Signer;Ljava/security/PublicKey;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v1, p0, Ljava/security/Signer;->privateKey:Ljava/security/PrivateKey;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/security/KeyManagementException;

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Signer]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/security/Identity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
