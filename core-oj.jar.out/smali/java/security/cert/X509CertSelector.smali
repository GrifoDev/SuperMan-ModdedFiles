.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# static fields
.field private static final ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

.field private static final CERT_POLICIES_ID:I = 0x3

.field private static final EXTENDED_KEY_USAGE_ID:I = 0x4

.field private static final EXTENSION_OIDS:[Ljava/lang/String;

.field private static final FALSE:Ljava/lang/Boolean;

.field static final NAME_ANY:I = 0x0

.field private static final NAME_CONSTRAINTS_ID:I = 0x2

.field static final NAME_DIRECTORY:I = 0x4

.field static final NAME_DNS:I = 0x2

.field static final NAME_EDI:I = 0x5

.field static final NAME_IP:I = 0x7

.field static final NAME_OID:I = 0x8

.field static final NAME_RFC822:I = 0x1

.field static final NAME_URI:I = 0x6

.field static final NAME_X400:I = 0x3

.field private static final NUM_OF_EXTENSIONS:I = 0x5

.field private static final PRIVATE_KEY_USAGE_ID:I = 0x0

.field private static final SUBJECT_ALT_NAME_ID:I = 0x1

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private authorityKeyID:[B

.field private basicConstraints:I

.field private certificateValid:Ljava/util/Date;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private keyPurposeOIDSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private keyPurposeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyUsage:[Z

.field private matchAllSubjectAltNames:Z

.field private nc:Lsun/security/x509/NameConstraintsExtension;

.field private ncBytes:[B

.field private pathToGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private pathToNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private policy:Lsun/security/x509/CertificatePolicySet;

.field private policySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAlternativeGeneralNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field private subjectAlternativeNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private subjectKeyID:[B

.field private subjectPublicKey:Ljava/security/PublicKey;

.field private subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

.field private subjectPublicKeyBytes:[B

.field private x509Cert:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 89
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    .line 92
    const/16 v0, 0x1d

    const/16 v1, 0x25

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 91
    sput-object v0, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    .line 95
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    .line 131
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    .line 134
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.16"

    aput-object v1, v0, v2

    .line 135
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.17"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 136
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.30"

    aput-object v1, v0, v3

    .line 137
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.32"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 138
    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.37"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 156
    return-void
.end method

.method private addPathToNameInternal(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 1270
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 1271
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1272
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1267
    return-void
.end method

.method private addSubjectAlternativeNameInternal(ILjava/lang/Object;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 817
    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    .line 818
    .local v1, "tempName":Lsun/security/x509/GeneralNameInterface;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v2, :cond_0

    .line 819
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 821
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 822
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 824
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 825
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method private static cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1675
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1676
    .local v4, "namesCopy":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1677
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1678
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1679
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/List;

    if-nez v6, :cond_0

    .line 1680
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "expected a List"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1682
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1686
    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1687
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1689
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 1690
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name list size not 2"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1692
    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1693
    .restart local v5    # "o":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_4

    .line 1694
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "expected an Integer"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1696
    :cond_4
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "o":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1697
    .local v3, "nameType":I
    if-ltz v3, :cond_5

    const/16 v6, 0x8

    if-le v3, v6, :cond_6

    .line 1698
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name type not 0-8"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1700
    :cond_6
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1701
    .local v2, "nameObject":Ljava/lang/Object;
    instance-of v6, v2, [B

    if-nez v6, :cond_7

    .line 1702
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_8

    .line 1709
    :cond_7
    instance-of v6, v2, [B

    if-eqz v6, :cond_2

    .line 1710
    check-cast v2, [B

    .end local v2    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1703
    .restart local v2    # "nameObject":Ljava/lang/Object;
    :cond_8
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_9

    .line 1704
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "X509CertSelector.cloneAndCheckNames() name not byte array"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1707
    :cond_9
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name not byte array or String"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1713
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "nameObject":Ljava/lang/Object;
    .end local v3    # "nameType":I
    :cond_a
    return-object v4
.end method

.method private static cloneNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cloneNames encountered IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1654
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static cloneSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<*>;)",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2594
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    instance-of v1, p0, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 2595
    check-cast p0, Ljava/util/HashSet;

    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 2596
    .local v0, "clone":Ljava/lang/Object;
    check-cast v0, Ljava/util/Set;

    .end local v0    # "clone":Ljava/lang/Object;
    return-object v0

    .line 2598
    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method static equalNames(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "object1"    # Ljava/util/Collection;
    .param p1, "object2"    # Ljava/util/Collection;

    .prologue
    .line 877
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 878
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 880
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;
    .locals 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "extId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1954
    instance-of v5, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 1955
    check-cast v2, Lsun/security/x509/X509CertImpl;

    .line 1956
    .local v2, "impl":Lsun/security/x509/X509CertImpl;
    packed-switch p1, :pswitch_data_0

    .line 1968
    return-object v6

    .line 1958
    :pswitch_0
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;

    move-result-object v5

    return-object v5

    .line 1960
    :pswitch_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    return-object v5

    .line 1962
    :pswitch_2
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v5

    return-object v5

    .line 1964
    :pswitch_3
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v5

    return-object v5

    .line 1966
    :pswitch_4
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v5

    return-object v5

    .line 1971
    .end local v2    # "impl":Lsun/security/x509/X509CertImpl;
    :cond_0
    sget-object v5, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 1972
    .local v4, "rawExtVal":[B
    if-nez v4, :cond_1

    .line 1973
    return-object v6

    .line 1975
    :cond_1
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1976
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 1977
    .local v0, "encoded":[B
    packed-switch p1, :pswitch_data_1

    .line 1993
    return-object v6

    .line 1980
    :pswitch_5
    :try_start_0
    new-instance v5, Lsun/security/x509/PrivateKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/PrivateKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1981
    :catch_0
    move-exception v1

    .line 1982
    .local v1, "ex":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1985
    .end local v1    # "ex":Ljava/security/cert/CertificateException;
    :pswitch_6
    new-instance v5, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1987
    :pswitch_7
    new-instance v5, Lsun/security/x509/NameConstraintsExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1989
    :pswitch_8
    new-instance v5, Lsun/security/x509/CertificatePoliciesExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1991
    :pswitch_9
    new-instance v5, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    .line 1956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1977
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static keyUsageToString([Z)Ljava/lang/String;
    .locals 4
    .param p0, "k"    # [Z

    .prologue
    .line 1897
    const-string/jumbo v1, "KeyUsage [\n"

    .line 1899
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_0

    .line 1900
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  DigitalSignature\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1902
    :cond_0
    const/4 v2, 0x1

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_1

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Non_repudiation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1905
    :cond_1
    const/4 v2, 0x2

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_2

    .line 1906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1908
    :cond_2
    const/4 v2, 0x3

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_3

    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Data_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1911
    :cond_3
    const/4 v2, 0x4

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_4

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Agreement\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1914
    :cond_4
    const/4 v2, 0x5

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_5

    .line 1915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_CertSign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1917
    :cond_5
    const/4 v2, 0x6

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_6

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Crl_Sign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1920
    :cond_6
    const/4 v2, 0x7

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_7

    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Encipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1923
    :cond_7
    const/16 v2, 0x8

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_8

    .line 1924
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

    .line 1928
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

    .line 1930
    return-object v1

    .line 1926
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method static makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;
    .locals 5
    .param p0, "type"    # I
    .param p1, "name"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 902
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    const-string/jumbo v4, ")..."

    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 906
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 907
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    .line 908
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() name is String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 911
    :cond_1
    packed-switch p0, :pswitch_data_0

    .line 931
    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse String names of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 913
    :pswitch_1
    new-instance v0, Lsun/security/x509/RFC822Name;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    .line 934
    .local v0, "result":Lsun/security/x509/GeneralNameInterface;
    :goto_0
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    .line 935
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 936
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 935
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 988
    :cond_2
    :goto_1
    return-object v0

    .line 916
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_2
    new-instance v0, Lsun/security/x509/DNSName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    .line 917
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 919
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_3
    new-instance v0, Lsun/security/x509/X500Name;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 920
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 922
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_4
    new-instance v0, Lsun/security/x509/URIName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 925
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_5
    new-instance v0, Lsun/security/x509/IPAddressName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    .line 926
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 928
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :pswitch_6
    new-instance v0, Lsun/security/x509/OIDName;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lsun/security/x509/OIDName;-><init>(Ljava/lang/String;)V

    .line 929
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_0

    .line 938
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_3
    instance-of v2, p1, [B

    if-eqz v2, :cond_5

    .line 939
    new-instance v1, Lsun/security/util/DerValue;

    check-cast p1, [B

    .end local p1    # "name":Ljava/lang/Object;
    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 940
    .local v1, "val":Lsun/security/util/DerValue;
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_4

    .line 941
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    .line 942
    const-string/jumbo v3, "X509CertSelector.makeGeneralNameInterface() is byte[]"

    .line 941
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 945
    :cond_4
    packed-switch p0, :pswitch_data_1

    .line 974
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to parse byte array names of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :pswitch_7
    new-instance v0, Lsun/security/x509/OtherName;

    invoke-direct {v0, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    .line 977
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :goto_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    .line 978
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 979
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 950
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_8
    new-instance v0, Lsun/security/x509/RFC822Name;

    invoke-direct {v0, v1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    .line 951
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 953
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_9
    new-instance v0, Lsun/security/x509/DNSName;

    invoke-direct {v0, v1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    .line 954
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 956
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_a
    new-instance v0, Lsun/security/x509/X400Address;

    invoke-direct {v0, v1}, Lsun/security/x509/X400Address;-><init>(Lsun/security/util/DerValue;)V

    .line 957
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 959
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_b
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    .line 960
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 962
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_c
    new-instance v0, Lsun/security/x509/EDIPartyName;

    invoke-direct {v0, v1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    .line 963
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 965
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_d
    new-instance v0, Lsun/security/x509/URIName;

    invoke-direct {v0, v1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    .line 966
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 968
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_e
    new-instance v0, Lsun/security/x509/IPAddressName;

    invoke-direct {v0, v1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    .line 969
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 971
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    :pswitch_f
    new-instance v0, Lsun/security/x509/OIDName;

    invoke-direct {v0, v1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    .line 972
    .restart local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    goto :goto_2

    .line 982
    .end local v0    # "result":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "val":Lsun/security/util/DerValue;
    .restart local p1    # "name":Ljava/lang/Object;
    :cond_5
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_6

    .line 983
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.makeGeneralName() input name not String or byte array"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 986
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "name not String or byte array"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 945
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2140
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v4, :cond_0

    .line 2141
    return v5

    .line 2144
    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.35"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2145
    .local v2, "extVal":[B
    if-nez v2, :cond_2

    .line 2146
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    .line 2147
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no authority key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2150
    :cond_1
    return v6

    .line 2152
    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2153
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 2154
    .local v0, "certAuthKeyID":[B
    if-eqz v0, :cond_3

    .line 2155
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2169
    return v5

    .line 2156
    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    .line 2157
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: authority key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    :cond_4
    return v6

    .line 2162
    .end local v0    # "certAuthKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    .line 2163
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5

    .line 2164
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in authority key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2167
    :cond_5
    return v6
.end method

.method private matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2570
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ne v1, v3, :cond_0

    .line 2571
    return v5

    .line 2573
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    .line 2574
    .local v0, "maxPathLen":I
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 2575
    if-eq v0, v3, :cond_4

    .line 2576
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 2577
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: not an EE cert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2579
    :cond_1
    return v4

    .line 2582
    :cond_2
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ge v0, v1, :cond_4

    .line 2583
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_3

    .line 2584
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X509CertSelector.match: maxPathLen too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2585
    const-string/jumbo v3, " < "

    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2585
    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2585
    const-string/jumbo v3, ")"

    .line 2584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2587
    :cond_3
    return v4

    .line 2590
    :cond_4
    return v5
.end method

.method private matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 8
    .param p1, "excluded"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 2502
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2503
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralSubtree;

    .line 2504
    .local v4, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 2505
    .local v0, "excludedName":Lsun/security/x509/GeneralNameInterface;
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2506
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2507
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralNameInterface;

    .line 2508
    .local v2, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2509
    invoke-interface {v2, v0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2512
    :pswitch_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    .line 2513
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: name constraints inhibit path to specified name"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2515
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "X509CertSelector.match: excluded name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2518
    :cond_2
    const/4 v5, 0x0

    return v5

    .line 2524
    .end local v0    # "excludedName":Lsun/security/x509/GeneralNameInterface;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v2    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 2509
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 6
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2288
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2289
    :cond_0
    return v4

    .line 2294
    :cond_1
    const/4 v3, 0x4

    .line 2293
    :try_start_0
    invoke-static {p1, v3}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    check-cast v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    .line 2295
    .local v2, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-eqz v2, :cond_2

    .line 2297
    const-string/jumbo v3, "usages"

    invoke-virtual {v2, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 2298
    .local v0, "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v3, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2299
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2314
    .end local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    :cond_2
    return v4

    .line 2300
    .restart local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    :cond_3
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4

    .line 2301
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: cert failed extendedKeyUsage criterion"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :cond_4
    return v5

    .line 2307
    .end local v0    # "certKeyPurposeVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    .end local v2    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catch_0
    move-exception v1

    .line 2308
    .local v1, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    .line 2309
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: IOException in extended key usage check"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2312
    :cond_5
    return v5
.end method

.method private matchKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x1

    .line 2267
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v2, :cond_0

    .line 2268
    return v3

    .line 2270
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2271
    .local v0, "certKeyUsage":[Z
    if-eqz v0, :cond_4

    .line 2272
    const/4 v1, 0x0

    .local v1, "keyBit":I
    :goto_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2273
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 2274
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_2

    .line 2272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2275
    :cond_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3

    .line 2276
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.match: key usage bits don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2279
    :cond_3
    const/4 v2, 0x0

    return v2

    .line 2283
    .end local v1    # "keyBit":I
    :cond_4
    return v3
.end method

.method private matchNameConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 4
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2366
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-nez v1, :cond_0

    .line 2367
    return v2

    .line 2370
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v1, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2371
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 2372
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: name constraints not satisfied"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2375
    :cond_1
    return v3

    .line 2377
    :catch_0
    move-exception v0

    .line 2378
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    .line 2379
    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2382
    :cond_2
    return v3

    .line 2384
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return v2
.end method

.method private matchPathToNames(Ljava/security/cert/X509Certificate;)Z
    .locals 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2454
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v5, :cond_0

    .line 2455
    return v9

    .line 2459
    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p1, v5}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    .line 2458
    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    .line 2460
    .local v2, "ext":Lsun/security/x509/NameConstraintsExtension;
    if-nez v2, :cond_1

    .line 2461
    return v9

    .line 2463
    :cond_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "certpath"

    invoke-static {v5}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2464
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match pathToNames:\n"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2466
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2467
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2468
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2486
    .end local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :catch_0
    move-exception v0

    .line 2487
    .local v0, "ex":Ljava/io/IOException;
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    .line 2488
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2491
    :cond_2
    return v8

    .line 2473
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "ext":Lsun/security/x509/NameConstraintsExtension;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "permitted_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v4

    .line 2475
    .local v4, "permitted":Lsun/security/x509/GeneralSubtrees;
    const-string/jumbo v5, "excluded_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v1

    .line 2476
    .local v1, "excluded":Lsun/security/x509/GeneralSubtrees;
    if-eqz v1, :cond_4

    .line 2477
    invoke-direct {p0, v1}, Ljava/security/cert/X509CertSelector;->matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2478
    return v8

    .line 2481
    :cond_4
    if-eqz v4, :cond_5

    .line 2482
    invoke-direct {p0, v4}, Ljava/security/cert/X509CertSelector;->matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_5

    .line 2483
    return v8

    .line 2493
    :cond_5
    return v9
.end method

.method private matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 11
    .param p1, "permitted"    # Lsun/security/x509/GeneralSubtrees;

    .prologue
    .line 2534
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2535
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2536
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;

    .line 2537
    .local v3, "pathToName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2538
    .local v6, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    const/4 v5, 0x0

    .line 2539
    .local v5, "permittedNameFound":Z
    const/4 v1, 0x0

    .line 2540
    .local v1, "nameTypeFound":Z
    const-string/jumbo v2, ""

    .line 2541
    .local v2, "names":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_4

    .line 2556
    :cond_2
    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    .line 2557
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_3

    .line 2558
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: name constraints inhibit path to specified name; permitted names of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2560
    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v10

    .line 2558
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2561
    const-string/jumbo v10, ": "

    .line 2558
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2562
    :cond_3
    const/4 v8, 0x0

    return v8

    .line 2542
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/GeneralSubtree;

    .line 2543
    .local v7, "tree":Lsun/security/x509/GeneralSubtree;
    invoke-virtual {v7}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 2544
    .local v4, "permittedName":Lsun/security/x509/GeneralNameInterface;
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 2545
    const/4 v1, 0x1

    .line 2546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2547
    invoke-interface {v3, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2550
    :pswitch_1
    const/4 v5, 0x1

    .line 2551
    goto :goto_0

    .line 2565
    .end local v1    # "nameTypeFound":Z
    .end local v2    # "names":Ljava/lang/String;
    .end local v3    # "pathToName":Lsun/security/x509/GeneralNameInterface;
    .end local v4    # "permittedName":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "permittedNameFound":Z
    .end local v6    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralSubtree;>;"
    .end local v7    # "tree":Lsun/security/x509/GeneralSubtree;
    :cond_5
    const/4 v8, 0x1

    return v8

    .line 2547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private matchPolicy(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2389
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-nez v9, :cond_0

    .line 2390
    return v10

    .line 2394
    :cond_0
    const/4 v9, 0x3

    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v1

    .line 2393
    check-cast v1, Lsun/security/x509/CertificatePoliciesExtension;

    .line 2395
    .local v1, "ext":Lsun/security/x509/CertificatePoliciesExtension;
    if-nez v1, :cond_2

    .line 2396
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_1

    .line 2397
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: no certificate policy extension"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2400
    :cond_1
    return v11

    .line 2402
    :cond_2
    const-string/jumbo v9, "policies"

    invoke-virtual {v1, v9}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2407
    .local v7, "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2408
    .local v8, "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/PolicyInformation;

    .line 2409
    .local v5, "info":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v5}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2442
    .end local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v5    # "info":Lsun/security/x509/PolicyInformation;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    .end local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :catch_0
    move-exception v0

    .line 2443
    .local v0, "ex":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    .line 2444
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: IOException in certificate policy ID check"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2447
    :cond_3
    return v11

    .line 2411
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "ext":Lsun/security/x509/CertificatePoliciesExtension;
    .restart local v6    # "info$iterator":Ljava/util/Iterator;
    .restart local v7    # "policies":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .restart local v8    # "policyIDs":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyId;>;"
    :cond_4
    :try_start_1
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v9, :cond_a

    .line 2412
    const/4 v2, 0x0

    .line 2418
    .local v2, "foundOne":Z
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2419
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2420
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_5

    .line 2421
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2424
    :cond_5
    return v11

    .line 2427
    :cond_6
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "id$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/CertificatePolicyId;

    .line 2428
    .local v3, "id":Lsun/security/x509/CertificatePolicyId;
    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2429
    const/4 v2, 0x1

    .line 2433
    .end local v3    # "id":Lsun/security/x509/CertificatePolicyId;
    :cond_8
    if-nez v2, :cond_a

    .line 2434
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_9

    .line 2435
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2438
    :cond_9
    return v11

    .line 2449
    .end local v2    # "foundOne":Z
    .end local v4    # "id$iterator":Ljava/util/Iterator;
    :cond_a
    return v10
.end method

.method private matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z
    .locals 13
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 2174
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v9, :cond_0

    .line 2175
    return v10

    .line 2177
    :cond_0
    const/4 v5, 0x0

    .line 2180
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v9

    .line 2179
    move-object v0, v9

    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    move-object v5, v0

    .line 2181
    .local v5, "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    if-eqz v5, :cond_1

    .line 2182
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2227
    :cond_1
    return v10

    .line 2218
    .end local v5    # "ext":Lsun/security/x509/PrivateKeyUsageExtension;
    :catch_0
    move-exception v3

    .line 2219
    .local v3, "e4":Ljava/io/IOException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_2

    .line 2220
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: IOException in private key usage check; X509CertSelector: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2222
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2220
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2223
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2225
    :cond_2
    return v12

    .line 2201
    .end local v3    # "e4":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2202
    .local v2, "e2":Ljava/security/cert/CertificateNotYetValidException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    .line 2203
    const-string/jumbo v8, "n/a"

    .line 2206
    .local v8, "time":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v9, "not_before"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 2205
    check-cast v7, Ljava/util/Date;

    .line 2207
    .local v7, "notBefore":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    .line 2211
    .end local v7    # "notBefore":Ljava/util/Date;
    :goto_0
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_BEFORE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2213
    const-string/jumbo v11, "; X509CertSelector: "

    .line 2211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2214
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2211
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {v2}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    .line 2217
    .end local v8    # "time":Ljava/lang/String;
    :cond_3
    return v12

    .line 2184
    .end local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_2
    move-exception v1

    .line 2185
    .local v1, "e1":Ljava/security/cert/CertificateExpiredException;
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_4

    .line 2186
    const-string/jumbo v8, "n/a"

    .line 2189
    .restart local v8    # "time":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v9, "not_after"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 2190
    .local v6, "notAfter":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    .line 2194
    .end local v6    # "notAfter":Ljava/util/Date;
    :goto_1
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_After: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2196
    const-string/jumbo v11, "; X509CertSelector: "

    .line 2194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2197
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    .line 2200
    .end local v8    # "time":Ljava/lang/String;
    :cond_4
    return v12

    .line 2191
    .restart local v8    # "time":Ljava/lang/String;
    :catch_3
    move-exception v4

    .local v4, "ex":Ljava/security/cert/CertificateException;
    goto :goto_1

    .line 2208
    .end local v1    # "e1":Ljava/security/cert/CertificateExpiredException;
    .end local v4    # "ex":Ljava/security/cert/CertificateException;
    .restart local v2    # "e2":Ljava/security/cert/CertificateNotYetValidException;
    :catch_4
    move-exception v4

    .restart local v4    # "ex":Ljava/security/cert/CertificateException;
    goto :goto_0
.end method

.method private matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 2319
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v8, :cond_0

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2320
    :cond_0
    return v9

    .line 2325
    :cond_1
    const/4 v8, 0x1

    .line 2324
    :try_start_0
    invoke-static {p1, v8}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v6

    check-cast v6, Lsun/security/x509/SubjectAlternativeNameExtension;

    .line 2326
    .local v6, "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v6, :cond_3

    .line 2327
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    .line 2328
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: no subject alternative name extension"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2331
    :cond_2
    return v11

    .line 2334
    :cond_3
    const-string/jumbo v8, "subject_name"

    invoke-virtual {v6, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1

    .line 2336
    .local v1, "certNames":Lsun/security/x509/GeneralNames;
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2337
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2338
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralNameInterface;

    .line 2339
    .local v5, "matchName":Lsun/security/x509/GeneralNameInterface;
    const/4 v3, 0x0

    .line 2340
    .local v3, "found":Z
    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2341
    .end local v3    # "found":Z
    .local v7, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_8

    .line 2345
    :cond_5
    if-nez v3, :cond_6

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2351
    :cond_6
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v8, :cond_4

    .line 2361
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_7
    return v9

    .line 2342
    .restart local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .restart local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/GeneralName;

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    .line 2343
    .local v0, "certName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "found":Z
    goto :goto_0

    .line 2346
    .end local v0    # "certName":Lsun/security/x509/GeneralNameInterface;
    .end local v3    # "found":Z
    :cond_9
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_a

    .line 2347
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: subject alternative name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2348
    const-string/jumbo v10, " not found"

    .line 2347
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :cond_a
    return v11

    .line 2355
    .end local v1    # "certNames":Lsun/security/x509/GeneralNames;
    .end local v4    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    .end local v5    # "matchName":Lsun/security/x509/GeneralNameInterface;
    .end local v6    # "sanExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v7    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :catch_0
    move-exception v2

    .line 2356
    .local v2, "ex":Ljava/io/IOException;
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_b

    .line 2357
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: IOException in subject alternative name check"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2359
    :cond_b
    return v11
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2106
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v4, :cond_0

    .line 2107
    return v5

    .line 2110
    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.14"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 2111
    .local v2, "extVal":[B
    if-nez v2, :cond_2

    .line 2112
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    .line 2113
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no subject key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2116
    :cond_1
    return v6

    .line 2118
    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 2119
    .local v3, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    .line 2120
    .local v0, "certSubjectKeyID":[B
    if-eqz v0, :cond_3

    .line 2121
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2135
    return v5

    .line 2122
    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    .line 2123
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    :cond_4
    return v6

    .line 2128
    .end local v0    # "certSubjectKeyID":[B
    .end local v2    # "extVal":[B
    .end local v3    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v1

    .line 2129
    .local v1, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5

    .line 2130
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2133
    :cond_5
    return v6
.end method

.method private matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z
    .locals 9
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2232
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v4, :cond_0

    .line 2233
    return v8

    .line 2236
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 2237
    .local v2, "encodedKey":[B
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 2238
    .local v3, "val":Lsun/security/util/DerValue;
    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    .line 2239
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "invalid key format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    .end local v2    # "encodedKey":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    .line 2256
    .local v1, "e5":Ljava/io/IOException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    .line 2257
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: IOException in subject public key algorithm OID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2260
    :cond_1
    return v7

    .line 2242
    .end local v1    # "e5":Ljava/io/IOException;
    .restart local v2    # "encodedKey":[B
    .restart local v3    # "val":Lsun/security/util/DerValue;
    :cond_2
    :try_start_1
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 2243
    .local v0, "algID":Lsun/security/x509/AlgorithmId;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3

    .line 2244
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match: subjectPublicKeyAlgID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2245
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2245
    const-string/jumbo v6, ", xcert subjectPublicKeyAlgID = "

    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2246
    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 2244
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2248
    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2249
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    .line 2250
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public key alg IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2253
    :cond_4
    return v7

    .line 2262
    :cond_5
    return v8
.end method

.method private static parseNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 850
    .local v0, "genNames":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameList$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 851
    .local v1, "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 852
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "name list size not 2"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 854
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 855
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_1

    .line 856
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected an Integer"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 858
    :cond_1
    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 859
    .local v3, "nameType":I
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 860
    .restart local v4    # "o":Ljava/lang/Object;
    invoke-static {v3, v4}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    .end local v1    # "nameList":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "nameType":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1223
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1222
    return-void
.end method

.method public addPathToName(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    .line 1251
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 755
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    .line 799
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2609
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    .line 2611
    .local v0, "copy":Ljava/security/cert/X509CertSelector;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 2613
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2612
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 2616
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2615
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2614
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 2618
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 2620
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2619
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 2623
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 2622
    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 2621
    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    :cond_1
    return-object v0

    .line 2626
    .end local v0    # "copy":Ljava/security/cert/X509CertSelector;
    :catch_0
    move-exception v1

    .line 2628
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAuthorityKeyIdentifier()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1458
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v0, :cond_0

    .line 1459
    return-object v1

    .line 1461
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 1

    .prologue
    .line 1755
    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1477
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1478
    return-object v1

    .line 1480
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .locals 1
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
    .line 1566
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1364
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1341
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyUsage()[Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1547
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v0, :cond_0

    .line 1548
    return-object v1

    .line 1550
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getMatchAllSubjectAltNames()Z
    .locals 1

    .prologue
    .line 1586
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1737
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    if-nez v0, :cond_0

    .line 1738
    return-object v1

    .line 1740
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPathToNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1806
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1807
    return-object v1

    .line 1809
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Ljava/util/Set;
    .locals 1
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
    .line 1771
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1496
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1497
    return-object v1

    .line 1499
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1623
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1624
    return-object v1

    .line 1626
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->cloneNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAsBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1423
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1400
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1439
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v0, :cond_0

    .line 1440
    return-object v1

    .line 1442
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 1529
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1514
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v0, :cond_0

    .line 1515
    return-object v1

    .line 1517
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v2, 0x0

    .line 2005
    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_0

    .line 2006
    return v2

    :cond_0
    move-object v3, p1

    .line 2008
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2010
    .local v3, "xcert":Ljava/security/cert/X509Certificate;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    .line 2011
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match(SN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2012
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2012
    const-string/jumbo v6, "\n  Issuer: "

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2013
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2013
    const-string/jumbo v6, "\n  Subject: "

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2013
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2014
    const-string/jumbo v6, ")"

    .line 2011
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2018
    :cond_1
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    .line 2019
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2020
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    .line 2021
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2024
    :cond_2
    return v2

    .line 2029
    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v4, :cond_5

    .line 2030
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2031
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    .line 2032
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: serial numbers don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2035
    :cond_4
    return v2

    .line 2040
    :cond_5
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_7

    .line 2041
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2042
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_6

    .line 2043
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: issuer DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2046
    :cond_6
    return v2

    .line 2051
    :cond_7
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_9

    .line 2052
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2053
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_8

    .line 2054
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2057
    :cond_8
    return v2

    .line 2062
    :cond_9
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v4, :cond_a

    .line 2064
    :try_start_0
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :cond_a
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    if-eqz v4, :cond_d

    .line 2076
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 2077
    .local v0, "certKey":[B
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_d

    .line 2078
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_b

    .line 2079
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public keys don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2082
    :cond_b
    return v2

    .line 2065
    .end local v0    # "certKey":[B
    :catch_0
    move-exception v1

    .line 2066
    .local v1, "e":Ljava/security/cert/CertificateException;
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_c

    .line 2067
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certificate not within validity period"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2070
    :cond_c
    return v2

    .line 2086
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_d
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2087
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2088
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2089
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2090
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2091
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2092
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2093
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPolicy(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2094
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2095
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPathToNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    .line 2086
    if-eqz v4, :cond_e

    .line 2096
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchNameConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    .line 2098
    .local v2, "result":Z
    :cond_e
    if-eqz v2, :cond_f

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_f

    .line 2099
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match returning: true"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 2101
    :cond_f
    return v2
.end method

.method public setAuthorityKeyIdentifier([B)V
    .locals 1
    .param p1, "authorityKeyID"    # [B

    .prologue
    const/4 v0, 0x0

    .line 443
    if-nez p1, :cond_0

    .line 444
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    .line 442
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    goto :goto_0
.end method

.method public setBasicConstraints(I)V
    .locals 2
    .param p1, "minMaxPathLen"    # I

    .prologue
    .line 1067
    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "basic constraints less than -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_0
    iput p1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    .line 1066
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 176
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    .line 175
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "certValid"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 464
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 462
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "keyPurposeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 618
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 620
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 617
    :cond_1
    return-void

    .line 623
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 622
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    .line 624
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    .line 625
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 626
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 1
    .param p1, "issuerDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 227
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 204
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 203
    return-void
.end method

.method public setIssuer([B)V
    .locals 3
    .param p1, "issuerDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 279
    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 277
    return-void

    .line 279
    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public setKeyUsage([Z)V
    .locals 1
    .param p1, "keyUsage"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 591
    if-nez p1, :cond_0

    .line 592
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 590
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    goto :goto_0
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .locals 0
    .param p1, "matchAllNames"    # Z

    .prologue
    .line 648
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    .line 647
    return-void
.end method

.method public setNameConstraints([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1041
    if-nez p1, :cond_0

    .line 1042
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1043
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    .line 1040
    :goto_0
    return-void

    .line 1045
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    .line 1046
    new-instance v0, Lsun/security/x509/NameConstraintsExtension;

    sget-object v1, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    goto :goto_0
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    .line 1170
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1172
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1169
    :goto_0
    return-void

    .line 1174
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1175
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1177
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    goto :goto_0
.end method

.method setPathToNamesInternal(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    .line 1186
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    .line 1182
    return-void
.end method

.method public setPolicy(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "certPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1094
    if-nez p1, :cond_0

    .line 1095
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1096
    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    .line 1093
    :goto_0
    return-void

    .line 1100
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1099
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1102
    .local v3, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1103
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1104
    .local v2, "polIdVector":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/x509/CertificatePolicyId;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1106
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1107
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "non String in certPolicySet"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1109
    :cond_1
    new-instance v4, Lsun/security/x509/CertificatePolicyId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    .line 1110
    check-cast v1, Ljava/lang/String;

    .line 1109
    .end local v1    # "o":Ljava/lang/Object;
    invoke-direct {v5, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1113
    :cond_2
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    .line 1114
    new-instance v4, Lsun/security/x509/CertificatePolicySet;

    invoke-direct {v4, v2}, Lsun/security/x509/CertificatePolicySet;-><init>(Ljava/util/Vector;)V

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    goto :goto_0
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .locals 1
    .param p1, "privateKeyValid"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 484
    if-nez p1, :cond_0

    .line 485
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 483
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "serial"    # Ljava/math/BigInteger;

    .prologue
    .line 190
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 189
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .param p1, "subjectDN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p1, :cond_0

    .line 320
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 318
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 296
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 295
    return-void
.end method

.method public setSubject([B)V
    .locals 3
    .param p1, "subjectDN"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 343
    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 341
    return-void

    .line 343
    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v2, 0x0

    .line 700
    if-nez p1, :cond_0

    .line 701
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 702
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 699
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    .line 706
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 707
    return-void

    .line 709
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 711
    .local v0, "tempNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/List<*>;>;"
    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    .line 712
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    goto :goto_0
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 1
    .param p1, "subjectKeyID"    # [B

    .prologue
    const/4 v0, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 383
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    .line 381
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    goto :goto_0
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    const/4 v0, 0x0

    .line 523
    if-nez p1, :cond_0

    .line 524
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 525
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 522
    :goto_0
    return-void

    .line 527
    :cond_0
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 528
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    goto :goto_0
.end method

.method public setSubjectPublicKey([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 566
    if-nez p1, :cond_0

    .line 567
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    .line 568
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 565
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    .line 571
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-static {v0}, Lsun/security/x509/X509Key;->parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 507
    if-nez p1, :cond_0

    .line 508
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    .line 506
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1819
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1820
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "X509CertSelector: [\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1821
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_0

    .line 1822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Certificate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1824
    :cond_0
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v5, :cond_1

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Serial Number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1827
    :cond_1
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_2

    .line 1828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Issuer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuerAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1830
    :cond_2
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_3

    .line 1831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1833
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  matchAllSubjectAltNames flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1834
    iget-boolean v6, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 1833
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1834
    const-string/jumbo v6, "\n"

    .line 1833
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1835
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v5, :cond_4

    .line 1836
    const-string/jumbo v5, "  SubjectAlternativeNames:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1837
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1838
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1840
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1841
    const-string/jumbo v6, ", name "

    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1841
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1841
    const-string/jumbo v6, "\n"

    .line 1840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1844
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_4
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-eqz v5, :cond_5

    .line 1845
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1846
    .local v0, "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1847
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    .line 1846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1847
    const-string/jumbo v6, "\n"

    .line 1846
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1849
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_5
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-eqz v5, :cond_6

    .line 1850
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 1851
    .restart local v0    # "enc":Lsun/misc/HexDumpEncoder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Authority Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1852
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1852
    const-string/jumbo v6, "\n"

    .line 1851
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1854
    .end local v0    # "enc":Lsun/misc/HexDumpEncoder;
    :cond_6
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v5, :cond_7

    .line 1855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Certificate Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1856
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1856
    const-string/jumbo v6, "\n"

    .line 1855
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1858
    :cond_7
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v5, :cond_8

    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Private Key Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1860
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1860
    const-string/jumbo v6, "\n"

    .line 1859
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1862
    :cond_8
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-eqz v5, :cond_9

    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key AlgID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1864
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1864
    const-string/jumbo v6, "\n"

    .line 1863
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1866
    :cond_9
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    if-eqz v5, :cond_a

    .line 1867
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1868
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1867
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1868
    const-string/jumbo v6, "\n"

    .line 1867
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1870
    :cond_a
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v5, :cond_b

    .line 1871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Key Usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-static {v6}, Ljava/security/cert/X509CertSelector;->keyUsageToString([Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1873
    :cond_b
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v5, :cond_c

    .line 1874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Extended Key Usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1875
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1875
    const-string/jumbo v6, "\n"

    .line 1874
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1877
    :cond_c
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v5, :cond_d

    .line 1878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Policy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v6}, Lsun/security/x509/CertificatePolicySet;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1880
    :cond_d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v5, :cond_e

    .line 1881
    const-string/jumbo v5, "  Path to names:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1882
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1883
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1887
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralNameInterface;>;"
    :cond_e
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1888
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
