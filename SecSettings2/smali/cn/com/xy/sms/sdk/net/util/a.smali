.class public final Lcn/com/xy/sms/sdk/net/util/a;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final a:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final b:Ljava/lang/String; = "AES"

.field private static final c:I = 0x80

.field private static d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcn/com/xy/sms/sdk/net/util/a;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()[B
    .locals 2

    const-string/jumbo v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 5

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcn/com/xy/sms/sdk/net/util/a;->d:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 5

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcn/com/xy/sms/sdk/net/util/a;->d:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
