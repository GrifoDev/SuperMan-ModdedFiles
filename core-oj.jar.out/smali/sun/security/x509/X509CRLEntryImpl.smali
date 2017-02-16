.class public Lsun/security/x509/X509CRLEntryImpl;
.super Ljava/security/cert/X509CRLEntry;
.source "X509CRLEntryImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/security/cert/X509CRLEntry;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/security/x509/X509CRLEntryImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final YR_2050:J = 0x24bd0146400L

.field private static final isExplicit:Z


# instance fields
.field private certIssuer:Ljavax/security/auth/x500/X500Principal;

.field private extensions:Lsun/security/x509/CRLExtensions;

.field private revocationDate:Ljava/util/Date;

.field private revokedCert:[B

.field private serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 77
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 92
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 93
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lsun/security/x509/CRLExtensions;)V
    .locals 1
    .param p1, "num"    # Ljava/math/BigInteger;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "crlEntryExts"    # Lsun/security/x509/CRLExtensions;

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 75
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 76
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 77
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 78
    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 107
    new-instance v0, Lsun/security/x509/SerialNumber;

    invoke-direct {v0, p1}, Lsun/security/x509/SerialNumber;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 108
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 109
    iput-object p3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 106
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "derValue"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 75
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 76
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 77
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 78
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    iput-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 138
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "revokedCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 75
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 76
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 77
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 78
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 120
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CRLEntryImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    iput-object v2, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 123
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEncoded0()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->encode(Lsun/security/util/DerOutputStream;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    return-object v0
.end method

.method public static getRevocationReason(Ljava/security/cert/X509CRLEntry;)Ljava/security/cert/CRLReason;
    .locals 7
    .param p0, "crlEntry"    # Ljava/security/cert/X509CRLEntry;

    .prologue
    const/4 v6, 0x0

    .line 258
    :try_start_0
    const-string/jumbo v5, "2.5.29.21"

    invoke-virtual {p0, v5}, Ljava/security/cert/X509CRLEntry;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 259
    .local v1, "ext":[B
    if-nez v1, :cond_0

    .line 260
    return-object v6

    .line 262
    :cond_0
    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 263
    .local v4, "val":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 266
    .local v0, "data":[B
    new-instance v3, Lsun/security/x509/CRLReasonCodeExtension;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v5, v0}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 267
    .local v3, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v3}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 268
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v3    # "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    .end local v4    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "ioe":Ljava/io/IOException;
    return-object v6
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 5
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 452
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Invalid encoded RevokedCertificate, starting sequence tag missing."

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 455
    :cond_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_1

    .line 456
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "No data encoded for RevokedCertificates"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 460
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 461
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 462
    .local v2, "val":Lsun/security/util/DerValue;
    new-instance v3, Lsun/security/x509/SerialNumber;

    invoke-direct {v3, v2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 465
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->peekByte()I

    move-result v1

    .line 466
    .local v1, "nextByte":I
    int-to-byte v3, v1

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    .line 467
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    .line 473
    :goto_0
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_4

    .line 474
    return-void

    .line 468
    :cond_2
    int-to-byte v3, v1

    const/16 v4, 0x18

    if-ne v3, v4, :cond_3

    .line 469
    iget-object v3, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    goto :goto_0

    .line 471
    :cond_3
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Invalid encoding for revocation date"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    :cond_4
    new-instance v3, Lsun/security/x509/CRLExtensions;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/CRLExtensions;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    .line 449
    return-void
.end method

.method public static toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    .locals 2
    .param p0, "entry"    # Ljava/security/cert/X509CRLEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 487
    instance-of v0, p0, Lsun/security/x509/X509CRLEntryImpl;

    if-eqz v0, :cond_0

    .line 488
    nop

    nop

    .end local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    return-object p0

    .line 490
    .restart local p0    # "entry":Ljava/security/cert/X509CRLEntry;
    :cond_0
    new-instance v0, Lsun/security/x509/X509CRLEntryImpl;

    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLEntryImpl;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 521
    check-cast p1, Lsun/security/x509/X509CRLEntryImpl;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/x509/X509CRLEntryImpl;->compareTo(Lsun/security/x509/X509CRLEntryImpl;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun/security/x509/X509CRLEntryImpl;)I
    .locals 9
    .param p1, "that"    # Lsun/security/x509/X509CRLEntryImpl;

    .prologue
    .line 522
    invoke-virtual {p0}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lsun/security/x509/X509CRLEntryImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    .line 523
    .local v3, "compSerial":I
    if-eqz v3, :cond_0

    .line 524
    return v3

    .line 527
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v6

    .line 528
    .local v6, "thisEncoded":[B
    invoke-direct {p1}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v5

    .line 529
    .local v5, "thatEncoded":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v6

    if-ge v4, v7, :cond_2

    array-length v7, v5

    if-ge v4, v7, :cond_2

    .line 530
    aget-byte v7, v6, v4

    and-int/lit16 v0, v7, 0xff

    .line 531
    .local v0, "a":I
    aget-byte v7, v5, v4

    and-int/lit16 v1, v7, 0xff

    .line 532
    .local v1, "b":I
    if-eq v0, v1, :cond_1

    sub-int v7, v0, v1

    return v7

    .line 529
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "a":I
    .end local v1    # "b":I
    :cond_2
    array-length v7, v6

    array-length v8, v5
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v7, v8

    return v7

    .line 535
    .end local v4    # "i":I
    .end local v5    # "thatEncoded":[B
    .end local v6    # "thisEncoded":[B
    :catch_0
    move-exception v2

    .line 536
    .local v2, "ce":Ljava/security/cert/CRLException;
    const/4 v7, -0x1

    return v7
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 8
    .param p1, "outStrm"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    if-nez v3, :cond_1

    .line 163
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 165
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v3, v2}, Lsun/security/x509/SerialNumber;->encode(Lsun/security/util/DerOutputStream;)V

    .line 167
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide v6, 0x24bd0146400L

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 168
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 173
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lsun/security/x509/CRLExtensions;->encode(Ljava/io/OutputStream;Z)V

    .line 176
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 177
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    .line 181
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revokedCert:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 160
    return-void

    .line 170
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Encoding error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method getCertificateIssuerExtension()Lsun/security/x509/CertificateIssuerExtension;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 500
    check-cast v0, Lsun/security/x509/CertificateIssuerExtension;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 352
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v3, :cond_0

    .line 353
    return-object v4

    .line 355
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 356
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 357
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Lsun/security/x509/X509CRLEntryImpl;->getEncoded0()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .locals 2
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 441
    return-object v1

    .line 445
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-static {p1}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 11
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 398
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v9, :cond_0

    .line 399
    return-object v10

    .line 401
    :cond_0
    :try_start_0
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v9, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "extAlias":Ljava/lang/String;
    const/4 v0, 0x0

    .line 404
    .local v0, "crlExt":Lsun/security/x509/Extension;
    if-nez v4, :cond_3

    .line 405
    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 406
    .local v6, "findOID":Lsun/security/util/ObjectIdentifier;
    const/4 v3, 0x0

    .line 408
    .local v3, "ex":Lsun/security/x509/Extension;
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getElements()Ljava/util/Enumeration;

    move-result-object v2

    .line 409
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    .line 408
    if-eqz v9, :cond_2

    .line 410
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;

    .line 411
    .local v3, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    .line 412
    .local v7, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v7, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 413
    move-object v0, v3

    .line 419
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lsun/security/x509/Extension;>;"
    .end local v3    # "ex":Lsun/security/x509/Extension;
    .end local v6    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v7    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 420
    return-object v10

    .line 418
    .restart local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_3
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9, v4}, Lsun/security/x509/CRLExtensions;->get(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v0

    .local v0, "crlExt":Lsun/security/x509/Extension;
    goto :goto_0

    .line 421
    .end local v0    # "crlExt":Lsun/security/x509/Extension;
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v5

    .line 422
    .local v5, "extData":[B
    if-nez v5, :cond_5

    .line 423
    return-object v10

    .line 425
    :cond_5
    new-instance v8, Lsun/security/util/DerOutputStream;

    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 426
    .local v8, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v8, v5}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 427
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 428
    .end local v4    # "extAlias":Ljava/lang/String;
    .end local v5    # "extData":[B
    .end local v8    # "out":Lsun/security/util/DerOutputStream;
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Ljava/lang/Exception;
    return-object v10
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    iget-object v4, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v4, :cond_0

    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    return-object v4

    .line 512
    :cond_0
    iget-object v4, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v4}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v2

    .line 513
    .local v2, "exts":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/Extension;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 514
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 515
    .local v0, "ext":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 517
    .end local v0    # "ext":Lsun/security/x509/Extension;
    :cond_1
    return-object v3
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 373
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v3, :cond_0

    .line 374
    return-object v4

    .line 376
    :cond_0
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 377
    .local v2, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v3}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ex$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/Extension;

    .line 378
    .local v0, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v0}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 379
    invoke-virtual {v0}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v0    # "ex":Lsun/security/x509/Extension;
    :cond_2
    return-object v2
