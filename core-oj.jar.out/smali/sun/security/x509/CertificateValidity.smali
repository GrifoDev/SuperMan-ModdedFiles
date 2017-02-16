.class public Lsun/security/x509/CertificateValidity;
.super Ljava/lang/Object;
.source "CertificateValidity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.validity"

.field public static final NAME:Ljava/lang/String; = "validity"

.field public static final NOT_AFTER:Ljava/lang/String; = "notAfter"

.field public static final NOT_BEFORE:Ljava/lang/String; = "notBefore"

.field private static final YR_2050:J = 0x24bd0146400L


# instance fields
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 117
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 115
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 128
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateValidity;->construct(Lsun/security/util/DerValue;)V

    .line 126
    return-void
.end method

.method private construct(Lsun/security/util/DerValue;)V
    .locals 9
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x18

    const/16 v7, 0x17

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 73
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoded CertificateValidity, starting sequence tag missing."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "No data encoded for CertificateValidity"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 81
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v1

    .line 82
    .local v1, "seq":[Lsun/security/util/DerValue;
    array-length v2, v1

    if-eq v2, v6, :cond_2

    .line 83
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2
    aget-object v2, v1, v4

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v7, :cond_3

    .line 86
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 93
    :goto_0
    aget-object v2, v1, v5

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v7, :cond_5

    .line 94
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 71
    :goto_1
    return-void

    .line 87
    :cond_3
    aget-object v2, v1, v4

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v8, :cond_4

    .line 88
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    goto :goto_0

    .line 90
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_5
    aget-object v2, v1, v5

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-ne v2, v8, :cond_6

    .line 96
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto :goto_1

    .line 98
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getNotAfter()Ljava/util/Date;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private getNotBefore()Ljava/util/Date;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
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

    .line 208
    const-string/jumbo v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 207
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string/jumbo v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto :goto_0

    .line 213
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v4, 0x24bd0146400L

    .line 151
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 152
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "CertAttrSet:CertificateValidity: null values to encode.\n"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 157
    .local v0, "pair":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 158
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 162
    :goto_0
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 163
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    .line 167
    :goto_1
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 168
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 170
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 147
    return-void

    .line 160
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    goto :goto_1
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
    .line 194
    const-string/jumbo v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const-string/jumbo v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 223
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 224
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "notBefore"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v1, "notAfter"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string/jumbo v0, "validity"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    instance-of v0, p2, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    const-string/jumbo v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 176
    :goto_0
    return-void

    .line 182
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto :goto_0

    .line 185
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 136
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Validity: [From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, ",\n               To: "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "]"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 247
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 245
    return-void
.end method

.method public valid(Ljava/util/Date;)V
    .locals 3
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotBefore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    return-void
.end method
