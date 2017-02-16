.class public Ljava/security/spec/ECPublicKeySpec;
.super Ljava/lang/Object;
.source "ECPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private w:Ljava/security/spec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V
    .locals 2
    .param p1, "w"    # Ljava/security/spec/ECPoint;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "w is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    sget-object v0, Ljava/security/spec/ECPoint;->POINT_INFINITY:Ljava/security/spec/ECPoint;

    if-ne p1, v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "w is ECPoint.POINT_INFINITY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    .line 66
    iput-object p2, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    .line 55
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ljava/security/spec/ECPublicKeySpec;->w:Ljava/security/spec/ECPoint;

    return-object v0
.end method
