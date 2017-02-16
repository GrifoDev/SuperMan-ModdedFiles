.class public Lsun/security/x509/KeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "KeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CRL_SIGN:Ljava/lang/String; = "crl_sign"

.field public static final DATA_ENCIPHERMENT:Ljava/lang/String; = "data_encipherment"

.field public static final DECIPHER_ONLY:Ljava/lang/String; = "decipher_only"

.field public static final DIGITAL_SIGNATURE:Ljava/lang/String; = "digital_signature"

.field public static final ENCIPHER_ONLY:Ljava/lang/String; = "encipher_only"

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.KeyUsage"

.field public static final KEY_AGREEMENT:Ljava/lang/String; = "key_agreement"

.field public static final KEY_CERTSIGN:Ljava/lang/String; = "key_certsign"

.field public static final KEY_ENCIPHERMENT:Ljava/lang/String; = "key_encipherment"

.field public static final NAME:Ljava/lang/String; = "KeyUsage"

.field public static final NON_REPUDIATION:Ljava/lang/String; = "non_repudiation"


# instance fields
.field private bitString:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 179
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 181
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 154
    sget-object v2, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    move-object v0, p2

    .line 165
    check-cast v0, [B

    .line 166
    .local v0, "extValue":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 167
    new-instance v2, Lsun/security/util/DerValue;

    invoke-direct {v2, v0}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 171
    :goto_0
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 172
    .local v1, "val":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 153
    return-void

    .line 169
    .end local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "bitString"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 136
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 137
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 139
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 135
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 110
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    .line 109
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 111
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 113
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 108
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 123
    iput-object p1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 124
    sget-object v0, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 126
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 122
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 76
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 77
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    .line 74
    return-void
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 95
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [Z

    .line 96
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 97
    iput-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    .line 99
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    aput-boolean p2, v1, p1

    .line 92
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 249
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0, v1, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 271
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 248
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 255
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 257
    :cond_3
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 259
    :cond_4
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 261
    :cond_5
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 263
    :cond_6
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 264
    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 265
    :cond_7
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 266
    const/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 268
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 324
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 325
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/KeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/KeyUsageExtension;->critical:Z

    .line 327
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 329
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 330
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 321
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const-string/jumbo v0, "digital_signature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    const-string/jumbo v0, "non_repudiation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    const-string/jumbo v0, "key_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 227
    :cond_2
    const-string/jumbo v0, "data_encipherment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 229
    :cond_3
    const-string/jumbo v0, "key_agreement"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 231
    :cond_4
    const-string/jumbo v0, "key_certsign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_5
    const-string/jumbo v0, "crl_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 234
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 235
    :cond_6
    const-string/jumbo v0, "encipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 236
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 237
    :cond_7
    const-string/jumbo v0, "decipher_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 240
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBits()[Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lsun/security/x509/KeyUsageExtension;->bitString:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 339
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 340
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 341
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 342
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 343
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 344
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 345
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 347
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    const-string/jumbo v0, "KeyUsage"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute must be of type Boolean."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 192
    .local v0, "val":Z
    const-string/jumbo v1, "digital_signature"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    .line 214
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/KeyUsageExtension;->encodeThis()V

    .line 187
    return-void

    .line 194
    :cond_1
    const-string/jumbo v1, "non_repudiation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 196
    :cond_2
    const-string/jumbo v1, "key_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 198
    :cond_3
    const-string/jumbo v1, "data_encipherment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 199
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 200
    :cond_4
    const-string/jumbo v1, "key_agreement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 202
    :cond_5
    const-string/jumbo v1, "key_certsign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 204
    :cond_6
    const-string/jumbo v1, "crl_sign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 206
    :cond_7
    const-string/jumbo v1, "encipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 208
    :cond_8
    const-string/jumbo v1, "decipher_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 209
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lsun/security/x509/KeyUsageExtension;->set(IZ)V

    goto :goto_0

    .line 211
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:KeyUsage."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "KeyUsage [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  DigitalSignature\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Non_repudiation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_2
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Data_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :cond_3
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Agreement\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_4
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_CertSign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_5
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Crl_Sign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_6
    const/4 v2, 0x7

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Encipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_7
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lsun/security/x509/KeyUsageExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Decipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method
