.class Lsun/security/provider/certpath/URICertStore;
.super Ljava/security/cert/CertStoreSpi;
.source "URICertStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/URICertStore$UCS;,
        Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xb9

.field private static final CHECK_INTERVAL:I = 0x7530

.field private static final CRL_CONNECT_TIMEOUT:I

.field private static final DEFAULT_CRL_CONNECT_TIMEOUT:I = 0x3a98

.field private static final certStoreCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private certs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private crl:Ljava/security/cert/X509CRL;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private lastChecked:J

.field private lastModified:J

.field private ldap:Z

.field private ldapCertStore:Ljava/security/cert/CertStore;

.field private ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

.field private ldapPath:Ljava/lang/String;

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    .line 134
    invoke-static {}, Lsun/security/provider/certpath/URICertStore;->initializeTimeout()I

    move-result v0

    sput v0, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    .line 188
    const/16 v0, 0xb9

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 5
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 120
    iput-boolean v3, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 160
    instance-of v1, p1, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    .line 162
    const-string/jumbo v2, "params must be instanceof URICertStoreParameters"

    .line 161
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_0
    nop

    nop

    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    invoke-static {p1}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    .line 166
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ldap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iput-boolean v4, p0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    .line 168
    const-string/jumbo v1, "LDAP"

    invoke-static {v1}, Lsun/security/provider/certpath/CertStoreHelper;->getInstance(Ljava/lang/String;)Lsun/security/provider/certpath/CertStoreHelper;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    .line 169
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    iget-object v2, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Lsun/security/provider/certpath/CertStoreHelper;->getCertStore(Ljava/net/URI;)Ljava/security/cert/CertStore;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    .line 170
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 173
    iget-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    .line 177
    :cond_1
    :try_start_0
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method static declared-synchronized getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 5
    .param p0, "params"    # Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const-class v2, Lsun/security/provider/certpath/URICertStore;

    monitor-enter v2

    .line 191
    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CertStore URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;->-get0(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_0
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    .line 195
    .local v0, "ucs":Ljava/security/cert/CertStore;
    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lsun/security/provider/certpath/URICertStore$UCS;

    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    new-instance v1, Lsun/security/provider/certpath/URICertStore;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/URICertStore;-><init>(Ljava/security/cert/CertStoreParameters;)V

    const-string/jumbo v3, "URI"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v3, p0}, Lsun/security/provider/certpath/URICertStore$UCS;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    .line 197
    .restart local v0    # "ucs":Ljava/security/cert/CertStore;
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->certStoreCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p0, v0}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 203
    return-object v0

    .line 199
    :cond_2
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "URICertStore.getInstance: cache hit"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ucs":Ljava/security/cert/CertStore;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;
    .locals 7
    .param p0, "ad"    # Lsun/security/x509/AccessDescription;

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    .line 212
    sget-object v4, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    .line 211
    invoke-virtual {v3, v4}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    return-object v6

    .line 215
    :cond_0
    invoke-virtual {p0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 216
    .local v1, "gn":Lsun/security/x509/GeneralNameInterface;
    instance-of v3, v1, Lsun/security/x509/URIName;

    if-nez v3, :cond_1

    .line 217
    return-object v6

    .line 219
    :cond_1
    nop

    nop

    .end local v1    # "gn":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v1}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 222
    .local v2, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v3, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v3, v2}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 221
    invoke-static {v3}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_2

    .line 225
    sget-object v3, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception creating CertStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    :cond_2
    return-object v6
.end method

.method private static getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRL;",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 444
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_0

    .line 331
    return-object p0

    .line 333
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v2, "matchedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 335
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    return-object v2
.end method

