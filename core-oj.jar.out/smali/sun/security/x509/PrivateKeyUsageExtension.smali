.class public Lsun/security/x509/PrivateKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "PrivateKeyUsageExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.PrivateKeyUsage"

.field public static final NAME:Ljava/lang/String; = "PrivateKeyUsage"

.field public static final NOT_AFTER:Ljava/lang/String; = "not_after"

.field public static final NOT_BEFORE:Ljava/lang/String; = "not_before"

.field private static final TAG_AFTER:B = 0x1t

.field private static final TAG_BEFORE:B


# instance fields
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 134
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 79
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 80
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 136
    sget-object v4, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 139
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 140
    new-instance v3, Lsun/security/util/DerInputStream;

    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 141
    .local v3, "str":Lsun/security/util/DerInputStream;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 146
    .local v2, "seq":[Lsun/security/util/DerValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_6

    .line 147
    aget-object v1, v2, v0

    .line 149
    .local v1, "opt":Lsun/security/util/DerValue;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 169
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid encoding of PrivateKeyUsageExtension"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_2
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-eqz v4, :cond_3

    .line 152
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    .line 153
    const-string/jumbo v5, "Duplicate notBefore in PrivateKeyUsage."

    .line 152
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_3
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 156
    new-instance v3, Lsun/security/util/DerInputStream;

    .end local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 157
    .restart local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_4
    iget-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-eqz v4, :cond_5

    .line 162
    new-instance v4, Ljava/security/cert/CertificateParsingException;

    .line 163
    const-string/jumbo v5, "Duplicate notAfter in PrivateKeyUsage."

    .line 162
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_5
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 166
    new-instance v3, Lsun/security/util/DerInputStream;

    .end local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 167
    .restart local v3    # "str":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    goto :goto_1

    .line 135
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_6
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 79
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 80
    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 117
    iput-object p1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 118
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    .line 120
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 122
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 116
    return-void
.end method

.method private encodeThis()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, -0x80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 84
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 85
    iput-object v4, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 91
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 92
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 93
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 94
    invoke-static {v6, v5, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 97
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 98
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 99
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 101
    const/4 v3, 0x1

    .line 100
    invoke-static {v6, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 103
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 104
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    .line 83
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    const-string/jumbo v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 289
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 280
    return-void

    .line 283
    :cond_0
    const-string/jumbo v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    goto :goto_0

    .line 286
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

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
    .line 231
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 232
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->critical:Z

    .line 235
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 237
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 238
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 230
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 266
    const-string/jumbo v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 268
    :cond_0
    const-string/jumbo v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 271
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

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
    .line 297
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 298
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "not_before"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 299
    const-string/jumbo v1, "not_after"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const-string/jumbo v0, "PrivateKeyUsage"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    instance-of v0, p2, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const-string/jumbo v0, "not_before"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    .line 258
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/PrivateKeyUsageExtension;->encodeThis()V

    .line 246
    return-void

    .line 252
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "not_after"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    goto :goto_0

    .line 255
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:PrivateKeyUsage."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "PrivateKeyUsage: [\n"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 178
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 178
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "]\n"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "From: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "To: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
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
    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 195
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V

    .line 193
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
    .line 214
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotBefore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notBefore:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iget-object v0, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NotAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lsun/security/x509/PrivateKeyUsageExtension;->notAfter:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    return-void
.end method
