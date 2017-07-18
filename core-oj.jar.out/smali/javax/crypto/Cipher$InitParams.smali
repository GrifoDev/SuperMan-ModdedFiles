.class Ljavax/crypto/Cipher$InitParams;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitParams"
.end annotation


# instance fields
.field final initType:Ljavax/crypto/Cipher$InitType;

.field final key:Ljava/security/Key;

.field final opmode:I

.field final params:Ljava/security/AlgorithmParameters;

.field final random:Ljava/security/SecureRandom;

.field final spec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method constructor <init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    iput p2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iput-object p3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iput-object p4, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    iput-object p5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    iput-object p6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    return-void
.end method
