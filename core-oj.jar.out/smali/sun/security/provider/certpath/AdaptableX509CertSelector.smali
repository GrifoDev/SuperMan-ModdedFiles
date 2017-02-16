.class Lsun/security/provider/certpath/AdaptableX509CertSelector;
.super Ljava/security/cert/X509CertSelector;
.source "AdaptableX509CertSelector.java"


# instance fields
.field private endDate:Ljava/util/Date;

.field private isSKIDSensitive:Z

.field private isSNSensitive:Z

.field private startDate:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 55
    iput-boolean v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    .line 58
    iput-boolean v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 192
    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    .line 193
    .local v0, "copy":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 197
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 201
    :cond_1
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 141
    instance-of v3, p1, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    .line 142
    return v5

    :cond_0
    move-object v2, p1

    .line 145
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 146
    .local v2, "xcert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    .line 149
    .local v1, "version":I
    if-ge v1, v6, :cond_2

    .line 150
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_1

    .line 152
    :try_start_0
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_1
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 160
    :try_start_1
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :cond_2
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    if-eqz v3, :cond_4

    .line 169
    if-lt v1, v6, :cond_3

    const-string/jumbo v3, "2.5.29.14"

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_4

    .line 170
    :cond_3
    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 182
    :cond_4
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    if-eqz v3, :cond_5

    if-ge v1, v6, :cond_5

    .line 183
    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 186
    :cond_5
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    return v3

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return v5

    .line 161
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 162
    .restart local v0    # "ce":Ljava/security/cert/CertificateException;
    return v5
.end method

.method parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    .locals 5
    .param p1, "akidext"    # Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 103
    if-eqz p1, :cond_3

    .line 105
    const-string/jumbo v3, "key_id"

    .line 104
    invoke-virtual {p1, v3}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/KeyIdentifier;

    .line 106
    .local v0, "akid":Lsun/security/x509/KeyIdentifier;
    if-eqz v0, :cond_1

    .line 108
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 109
    :cond_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 110
    .local v2, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {v0}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 111
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-super {p0, v3}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 113
    iput-boolean v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    .line 118
    .end local v2    # "derout":Lsun/security/util/DerOutputStream;
    :cond_1
    const-string/jumbo v3, "serial_number"

    .line 117
    invoke-virtual {p1, v3}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/SerialNumber;

    .line 119
    .local v1, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v1, :cond_3

    .line 121
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_3

    .line 122
    :cond_2
    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 123
    iput-boolean v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    .line 102
    .end local v0    # "akid":Lsun/security/x509/KeyIdentifier;
    .end local v1    # "asn":Lsun/security/x509/SerialNumber;
    :cond_3
    return-void
.end method

.method setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;
    .param p2, "endDate"    # Ljava/util/Date;

    .prologue
    .line 84
    iput-object p1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    .line 85
    iput-object p2, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    .line 83
    return-void
.end method
