.class public Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsRsaPremasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final majorVersion:I

.field private final minorVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->majorVersion:I

    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->minorVersion:I

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsRsaPremasterSecretParameterSpec;->minorVersion:I

    return v0
.end method
