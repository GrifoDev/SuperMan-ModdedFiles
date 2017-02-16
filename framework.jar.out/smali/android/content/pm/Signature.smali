.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Signature$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificateChain:[Ljava/security/cert/Certificate;

.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    .line 233
    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 92
    .local v4, "input":[B
    array-length v0, v4

    .line 94
    .local v0, "N":I
    rem-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_0

    .line 95
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "text size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not even"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_0
    div-int/lit8 v9, v0, 0x2

    new-array v6, v9, [B

    .line 99
    .local v6, "sig":[B
    const/4 v7, 0x0

    .line 101
    .local v7, "sigIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move v8, v7

    .end local v7    # "sigIndex":I
    .local v8, "sigIndex":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 102
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-byte v9, v4, v3

    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v1

    .line 103
    .local v1, "hi":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aget-byte v9, v4, v2

    invoke-static {v9}, Landroid/content/pm/Signature;->parseHexDigit(I)I

    move-result v5

    .line 104
    .local v5, "lo":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "sigIndex":I
    .restart local v7    # "sigIndex":I
    shl-int/lit8 v9, v1, 0x4

    or-int/2addr v9, v5

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    move v8, v7

    .end local v7    # "sigIndex":I
    .restart local v8    # "sigIndex":I
    goto :goto_0

    .line 107
    .end local v1    # "hi":I
    .end local v5    # "lo":I
    :cond_1
    iput-object v6, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 90
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "signature"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "certificateChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 65
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 66
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    iput-object v0, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    .line 63
    :cond_0
    return-void
.end method

.method public static areEffectiveMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 5
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 273
    const-string/jumbo v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 275
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    array-length v4, p0

    new-array v0, v4, [Landroid/content/pm/Signature;

    .line 276
    .local v0, "aPrime":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 277
    aget-object v4, p0, v3

    invoke-static {v2, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v0, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    :cond_0
    array-length v4, p1

    new-array v1, v4, [Landroid/content/pm/Signature;

    .line 280
    .local v1, "bPrime":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 281
    aget-object v4, p1, v3

    invoke-static {v2, v4}, Landroid/content/pm/Signature;->bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object v4

    aput-object v4, v1, v3

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_1
    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v4

    return v4
.end method

.method public static areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 2
    .param p0, "a"    # [Landroid/content/pm/Signature;
    .param p1, "b"    # [Landroid/content/pm/Signature;

    .prologue
    .line 254
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {p1, p0}, Lcom/android/internal/util/ArrayUtils;->containsAll([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bounce(Ljava/security/cert/CertificateFactory;Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 6
    .param p0, "cf"    # Ljava/security/cert/CertificateFactory;
    .param p1, "s"    # Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 296
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 297
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/content/pm/Signature;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([B)V

    .line 299
    .local v2, "sPrime":Landroid/content/pm/Signature;
    iget-object v3, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v3, v3

    iget-object v4, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 300
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bounced cert length looks fishy; before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    iget-object v5, p1, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    const-string/jumbo v5, ", after "

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    iget-object v5, v2, Landroid/content/pm/Signature;->mSignature:[B

    array-length v5, v5

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    :cond_0
    return-object v2
.end method

.method private static final parseHexDigit(I)I
    .locals 3
    .param p0, "nibble"    # I

    .prologue
    .line 71
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 72
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 73
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 74
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 75
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 76
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in hex string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 206
    if-eqz p1, :cond_1

    .line 207
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/Signature;

    move-object v2, v0

    .line 208
    .local v2, "other":Landroid/content/pm/Signature;
    if-eq p0, v2, :cond_0

    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v4, v2, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 210
    .end local v2    # "other":Landroid/content/pm/Signature;
    :catch_0
    move-exception v1

    .line 212
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getChainSignatures()[Landroid/content/pm/Signature;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 188
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    if-nez v5, :cond_0

    .line 189
    new-array v5, v6, [Landroid/content/pm/Signature;

    aput-object p0, v5, v4

    return-object v5

    .line 192
    :cond_0
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Landroid/content/pm/Signature;

    .line 193
    .local v1, "chain":[Landroid/content/pm/Signature;
    aput-object p0, v1, v4

    .line 195
    const/4 v2, 0x1

    .line 196
    .local v2, "i":I
    iget-object v5, p0, Landroid/content/pm/Signature;->mCertificateChain:[Ljava/security/cert/Certificate;

    array-length v6, v5

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 197
    .local v0, "c":Ljava/security/cert/Certificate;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    new-instance v7, Landroid/content/pm/Signature;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v7, v1, v3

    .line 196
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 200
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    return-object v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 174
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 175
    .local v2, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 176
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 177
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    .line 218
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    .line 222
    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 162
    .local v0, "bytes":[B
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 163
    return-object v0
.end method

.method public toChars()[C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 10
    .param p1, "existingArray"    # [C
    .param p2, "outLen"    # [I

    .prologue
    const/16 v9, 0xa

    .line 128
    iget-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    .line 129
    .local v4, "sig":[B
    array-length v0, v4

    .line 130
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 131
    .local v1, "N2":I
    if-eqz p1, :cond_0

    array-length v7, p1

    if-le v1, v7, :cond_1

    .line 132
    :cond_0
    new-array v5, v1, [C

    .line 133
    .local v5, "text":[C
    :goto_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 134
    aget-byte v6, v4, v3

    .line 135
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 136
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_2

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 137
    and-int/lit8 v2, v6, 0xf

    .line 138
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_3

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_3
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "d":I
    .end local v3    # "j":I
    .end local v5    # "text":[C
    .end local v6    # "v":B
    :cond_1
    move-object v5, p1

    .restart local v5    # "text":[C
    goto :goto_0

    .line 136
    .restart local v2    # "d":I
    .restart local v3    # "j":I
    .restart local v6    # "v":B
    :cond_2
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v7, v2, 0x30

    goto :goto_3

    .line 140
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_4
    if-eqz p2, :cond_5

    const/4 v7, 0x0

    aput v0, p2, v7

    .line 141
    :cond_5
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    .line 149
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 150
    return-object v0

    .line 148
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 152
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 153
    .restart local v0    # "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    .line 154
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 230
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    return-void
.end method
