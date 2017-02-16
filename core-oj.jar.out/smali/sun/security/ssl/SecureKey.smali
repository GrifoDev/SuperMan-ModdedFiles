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

    .prologue
    .line 796
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    .line 795
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p1, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    .line 813
    invoke-static {}, Lsun/security/ssl/SecureKey;->getCurrentSecurityContext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    .line 811
    return-void
.end method

.method static getCurrentSecurityContext()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 801
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 802
    .local v1, "sm":Ljava/lang/SecurityManager;
    const/4 v0, 0x0

    .line 804
    .local v0, "context":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 805
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->getSecurityContext()Ljava/lang/Object;

    move-result-object v0

    .line 806
    .end local v0    # "context":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    .line 807
    sget-object v0, Lsun/security/ssl/SecureKey;->nullObject:Ljava/lang/Object;

    .line 808
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 829
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

    .line 830
    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 829
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getAppKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    return-object v0
.end method

.method getSecurityContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lsun/security/ssl/SecureKey;->appKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/ssl/SecureKey;->securityCtx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
