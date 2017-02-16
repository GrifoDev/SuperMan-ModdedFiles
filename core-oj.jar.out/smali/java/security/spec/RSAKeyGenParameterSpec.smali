.class public Ljava/security/spec/RSAKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "RSAKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final F0:Ljava/math/BigInteger;

.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field private keysize:I

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F0:Ljava/math/BigInteger;

    .line 55
    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "publicExponent"    # Ljava/math/BigInteger;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    .line 66
    iput-object p2, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    .line 64
    return-void
.end method


# virtual methods
.method public getKeysize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->keysize:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljava/security/spec/RSAKeyGenParameterSpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
