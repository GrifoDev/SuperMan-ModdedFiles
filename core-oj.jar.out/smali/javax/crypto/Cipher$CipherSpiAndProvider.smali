.class Ljavax/crypto/Cipher$CipherSpiAndProvider;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CipherSpiAndProvider"
.end annotation


# instance fields
.field cipherSpi:Ljavax/crypto/CipherSpi;

.field provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    iput-object p2, p0, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    return-void
.end method
