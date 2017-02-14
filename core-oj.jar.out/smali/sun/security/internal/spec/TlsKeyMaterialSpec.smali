.class public Lsun/security/internal/spec/TlsKeyMaterialSpec;
.super Ljava/lang/Object;
.source "TlsKeyMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljavax/crypto/SecretKey;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final serialVersionUID:J = 0xb480bf039c33324L


# instance fields
.field private final clientCipherKey:Ljavax/crypto/SecretKey;

.field private final clientIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final clientMacKey:Ljavax/crypto/SecretKey;

.field private final serverCipherKey:Ljavax/crypto/SecretKey;

.field private final serverIv:Ljavax/crypto/spec/IvParameterSpec;

.field private final serverMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lsun/security/internal/spec/TlsKeyMaterialSpec;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;Ljavax/crypto/SecretKey;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "MAC keys must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    iput-object p5, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    iput-object p4, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    iput-object p6, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "TlsKeyMaterial"

    return-object v0
.end method

.method public getClientCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientCipherKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getClientIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientIv:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getClientMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->clientMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerCipherKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverCipherKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getServerIv()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverIv:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getServerMacKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialSpec;->serverMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method