.method private static initializeTimeout()I
    .locals 3

    .prologue
    .line 143
    new-instance v1, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v2, "com.sun.security.crl.timeout"

    invoke-direct {v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "tmp":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 145
    :cond_0
    const/16 v1, 0x3a98

    return v1

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    return v1
.end method


# virtual methods
.method public declared-synchronized engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 21
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 361
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v15, :cond_0

    .line 362
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    move-object v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .local v14, "xsel":Ljava/security/cert/X509CRLSelector;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v14, v0, v1}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CRLSelector;Ljava/util/Collection;Ljava/lang/String;)Ljava/security/cert/X509CRLSelector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 372
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v15, v14}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_2
    .catch Ljava/security/cert/CertStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 365
    :catch_0
    move-exception v9

    .line 366
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/security/cert/CertStoreException;

    invoke-direct {v15, v9}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v9    # "ioe":Ljava/io/IOException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 373
    .restart local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :catch_1
    move-exception v5

    .line 374
    .local v5, "cse":Ljava/security/cert/CertStoreException;
    :try_start_4
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string/jumbo v16, "LDAP"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v15

    .line 381
    .end local v5    # "cse":Ljava/security/cert/CertStoreException;
    .end local v14    # "xsel":Ljava/security/cert/X509CRLSelector;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 382
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x7530

    cmp-long v15, v16, v18

    if-gez v15, :cond_2

    .line 383
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_1

    .line 384
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v16, "Returning CRL from cache"

    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 388
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v15}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    .line 391
    .local v4, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 394
    :cond_3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 395
    .local v10, "oldLastModified":J
    sget v15, Lsun/security/provider/certpath/URICertStore;->CRL_CONNECT_TIMEOUT:I

    invoke-virtual {v4, v15}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 396
    const/16 v16, 0x0

    const/4 v8, 0x0

    .local v8, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 397
    .local v8, "in":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 398
    const-wide/16 v18, 0x0

    cmp-long v15, v10, v18

    if-eqz v15, :cond_c

    .line 399
    move-object/from16 v0, p0

    iget-wide v0, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    move-wide/from16 v18, v0

    cmp-long v15, v10, v18

    if-nez v15, :cond_8

    .line 400
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_4

    .line 401
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Not modified, using cached copy"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 403
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v15

    .line 420
    if-eqz v8, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_0
    if-eqz v16, :cond_7

    :try_start_9
    throw v16
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 422
    .end local v4    # "connection":Ljava/net/URLConnection;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v10    # "oldLastModified":J
    :catch_2
    move-exception v6

    .line 423
    .local v6, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_6

    .line 424
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v16, "Exception fetching CRL:"

    invoke-virtual/range {v15 .. v16}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    :cond_6
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 429
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    .line 430
    new-instance v15, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    const-string/jumbo v16, "URI"

    .line 431
    new-instance v17, Ljava/security/cert/CertStoreException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    .line 430
    invoke-direct/range {v15 .. v17}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 420
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v10    # "oldLastModified":J
    :catch_3
    move-exception v16

    goto :goto_0

    :cond_7
    monitor-exit p0

    .line 403
    return-object v15

    .line 404
    :cond_8
    :try_start_b
    instance-of v15, v4, Ljava/net/HttpURLConnection;

    if-eqz v15, :cond_c

    .line 406
    move-object v0, v4

    nop

    nop

    move-object v7, v0

    .line 407
    .local v7, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 408
    const/16 v17, 0x130

    .line 407
    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 409
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_9

    .line 410
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Not modified, using cached copy"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 412
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v15

    .line 420
    if-eqz v8, :cond_a

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_a
    :goto_1
    if-eqz v16, :cond_b

    :try_start_d
    throw v16
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_4
    move-exception v16

    goto :goto_1

    :cond_b
    monitor-exit p0

    .line 412
    return-object v15

    .line 416
    .end local v7    # "hconn":Ljava/net/HttpURLConnection;
    :cond_c
    :try_start_e
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v15, :cond_d

    .line 417
    sget-object v15, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "Downloading new CRL..."

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 419
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v15, v8}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p0

    iput-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 420
    if-eqz v8, :cond_e

    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_e
    :goto_2
    if-eqz v16, :cond_12

    :try_start_10
    throw v16
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_5
    move-exception v16

    goto :goto_2

    .end local v8    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v15

    :try_start_11
    throw v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v16

    move-object/from16 v20, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v20

    :goto_3
    if-eqz v8, :cond_f

    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_f
    :goto_4
    if-eqz v16, :cond_11

    :try_start_13
    throw v16

    :catch_7
    move-exception v17

    if-nez v16, :cond_10

    move-object/from16 v16, v17

    goto :goto_4

    :cond_10
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_11
    throw v15

    .line 421
    .restart local v8    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/provider/certpath/URICertStore;->crl:Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCRLs(Ljava/security/cert/X509CRL;Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v15

    monitor-exit p0

    return-object v15

    .line 420
    .end local v8    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v15

    goto :goto_3
.end method

.method public declared-synchronized engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 17
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 251
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lsun/security/provider/certpath/URICertStore;->ldap:Z

    if-eqz v12, :cond_0

    .line 252
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509CertSelector;

    move-object v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .local v7, "xsel":Ljava/security/cert/X509CertSelector;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapHelper:Lsun/security/provider/certpath/CertStoreHelper;

    invoke-virtual {v7}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/security/provider/certpath/URICertStore;->ldapPath:Ljava/lang/String;

    invoke-virtual {v12, v7, v13, v14}, Lsun/security/provider/certpath/CertStoreHelper;->wrap(Ljava/security/cert/X509CertSelector;Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)Ljava/security/cert/X509CertSelector;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 262
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->ldapCertStore:Ljava/security/cert/CertStore;

    invoke-virtual {v12, v7}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    monitor-exit p0

    .line 261
    return-object v12

    .line 255
    :catch_0
    move-exception v6

    .line 256
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v12, Ljava/security/cert/CertStoreException;

    invoke-direct {v12, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "xsel":Ljava/security/cert/X509CertSelector;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 268
    :cond_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 269
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J

    sub-long v12, v10, v12

    const-wide/16 v14, 0x7530

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    .line 270
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_1

    .line 271
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v13, "Returning certificates from cache"

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    monitor-exit p0

    return-object v12

    .line 275
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iput-wide v10, v0, Lsun/security/provider/certpath/URICertStore;->lastChecked:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 277
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->uri:Ljava/net/URI;

    invoke-virtual {v12}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 278
    .local v2, "connection":Ljava/net/URLConnection;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 279
    move-object/from16 v0, p0

    iget-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    invoke-virtual {v2, v12, v13}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 281
    :cond_3
    move-object/from16 v0, p0

    iget-wide v8, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 282
    .local v8, "oldLastModified":J
    const/4 v13, 0x0

    const/4 v5, 0x0

    .local v5, "in":Ljava/io/InputStream;
    :try_start_7
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 283
    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 284
    const-wide/16 v14, 0x0

    cmp-long v12, v8, v14

    if-eqz v12, :cond_c

    .line 285
    move-object/from16 v0, p0

    iget-wide v14, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    cmp-long v12, v8, v14

    if-nez v12, :cond_8

    .line 286
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_4

    .line 287
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Not modified, using cached copy"

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 289
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v12

    .line 308
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_0
    if-eqz v13, :cond_7

    :try_start_9
    throw v13
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 310
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v8    # "oldLastModified":J
    :catch_1
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_6

    .line 312
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v13, "Exception fetching certificates:"

    invoke-virtual {v12, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    :cond_6
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lsun/security/provider/certpath/URICertStore;->lastModified:J

    .line 318
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v12

    .line 308
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "oldLastModified":J
    :catch_2
    move-exception v13

    goto :goto_0

    :cond_7
    monitor-exit p0

    .line 289
    return-object v12

    .line 290
    :cond_8
    :try_start_b
    instance-of v12, v2, Ljava/net/HttpURLConnection;

    if-eqz v12, :cond_c

    .line 292
    move-object v0, v2

    nop

    nop

    move-object v4, v0

    .line 293
    .local v4, "hconn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 294
    const/16 v14, 0x130

    .line 293
    if-ne v12, v14, :cond_c

    .line 295
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_9

    .line 296
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Not modified, using cached copy"

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 298
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v12

    .line 308
    if-eqz v5, :cond_a

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_a
    :goto_1
    if-eqz v13, :cond_b

    :try_start_d
    throw v13
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_3
    move-exception v13

    goto :goto_1

    :cond_b
    monitor-exit p0

    .line 298
    return-object v12

    .line 302
    .end local v4    # "hconn":Ljava/net/HttpURLConnection;
    :cond_c
    :try_start_e
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    if-eqz v12, :cond_d

    .line 303
    sget-object v12, Lsun/security/provider/certpath/URICertStore;->debug:Lsun/security/util/Debug;

    const-string/jumbo v14, "Downloading new certificates..."

    invoke-virtual {v12, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 307
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v12, v5}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v12

    .line 306
    move-object/from16 v0, p0

    iput-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 308
    if-eqz v5, :cond_e

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_e
    :goto_2
    if-eqz v13, :cond_12

    :try_start_10
    throw v13
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :catch_4
    move-exception v13

    goto :goto_2

    .end local v5    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v12

    :try_start_11
    throw v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object/from16 v12, v16

    :goto_3
    if-eqz v5, :cond_f

    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_f
    :goto_4
    if-eqz v13, :cond_11

    :try_start_13
    throw v13

    :catch_6
    move-exception v14

    if-nez v13, :cond_10

    move-object v13, v14

    goto :goto_4

    :cond_10
    if-eq v13, v14, :cond_f

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_11
    throw v12

    .line 309
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/URICertStore;->certs:Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lsun/security/provider/certpath/URICertStore;->getMatchingCerts(Ljava/util/Collection;Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v12

    monitor-exit p0

    return-object v12

    .line 308
    .end local v5    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v12

    goto :goto_3
.end method
