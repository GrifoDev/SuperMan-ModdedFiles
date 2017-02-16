.class public Ljava/security/spec/ECPrivateKeySpec;
.super Ljava/lang/Object;
.source "ECPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 2
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "s is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-nez p2, :cond_1

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iput-object p1, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    .line 62
    iput-object p2, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 54
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Ljava/security/spec/ECPrivateKeySpec;->s:Ljava/math/BigInteger;

    return-object v0
.end method
