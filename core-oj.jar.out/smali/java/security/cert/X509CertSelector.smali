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

    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const/16 v0, 0x1d

    const/16 v1, 0x25

    filled-new-array {v3, v4, v0, v1, v2}, [I

    move-result-object v0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.16"

    aput-object v1, v0, v2

    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.17"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.30"

    aput-object v1, v0, v3

    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.32"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v0, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    const-string/jumbo v1, "2.5.29.37"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return-void
.end method

.method private addPathToNameInternal(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSubjectAlternativeNameInternal(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "expected a List"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    check-cast v5, Ljava/util/List;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name list size not 2"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_4

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "expected an Integer"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_5

    const/16 v6, 0x8

    if-le v3, v6, :cond_6

    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name type not 0-8"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v6, v2, [B

    if-nez v6, :cond_7

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_8

    :cond_7
    instance-of v6, v2, [B

    if-eqz v6, :cond_2

    check-cast v2, [B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_9

    sget-object v6, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v7, "X509CertSelector.cloneAndCheckNames() name not byte array"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "name not byte array or String"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

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

    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cloneNames encountered IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

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

    instance-of v1, p0, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method static equalNames(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    instance-of v5, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v5, :cond_0

    move-object v2, p0

    check-cast v2, Lsun/security/x509/X509CertImpl;

    packed-switch p1, :pswitch_data_0

    return-object v6

    :pswitch_0
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;

    move-result-object v5

    return-object v5

    :pswitch_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    return-object v5

    :pswitch_2
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v5

    return-object v5

    :pswitch_3
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v5

    return-object v5

    :pswitch_4
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;

    move-result-object v5

    return-object v5

    :cond_0
    sget-object v5, Ljava/security/cert/X509CertSelector;->EXTENSION_OIDS:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    return-object v6

    :cond_1
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    packed-switch p1, :pswitch_data_1

    return-object v6

    :pswitch_5
    :try_start_0
    new-instance v5, Lsun/security/x509/PrivateKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/PrivateKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_6
    new-instance v5, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    :pswitch_7
    new-instance v5, Lsun/security/x509/NameConstraintsExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/NameConstraintsExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    :pswitch_8
    new-instance v5, Lsun/security/x509/CertificatePoliciesExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/CertificatePoliciesExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    :pswitch_9
    new-instance v5, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v6, Ljava/security/cert/X509CertSelector;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

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

    const-string/jumbo v1, "KeyUsage [\n"

    const/4 v2, 0x0

    :try_start_0
    aget-boolean v2, p0, v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  DigitalSignature\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Non_repudiation\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, 0x2

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const/4 v2, 0x3

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Data_Encipherment\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/4 v2, 0x4

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_Agreement\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/4 v2, 0x5

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Key_CertSign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const/4 v2, 0x6

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Crl_Sign\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/4 v2, 0x7

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  Encipher_Only\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    const/16 v2, 0x8

    aget-boolean v2, p0, v2

    if-eqz v2, :cond_8

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

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

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

    :cond_1
    packed-switch p0, :pswitch_data_0

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

    :pswitch_1
    new-instance v0, Lsun/security/x509/RFC822Name;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/RFC822Name;-><init>(Ljava/lang/String;)V

    :goto_0
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0

    :pswitch_2
    new-instance v0, Lsun/security/x509/DNSName;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/DNSName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lsun/security/x509/X500Name;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lsun/security/x509/URIName;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/URIName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lsun/security/x509/IPAddressName;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/IPAddressName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lsun/security/x509/OIDName;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lsun/security/x509/OIDName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v2, p1, [B

    if-eqz v2, :cond_5

    new-instance v1, Lsun/security/util/DerValue;

    check-cast p1, [B

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_4

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.makeGeneralNameInterface() is byte[]"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    packed-switch p0, :pswitch_data_1

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

    :pswitch_7
    new-instance v0, Lsun/security/x509/OtherName;

    invoke-direct {v0, v1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    :goto_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "X509CertSelector.makeGeneralNameInterface() result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Lsun/security/x509/RFC822Name;

    invoke-direct {v0, v1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_9
    new-instance v0, Lsun/security/x509/DNSName;

    invoke-direct {v0, v1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_a
    new-instance v0, Lsun/security/x509/X400Address;

    invoke-direct {v0, v1}, Lsun/security/x509/X400Address;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_b
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, v1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_c
    new-instance v0, Lsun/security/x509/EDIPartyName;

    invoke-direct {v0, v1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_d
    new-instance v0, Lsun/security/x509/URIName;

    invoke-direct {v0, v1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_e
    new-instance v0, Lsun/security/x509/IPAddressName;

    invoke-direct {v0, v1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :pswitch_f
    new-instance v0, Lsun/security/x509/OIDName;

    invoke-direct {v0, v1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_2

    :cond_5
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_6

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.makeGeneralName() input name not String or byte array"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "name not String or byte array"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

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

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.35"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no authority key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v6

    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: authority key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    :catch_0
    move-exception v1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in authority key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return v6
.end method

.method private matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ne v1, v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    if-eq v0, v3, :cond_4

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: not an EE cert"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    iget v1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    if-ge v0, v1, :cond_4

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_3

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "X509CertSelector.match: maxPathLen too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    return v4

    :cond_4
    return v5
.end method

.method private matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 8

    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/GeneralSubtree;

    invoke-virtual {v4}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v5

    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-interface {v2, v0}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: name constraints inhibit path to specified name"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

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

    :cond_2
    const/4 v5, 0x0

    return v5

    :cond_3
    const/4 v5, 0x1

    return v5

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

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v3, 0x4

    :try_start_0
    invoke-static {p1, v3}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    check-cast v2, Lsun/security/x509/ExtendedKeyUsageExtension;

    if-eqz v2, :cond_2

    const-string/jumbo v3, "usages"

    invoke-virtual {v2, v3}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    sget-object v3, Ljava/security/cert/X509CertSelector;->ANY_EXTENDED_KEY_USAGE:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v4

    :cond_3
    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4

    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: cert failed extendedKeyUsage criterion"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v5

    :catch_0
    move-exception v1

    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    sget-object v3, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "X509CertSelector.match: IOException in extended key usage check"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return v5
.end method

.method private matchKeyUsage(Ljava/security/cert/X509Certificate;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_3

    sget-object v2, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "X509CertSelector.match: key usage bits don\'t match"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    return v3
.end method

.method private matchNameConstraints(Ljava/security/cert/X509Certificate;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v1, p1}, Lsun/security/x509/NameConstraintsExtension;->verify(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: name constraints not satisfied"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v3

    :catch_0
    move-exception v0

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method private matchPathToNames(Ljava/security/cert/X509Certificate;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-nez v5, :cond_0

    return v9

    :cond_0
    const/4 v5, 0x2

    :try_start_0
    invoke-static {p1, v5}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v2

    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    if-nez v2, :cond_1

    return v9

    :cond_1
    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "certpath"

    invoke-static {v5}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match pathToNames:\n"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

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

    :catch_0
    move-exception v0

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    sget-object v5, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "X509CertSelector.match: IOException in name constraints check"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    return v8

    :cond_3
    :try_start_1
    const-string/jumbo v5, "permitted_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v4

    const-string/jumbo v5, "excluded_subtrees"

    invoke-virtual {v2, v5}, Lsun/security/x509/NameConstraintsExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralSubtrees;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Ljava/security/cert/X509CertSelector;->matchExcluded(Lsun/security/x509/GeneralSubtrees;)Z

    move-result v5

    if-nez v5, :cond_4

    return v8

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct {p0, v4}, Ljava/security/cert/X509CertSelector;->matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_5

    return v8

    :cond_5
    return v9
.end method

.method private matchPermitted(Lsun/security/x509/GeneralSubtrees;)Z
    .locals 11

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {p1}, Lsun/security/x509/GeneralSubtrees;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_4

    :cond_2
    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_3

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: name constraints inhibit path to specified name; permitted names of type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v8, 0x0

    return v8

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/GeneralSubtree;

    invoke-virtual {v7}, Lsun/security/x509/GeneralSubtree;->getName()Lsun/security/x509/GeneralName;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v8

    invoke-interface {v3}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v9

    if-ne v8, v9, :cond_1

    const/4 v1, 0x1

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

    invoke-interface {v3, v4}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x1

    return v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private matchPolicy(Ljava/security/cert/X509Certificate;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-nez v9, :cond_0

    return v10

    :cond_0
    const/4 v9, 0x3

    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificatePoliciesExtension;

    if-nez v1, :cond_2

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_1

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: no certificate policy extension"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v11

    :cond_2
    const-string/jumbo v9, "policies"

    invoke-virtual {v1, v9}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/PolicyInformation;

    invoke-virtual {v5}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: IOException in certificate policy ID check"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    return v11

    :cond_4
    :try_start_1
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v9, :cond_a

    const/4 v2, 0x0

    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_5

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return v11

    :cond_6
    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicySet;->getCertPolicyIds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/CertificatePolicyId;

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_a

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_9

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v10, "X509CertSelector.match: cert failed policyAny criterion"

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return v11

    :cond_a
    return v10
.end method

.method private matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z
    .locals 13

    const/4 v10, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v9, :cond_0

    return v10

    :cond_0
    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-static {p1, v9}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    move-object v5, v0

    if-eqz v5, :cond_1

    iget-object v9, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->valid(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v10

    :catch_0
    move-exception v3

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_2

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: IOException in private key usage check; X509CertSelector: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return v12

    :catch_1
    move-exception v2

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_3

    const-string/jumbo v8, "n/a"

    :try_start_1
    const-string/jumbo v9, "not_before"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    :goto_0
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_BEFORE: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; X509CertSelector: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/security/cert/CertificateNotYetValidException;->printStackTrace()V

    :cond_3
    return v12

    :catch_2
    move-exception v1

    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_4

    const-string/jumbo v8, "n/a"

    :try_start_2
    const-string/jumbo v9, "not_after"

    invoke-virtual {v5, v9}, Lsun/security/x509/PrivateKeyUsageExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v8

    :goto_1
    sget-object v9, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "X509CertSelector.match: private key usage not within validity date; ext.NOT_After: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; X509CertSelector: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->printStackTrace()V

    :cond_4
    return v12

    :catch_3
    move-exception v4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method private matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v8, :cond_0

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return v9

    :cond_1
    const/4 v8, 0x1

    :try_start_0
    invoke-static {p1, v8}, Ljava/security/cert/X509CertSelector;->getExtensionObject(Ljava/security/cert/X509Certificate;I)Ljava/security/cert/Extension;

    move-result-object v6

    check-cast v6, Lsun/security/x509/SubjectAlternativeNameExtension;

    if-nez v6, :cond_3

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: no subject alternative name extension"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    return v11

    :cond_3
    const-string/jumbo v8, "subject_name"

    invoke-virtual {v6, v8}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v1

    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/GeneralNameInterface;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v3, :cond_8

    :cond_5
    if-nez v3, :cond_6

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_6
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    if-nez v8, :cond_4

    :cond_7
    return v9

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/GeneralName;

    invoke-virtual {v8}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_9
    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_a

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509CertSelector.match: subject alternative name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v11

    :catch_0
    move-exception v2

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_b

    sget-object v8, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "X509CertSelector.match: IOException in subject alternative name check"

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_b
    return v11
.end method

.method private matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    const-string/jumbo v4, "2.5.29.14"

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: no subject key ID extension"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v6

    :cond_2
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-direct {v3, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    :cond_3
    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject key IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v6

    :catch_0
    move-exception v1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_5

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: exception in subject key ID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return v6
.end method

.method private matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v4, :cond_0

    return v8

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, v2}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v4, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "invalid key format"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: IOException in subject public key algorithm OID check"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return v7

    :cond_2
    :try_start_1
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-static {v4}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match: subjectPublicKeyAlgID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", xcert subjectPublicKeyAlgID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public key alg IDs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return v7

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

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "name list size not 2"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "expected an Integer"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/security/cert/X509CertSelector;->makeGeneralNameInterface(ILjava/lang/Object;)Lsun/security/x509/GeneralNameInterface;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public addPathToName(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addPathToNameInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeNameInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-static {v2}, Ljava/security/cert/X509CertSelector;->cloneSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAuthorityKeyIdentifier()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getBasicConstraints()I
    .locals 1

    iget v0, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_0

    return-object v1

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

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

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

    const/4 v0, 0x0

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

    const/4 v0, 0x0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public getMatchAllSubjectAltNames()Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    if-nez v0, :cond_0

    return-object v1

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    if-nez v0, :cond_0

    return-object v1

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

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .locals 1

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-nez v0, :cond_0

    return-object v1

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

    const/4 v0, 0x0

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

    const/4 v0, 0x0

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 8

    const/4 v2, 0x0

    instance-of v4, p1, Ljava/security/cert/X509Certificate;

    if-nez v4, :cond_0

    return v2

    :cond_0
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "X509CertSelector.match(SN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n  Issuer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n  Subject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v3}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_2

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v4, :cond_5

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_4

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: serial numbers don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    return v2

    :cond_5
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_7

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_6

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: issuer DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_6
    return v2

    :cond_7
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_9

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_8

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject DNs don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_8
    return v2

    :cond_9
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v4, :cond_a

    :try_start_0
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_b

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: subject public keys don\'t match"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_b
    return v2

    :catch_0
    move-exception v1

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_c

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match: certificate not within validity period"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_c
    return v2

    :cond_d
    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchBasicConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchAuthorityKeyID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPrivateKeyValid(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectPublicKeyAlgID(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPolicy(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchPathToNames(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v3}, Ljava/security/cert/X509CertSelector;->matchNameConstraints(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    :cond_e
    if-eqz v2, :cond_f

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_f

    sget-object v4, Ljava/security/cert/X509CertSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "X509CertSelector.match returning: true"

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_f
    return v2
.end method

.method public setAuthorityKeyIdentifier([B)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    goto :goto_0
.end method

.method public setBasicConstraints(I)V
    .locals 2

    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "basic constraints less than -2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/security/cert/X509CertSelector;->basicConstraints:I

    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    :goto_0
    return-void

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

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyPurposeOIDSet:Ljava/util/Set;

    new-instance v3, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v3, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

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

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public setIssuer([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    goto :goto_0
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    return-void
.end method

.method public setNameConstraints([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nc:Lsun/security/x509/NameConstraintsExtension;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->ncBytes:[B

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

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

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

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/Set;

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

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

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "non String in certPolicySet"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Lsun/security/x509/CertificatePolicyId;

    new-instance v5, Lsun/security/util/ObjectIdentifier;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lsun/security/x509/CertificatePolicyId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policySet:Ljava/util/Set;

    new-instance v4, Lsun/security/x509/CertificatePolicySet;

    invoke-direct {v4, v2}, Lsun/security/x509/CertificatePolicySet;-><init>(Ljava/util/Vector;)V

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    goto :goto_0
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_0
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    :goto_0
    return-void

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

    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method public setSubject([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

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

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    iput-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    return-void

    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CertSelector;->cloneAndCheckNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/X509CertSelector;->parseNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeGeneralNames:Ljava/util/Set;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    goto :goto_0
.end method

.method public setSubjectKeyIdentifier([B)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    goto :goto_0
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    goto :goto_0
.end method

.method public setSubjectPublicKey([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyBytes:[B

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, p1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "X509CertSelector: [\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->x509Cert:Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_0

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

    :cond_0
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v5, :cond_1

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

    :cond_1
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_2

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

    :cond_2
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v5, :cond_3

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

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  matchAllSubjectAltNames flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Ljava/security/cert/X509CertSelector;->matchAllSubjectAltNames:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "  SubjectAlternativeNames:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectAlternativeNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

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

    const-string/jumbo v6, ", name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    if-eqz v5, :cond_5

    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    if-eqz v5, :cond_6

    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Authority Key Identifier: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyID:[B

    invoke-virtual {v0, v6}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Certificate Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Private Key Valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    if-eqz v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key AlgID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Subject Public Key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v5, :cond_b

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

    :cond_b
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Extended Key Usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyPurposeSet:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->policy:Lsun/security/x509/CertificatePolicySet;

    if-eqz v5, :cond_d

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

    :cond_d
    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    if-eqz v5, :cond_e

    const-string/jumbo v5, "  Path to names:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/security/cert/X509CertSelector;->pathToGeneralNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

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

    :cond_e
    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
