.class public Lsun/security/x509/KeyIdentifier;
.super Ljava/lang/Object;
.source "KeyIdentifier.java"


# instance fields
.field private octetString:[B


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 7
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lsun/security/util/DerValue;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v0, v5}, Lsun/security/util/DerValue;-><init>([B)V

    .line 86
    .local v0, "algAndKey":Lsun/security/util/DerValue;
    iget-byte v5, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v6, 0x30

    if-eq v5, v6, :cond_0

    .line 87
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "PublicKey value is not a valid X.509 public key"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 91
    .local v1, "algid":Lsun/security/x509/AlgorithmId;
    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v3

    .line 93
    .local v3, "key":[B
    const/4 v4, 0x0

    .line 95
    .local v4, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 99
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 83
    return-void

    .line 96
    .local v4, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e3":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "SHA1 not supported"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "octetString"    # [B

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 50
    return-void
.end method


# virtual methods
.method encode(Lsun/security/util/DerOutputStream;)V
    .locals 1
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    instance-of v0, p1, Lsun/security/x509/KeyIdentifier;

    if-nez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_1
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    .line 152
    check-cast p1, Lsun/security/x509/KeyIdentifier;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getIdentifier()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "retval":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 139
    iget-object v2, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    aget-byte v2, v2, v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v1, "KeyIdentifier [\n"

    .line 116
    .local v1, "s":Ljava/lang/String;
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 117
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    return-object v1
.end method
