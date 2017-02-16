.class public Lsun/security/util/HostnameChecker;
.super Ljava/lang/Object;
.source "HostnameChecker.java"


# static fields
.field private static final ALTNAME_DNS:I = 0x2

.field private static final ALTNAME_IP:I = 0x7

.field private static final INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

.field private static final INSTANCE_TLS:Lsun/security/util/HostnameChecker;

.field public static final TYPE_LDAP:B = 0x2t

.field public static final TYPE_TLS:B = 0x1t


# instance fields
.field private final checkType:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lsun/security/util/HostnameChecker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsun/security/util/HostnameChecker;-><init>(B)V

    .line 50
    sput-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_TLS:Lsun/security/util/HostnameChecker;

    .line 56
    new-instance v0, Lsun/security/util/HostnameChecker;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/security/util/HostnameChecker;-><init>(B)V

    .line 55
    sput-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

    .line 46
    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .param p1, "checkType"    # B

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-byte p1, p0, Lsun/security/util/HostnameChecker;->checkType:B

    .line 65
    return-void
.end method

.method public static getInstance(B)Lsun/security/util/HostnameChecker;
    .locals 3
    .param p0, "checkType"    # B

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 75
    sget-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_TLS:Lsun/security/util/HostnameChecker;

    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 77
    sget-object v0, Lsun/security/util/HostnameChecker;->INSTANCE_LDAP:Lsun/security/util/HostnameChecker;

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown check type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getServerName(Ljava/security/Principal;)Ljava/lang/String;
    .locals 1
    .param p0, "principal"    # Ljava/security/Principal;

    .prologue
    .line 109
    invoke-static {p0}, Lsun/security/ssl/Krb5Helper;->getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    .line 223
    .local v1, "subjectDN":Ljava/security/Principal;
    instance-of v3, v1, Lsun/security/x509/X500Name;

    if-eqz v3, :cond_0

    .line 224
    nop

    nop

    .end local v1    # "subjectDN":Ljava/security/Principal;
    return-object v1

    .line 226
    .restart local v1    # "subjectDN":Ljava/security/Principal;
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 227
    .local v2, "subjectX500":Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Lsun/security/x509/X500Name;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/X500Name;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 229
    .end local v1    # "subjectDN":Ljava/security/Principal;
    .end local v2    # "subjectX500":Ljavax/security/auth/x500/X500Principal;
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v3}, Ljava/security/cert/CertificateParsingException;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 230
    check-cast v3, Ljava/security/cert/CertificateParsingException;

    throw v3
.end method

.method private static isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4LiteralAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "template"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-byte v0, p0, Lsun/security/util/HostnameChecker;->checkType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 248
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 249
    :cond_0
    iget-byte v0, p0, Lsun/security/util/HostnameChecker;->checkType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 250
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 252
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/security/Principal;)Z
    .locals 2
    .param p0, "expectedName"    # Ljava/lang/String;
    .param p1, "principal"    # Ljava/security/Principal;

    .prologue
    .line 101
    invoke-static {p1}, Lsun/security/util/HostnameChecker;->getServerName(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static matchAllWildcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "."

    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .local v0, "nameSt":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "."

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v1, "templateSt":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 275
    return v4

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v2, v3}, Lsun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    return v4

    .line 284
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v7

    .line 177
    .local v7, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v7, :cond_2

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "foundDNS":Z
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "next$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 180
    .local v5, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 181
    const/4 v3, 0x1

    .line 182
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, "dnsName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lsun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    return-void

    .line 188
    .end local v1    # "dnsName":Ljava/lang/String;
    .end local v5    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1
    if-eqz v3, :cond_2

    .line 191
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No subject alternative DNS name matching "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 192
    const-string/jumbo v11, " found."

    .line 191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 195
    .end local v3    # "foundDNS":Z
    .end local v6    # "next$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {p2}, Lsun/security/util/HostnameChecker;->getSubjectX500Name(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X500Name;

    move-result-object v8

    .line 197
    .local v8, "subjectName":Lsun/security/x509/X500Name;
    sget-object v9, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 196
    invoke-virtual {v8, v9}, Lsun/security/x509/X500Name;->findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 198
    .local v0, "derValue":Lsun/security/util/DerValue;
    if-eqz v0, :cond_3

    .line 200
    :try_start_0
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lsun/security/util/HostnameChecker;->isMatched(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 207
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No name matching "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "msg":Ljava/lang/String;
    new-instance v9, Ljava/security/cert/CertificateException;

    invoke-direct {v9, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 7
    .param p0, "expectedIP"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    .line 141
    .local v3, "subjAltNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v3, :cond_0

    .line 142
    new-instance v4, Ljava/security/cert/CertificateException;

    .line 143
    const-string/jumbo v5, "No subject alternative names present"

    .line 142
    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "next$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 147
    .local v1, "next":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 148
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    .local v0, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    return-void

    .line 154
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v1    # "next":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No subject alternative names matching IP address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 156
    const-string/jumbo v6, " found"

    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static matchLeftmostWildcard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 303
    const-string/jumbo v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 304
    .local v1, "templateIdx":I
    const-string/jumbo v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 306
    .local v0, "nameIdx":I
    if-ne v1, v3, :cond_0

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 308
    :cond_0
    if-ne v0, v3, :cond_1

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-static {v2, v3}, Lsun/security/util/HostnameChecker;->matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 318
    :cond_2
    return v4
.end method

.method private static matchWildCards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 329
    const-string/jumbo v5, "*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 330
    .local v4, "wildcardIdx":I
    if-ne v4, v6, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 333
    :cond_0
    const/4 v3, 0x1

    .line 334
    .local v3, "isBeginning":Z
    const-string/jumbo v2, ""

    .line 335
    .local v2, "beforeWildcard":Ljava/lang/String;
    move-object v0, p1

    .line 337
    .local v0, "afterWildcard":Ljava/lang/String;
    :goto_0
    if-eq v4, v6, :cond_3

    .line 340
    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 341
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 344
    .local v1, "beforeStartIdx":I
    if-eq v1, v6, :cond_1

    .line 345
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 346
    :cond_1
    return v7

    .line 348
    :cond_2
    const/4 v3, 0x0

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 352
    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 354
    .end local v1    # "beforeStartIdx":I
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public match(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "expectedName"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p1}, Lsun/security/util/HostnameChecker;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1, p2}, Lsun/security/util/HostnameChecker;->matchIP(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    .line 89
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/security/util/HostnameChecker;->matchDNS(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    goto :goto_0
.end method
