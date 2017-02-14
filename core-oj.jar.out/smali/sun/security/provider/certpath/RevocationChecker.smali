.class Lsun/security/provider/certpath/RevocationChecker;
.super Ljava/security/cert/PKIXRevocationChecker;
.source "RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/RevocationChecker$Mode;,
        Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;,
        Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    }
.end annotation


# static fields
.field private static final synthetic -java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I = null

.field private static final synthetic -sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I = null

.field private static final ALL_REASONS:[Z

.field private static final CRL_SIGN_USAGE:[Z

.field private static final HEX_DIGITS:Ljava/lang/String; = "0123456789ABCDEFabcdef"

.field private static final MAX_CLOCK_SKEW:J = 0xdbba0L

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private anchor:Ljava/security/cert/TrustAnchor;

.field private certIndex:I

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private crlDP:Z

.field private crlSignFlag:Z

.field private issuerCert:Ljava/security/cert/X509Certificate;

.field private legacy:Z

.field private mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

.field private ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private onlyEE:Z

.field private params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

.field private prevPubKey:Ljava/security/PublicKey;

.field private responderCert:Ljava/security/cert/X509Certificate;

.field private responderURI:Ljava/net/URI;

.field private softFail:Z

.field private softFailExceptions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method private static synthetic -getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/security/cert/PKIXRevocationChecker$Option;->values()[Ljava/security/cert/PKIXRevocationChecker$Option;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-java-security-cert-PKIXRevocationChecker$OptionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker$Mode;->values()[Lsun/security/provider/certpath/RevocationChecker$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->-sun-security-provider-certpath-RevocationChecker$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    return-void
.end method

.method constructor <init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    return-void
.end method

.method private buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() starting work"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_1

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v27, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;-><init>(Ljava/util/Set;)V

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v9

    :goto_0
    :try_start_0
    new-instance v25, Ljava/security/cert/PKIXBuilderParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v9, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setExplicitPolicyRequired(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setPolicyMappingInhibited(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setAnyPolicyInhibited(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->getPKIXParameters()Ljava/security/cert/PKIXParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    sget-boolean v2, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v2, :cond_7

    const/16 v33, 0x0

    :try_start_1
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v33

    :cond_2
    :goto_1
    const/16 v22, 0x0

    if-eqz v33, :cond_3

    invoke-virtual/range {v33 .. v33}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v22

    :cond_3
    if-eqz v22, :cond_7

    invoke-virtual/range {v22 .. v22}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lsun/security/x509/AccessDescription;

    invoke-static/range {v19 .. v19}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v32

    if-eqz v32, :cond_4

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_5

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "adding AIAext CertStore"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    goto/16 :goto_0

    :catch_0
    move-exception v35

    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v26

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey: error decoding cert: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 v24, 0x0

    :try_start_2
    const-string/jumbo v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    :goto_3
    move-object/from16 v37, p3

    :goto_4
    :try_start_3
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to try build ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {v24 .. v25}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v30

    check-cast v30, Ljava/security/cert/PKIXCertPathBuilderResult;

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_9

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to check revocation ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    if-nez v37, :cond_f

    new-instance p3, Ljava/util/HashSet;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8

    :goto_5
    :try_start_4
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    :cond_a
    const/4 v6, 0x1

    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v28

    :try_start_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v34, v2, -0x1

    :goto_6
    if-ltz v34, :cond_c

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_b

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() index "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " checking "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    invoke-static {v3}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v4

    add-int/lit8 v34, v34, -0x1

    goto :goto_6

    :catch_2
    move-exception v36

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v36

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v31

    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v37, p3

    goto/16 :goto_4

    :cond_c
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_d

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() got key "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v12

    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v17

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_7 .. :try_end_7} :catch_6

    return-void

    :catch_4
    move-exception v31

    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v2

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v5, :cond_e

    throw v31
    :try_end_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_5
    move-exception v35

    :goto_7
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_e
    :try_start_9
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v29

    :goto_8
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v14, "Could not determine revocation status"

    sget-object v18, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v13

    :catch_7
    move-exception v35

    move-object/from16 p3, v37

    goto :goto_7

    :catch_8
    move-exception v29

    move-object/from16 p3, v37

    goto :goto_8

    :cond_f
    move-object/from16 p3, v37

    goto/16 :goto_5
.end method

.method static certCanSignCrl(Ljava/security/cert/X509Certificate;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "Skipping revocation check, not end entity cert"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    :goto_1
    return-void

    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v7}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_2

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    throw v0

    :pswitch_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-direct {p0, v7}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v0, v1, :cond_6

    :cond_3
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    return-void

    :cond_4
    :try_start_6
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-ne v0, v1, :cond_6

    :cond_5
    throw v7

    :cond_6
    move-object v6, v7

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RevocationChecker.check() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() preparing to failover"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :try_start_7
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getsun-security-provider-certpath-RevocationChecker$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    packed-switch v0, :pswitch_data_1

    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    :pswitch_2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    :try_start_8
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    :try_end_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v9

    :try_start_9
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_9

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() failover failed"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RevocationChecker.check() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_a

    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :pswitch_3
    :try_start_a
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_a
    :try_start_b
    invoke-direct {p0, v9}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v7

    :cond_b
    if-nez v8, :cond_8

    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "RevocationChecker.checkApprovedCRLs() starting the final sweep..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() cert SN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    const/4 v11, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-static {v10}, Lsun/security/x509/X509CRLEntryImpl;->toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() CRL entry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v12

    if-nez v12, :cond_4

    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    :cond_4
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationDate()Ljava/util/Date;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v3, Ljava/security/cert/CertificateRevokedException;

    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getExtensions()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v13, v12, v1, v2}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :catch_0
    move-exception v7

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Unrecognized critical extension(s) in revoked CRL entry"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() ---checking revocation status ..."

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_1

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() circular dependency"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v7, "Could not determine revocation status"

    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    :cond_2
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    new-instance v30, Ljava/security/cert/X509CRLSelector;

    invoke-direct/range {v30 .. v30}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v7

    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, v30

    invoke-static {v0, v7, v10, v11}, Lsun/security/provider/certpath/CertPathHelper;->setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_3
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/security/cert/CertStore;

    :try_start_0
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/CRL;

    check-cast v26, Ljava/security/cert/X509CRL;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_4

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() CertStoreException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    if-nez v6, :cond_3

    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v7, "Unable to determine revocation status due to network error"

    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    goto :goto_0

    :cond_5
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_6

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() possible crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_6
    const/16 v7, 0x9

    new-array v14, v7, [Z

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    move-object/from16 v9, p0

    move-object/from16 v10, v29

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v15, p7

    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/RevocationChecker;->verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_8

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() approved crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    :goto_2
    return-void

    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v23, 0x0

    move-object/from16 v15, v30

    move/from16 v16, p4

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v21, v14

    move-object/from16 v22, p7

    invoke-static/range {v15 .. v23}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_2

    :catch_1
    move-exception v8

    instance-of v7, v8, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    if-eqz v7, :cond_b

    move-object/from16 v28, v8

    nop

    nop

    invoke-virtual/range {v28 .. v28}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v16, "Unable to determine revocation status due to network error"

    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    :cond_b
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_c
    if-eqz p5, :cond_e

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/provider/certpath/RevocationChecker;->verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v25

    if-eqz v6, :cond_d

    throw v6

    :cond_d
    throw v25

    :cond_e
    if-eqz v6, :cond_f

    throw v6

    :cond_f
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v16, "Could not determine revocation status"

    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PublicKey;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v4, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/16 v25, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    const/16 v28, 0x0

    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    new-instance v23, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    move-object/from16 v22, v23

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    if-eqz v29, :cond_4

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Found cached OCSP response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lsun/security/provider/certpath/OCSPResponse;

    move-object/from16 v0, v29

    invoke-direct {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/Extension;

    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1.3.6.1.5.5.7.48.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getValue()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v21

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    :try_start_3
    new-instance v23, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v22, v23

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v24

    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_7

    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v14, Ljava/security/cert/CertificateRevokedException;

    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v2

    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse;->getSignerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getSingleExtensions()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-direct {v14, v0, v2, v3, v4}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v14}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    sget-object v17, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v15, 0x0

    const/16 v16, -0x1

    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v12

    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    :goto_3
    if-nez v8, :cond_6

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "Certificate does not specify OCSP responder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-direct {v2, v3, v4, v5, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v11

    move-object/from16 v1, v28

    :goto_4
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v10, "Unable to determine revocation status due to network error"

    sget-object v14, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-direct/range {v9 .. v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v9

    :cond_5
    :try_start_6
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v8

    goto :goto_3

    :cond_6
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_8

    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v16, "Certificate\'s revocation status is unknown"

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v18

    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/16 v17, 0x0

    const/16 v19, -0x1

    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    :cond_8
    return-void

    :catch_2
    move-exception v11

    goto :goto_4
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2, p2, p3}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "cannot parse ocsp.responderCertIssuerName property"

    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "cannot parse ocsp.responderCertSerialNumber property"

    invoke-direct {v3, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "cannot parse ocsp.responderCertSubjectName property"

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v2

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    :try_start_0
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v4

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_2

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CertStore exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v8, "Cannot find the responder\'s certificate (set using the OCSP security properties)."

    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Must specify both ocsp.responderCertIssuerName and ocsp.responderCertSerialNumber properties"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method private static getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .locals 1

    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$1;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    return-object v0
.end method

.method private isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z
    .locals 6

    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget v4, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "0123456789ABCDEFabcdef"

    aget-char v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "cannot parse ocsp.responderURL property"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    if-lez v1, :cond_1

    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    :cond_1
    return-void
.end method

.method private verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_0

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RevocationChecker.verifyPossibleCRLs: Checking CRLDPs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    const/16 v17, 0x0

    if-nez v15, :cond_4

    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    check-cast v12, Lsun/security/x509/X500Name;

    new-instance v2, Lsun/security/x509/DistributionPoint;

    new-instance v4, Lsun/security/x509/GeneralNames;

    invoke-direct {v4}, Lsun/security/x509/GeneralNames;-><init>()V

    new-instance v5, Lsun/security/x509/GeneralName;

    invoke-direct {v5, v12}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v4, v5}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    :goto_0
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/DistributionPoint;

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v11

    const/4 v7, 0x0

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v14

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3

    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception while verifying CRL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    :cond_4
    :try_start_1
    const-string/jumbo v4, "points"

    invoke-virtual {v15, v4}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    goto :goto_0

    :cond_5
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([Z[Z)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    return-object v18
.end method

.method private verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PublicKey;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v6, "revocation status"

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RevocationChecker.verifyWithSeparateSigningKey() ---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1

    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.verifyWithSeparateSigningKey() circular dependency"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "Could not determine revocation status"

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    invoke-direct {p0, p1, v2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/security/cert/PKIXRevocationChecker;
    .locals 1

    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lsun/security/provider/certpath/RevocationChecker;
    .locals 3

    invoke-super {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker;

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSoftFailExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
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

    const/4 v0, 0x0

    return-object v0
.end method

.method init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    invoke-static {v7}, Lsun/security/provider/certpath/RevocationChecker;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    :cond_0
    iput-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized revocation parameter option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    if-eqz v7, :cond_4

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    :goto_0
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    :goto_2
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    iput-object p2, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    const-string/jumbo v8, "Collection"

    new-instance v9, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v8, v9}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    return-void

    :cond_4
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_0

    :cond_5
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    :cond_6
    :goto_4
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    goto :goto_1

    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_4

    :cond_8
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_3

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RevocationChecker: error creating Collection CertStore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    :goto_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    goto :goto_1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
