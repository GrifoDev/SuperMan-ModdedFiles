.class public Ljavax/crypto/NullCipher;
.super Ljavax/crypto/Cipher;
.source "NullCipher.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljavax/crypto/NullCipherSpi;

    invoke-direct {v0}, Ljavax/crypto/NullCipherSpi;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-void
.end method