.end method

.method public getReasonCode()Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 280
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 281
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 282
    return-object v3

    :cond_0
    move-object v1, v0

    .line 283
    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    .line 284
    .local v1, "reasonCode":Lsun/security/x509/CRLReasonCodeExtension;
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2}, Lsun/security/x509/CRLReasonCodeExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    return-object v2
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 234
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    sget-object v2, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v2}, Lsun/security/x509/X509CRLEntryImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 245
    .local v0, "ext":Lsun/security/x509/Extension;
    if-nez v0, :cond_0

    .line 246
    return-object v3

    :cond_0
    move-object v1, v0

    .line 248
    check-cast v1, Lsun/security/x509/CRLReasonCodeExtension;

    .line 249
    .local v1, "rcExt":Lsun/security/x509/CRLReasonCodeExtension;
    invoke-virtual {v1}, Lsun/security/x509/CRLReasonCodeExtension;->getReasonCode()Ljava/security/cert/CRLReason;

    move-result-object v2

    return-object v2
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v0}, Lsun/security/x509/CRLExtensions;->hasUnsupportedCriticalExtension()Z

    move-result v0

    return v0
.end method

.method setCertificateIssuer(Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "crlIssuer"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 210
    invoke-virtual {p1, p2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    .line 209
    :goto_0
    return-void

    .line 213
    :cond_0
    iput-object p2, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v9}, Lsun/security/x509/SerialNumber;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v9, "  On: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->revocationDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v9, :cond_0

    .line 299
    const-string/jumbo v9, "\n    Certificate issuer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lsun/security/x509/X509CRLEntryImpl;->certIssuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    :cond_0
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    if-eqz v9, :cond_3

    .line 302
    iget-object v9, p0, Lsun/security/x509/X509CRLEntryImpl;->extensions:Lsun/security/x509/CRLExtensions;

    invoke-virtual {v9}, Lsun/security/x509/CRLExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v0

    .line 303
    .local v0, "allEntryExts":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 305
    .local v6, "objs":[Ljava/lang/Object;
    const-string/jumbo v9, "\n    CRL Entry Extensions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v6

    if-ge v5, v9, :cond_3

    .line 307
    const-string/jumbo v9, "\n    ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    aget-object v3, v6, v5

    check-cast v3, Lsun/security/x509/Extension;

    .line 310
    .local v3, "ext":Lsun/security/x509/Extension;
    :try_start_0
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-static {v9}, Lsun/security/x509/OIDMap;->getClass(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v9

    if-nez v9, :cond_2

    .line 311
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v3}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v4

    .line 313
    .local v4, "extValue":[B
    if-eqz v4, :cond_1

    .line 314
    new-instance v7, Lsun/security/util/DerOutputStream;

    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 315
    .local v7, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v7, v4}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 316
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 317
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 318
    .local v2, "enc":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v9, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 320
    invoke-virtual {v2, v4}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 320
    const-string/jumbo v10, "\n"

    .line 318
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .end local v2    # "enc":Lsun/misc/HexDumpEncoder;
    .end local v4    # "extValue":[B
    .end local v7    # "out":Lsun/security/util/DerOutputStream;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {v3}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, ", Error parsing this extension"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 329
    .end local v0    # "allEntryExts":Ljava/util/Collection;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ext":Lsun/security/x509/Extension;
    .end local v5    # "i":I
    .end local v6    # "objs":[Ljava/lang/Object;
    :cond_3
    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
