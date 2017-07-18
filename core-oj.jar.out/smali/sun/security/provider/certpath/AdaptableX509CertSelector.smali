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

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    iput-boolean v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    iput-boolean v0, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    :cond_1
    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    instance-of v3, p1, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    return v5

    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v1

    if-ge v1, v6, :cond_2

    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    if-eqz v3, :cond_4

    if-lt v1, v6, :cond_3

    const-string/jumbo v3, "2.5.29.14"

    invoke-virtual {v2, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSubjectKeyIdentifier([B)V

    :cond_4
    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    if-eqz v3, :cond_5

    if-ge v1, v6, :cond_5

    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    :cond_5
    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v5

    :catch_1
    move-exception v0

    return v5
.end method

.method parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    const-string/jumbo v3, "key_id"

    invoke-virtual {p1, v3}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/KeyIdentifier;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v0}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-super {p0, v3}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    iput-boolean v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSKIDSensitive:Z

    :cond_1
    const-string/jumbo v3, "serial_number"

    invoke-virtual {p1, v3}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/SerialNumber;

    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v1}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-super {p0, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    iput-boolean v4, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->isSNSensitive:Z

    :cond_3
    return-void
.end method

.method setValidityPeriod(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->startDate:Ljava/util/Date;

    iput-object p2, p0, Lsun/security/provider/certpath/AdaptableX509CertSelector;->endDate:Ljava/util/Date;

    return-void
.end method
