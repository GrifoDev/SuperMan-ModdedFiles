.class Lsun/security/ssl/SecureKey;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"


# static fields
.field private static nullObject:Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/Object;

.field private securityCtx:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-static {}, Lsun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    return-void
.end method

.method static getCurrentSecurityContext()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/SecurityManager;->getSecurityContext()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lsun/security/ssl/SecureKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    nop

    nop

    iget-object v0, v0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    iget-object v1, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v0, p1, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAppKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    return-object v0
.end method

.method getSecurityContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
