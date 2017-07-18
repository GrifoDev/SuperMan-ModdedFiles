.class final Lsun/security/ssl/CipherSuite$MacAlg;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MacAlg"
.end annotation


# instance fields
.field final hashBlockSize:I

.field final minimalPaddingSize:I

.field final name:Ljava/lang/String;

.field final size:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    iput p2, p0, Lsun/security/ssl/CipherSuite$MacAlg;->size:I

    iput p3, p0, Lsun/security/ssl/CipherSuite$MacAlg;->hashBlockSize:I

    iput p4, p0, Lsun/security/ssl/CipherSuite$MacAlg;->minimalPaddingSize:I

    return-void
.end method


# virtual methods
.method newMac(Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)Lsun/security/ssl/MAC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/MAC;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/ssl/MAC;-><init>(Lsun/security/ssl/CipherSuite$MacAlg;Lsun/security/ssl/ProtocolVersion;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/CipherSuite$MacAlg;->name:Ljava/lang/String;

    return-object v0
.end method
