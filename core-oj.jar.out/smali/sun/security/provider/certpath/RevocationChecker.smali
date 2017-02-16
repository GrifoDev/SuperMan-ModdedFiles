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

    .prologue
    .line 53
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 793
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    .line 792
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    .line 923
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    .line 922
    sput-object v0, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    .line 51
    return-void

    .line 793
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

    .line 923
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

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 66
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 1
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/security/cert/PKIXRevocationChecker;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 66
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 76
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    .line 96
    invoke-virtual {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    .line 93
    return-void
.end method

.method private buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V
    .locals 39
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
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

    .prologue
    .line 930
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 931
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() starting work"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 934
    :cond_0
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 935
    .local v23, "badKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz p2, :cond_1

    .line 936
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_1
    new-instance v27, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/RevocationChecker$RejectKeySelector;-><init>(Ljava/util/Set;)V

    .line 939
    .local v27, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 940
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->CRL_SIGN_USAGE:[Z

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-nez v2, :cond_6

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v9

    .line 948
    .local v9, "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_0
    :try_start_0
    new-instance v25, Ljava/security/cert/PKIXBuilderParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v9, v1}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .local v25, "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v2

    .line 954
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v2

    .line 956
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->getPKIXParameters()Ljava/security/cert/PKIXParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    .line 964
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 971
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 974
    sget-boolean v2, Lsun/security/provider/certpath/Builder;->USE_AIA:Z

    if-eqz v2, :cond_7

    .line 975
    const/16 v33, 0x0

    .line 977
    .local v33, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v33

    .line 985
    .end local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_2
    :goto_1
    const/16 v22, 0x0

    .line 986
    .local v22, "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    if-eqz v33, :cond_3

    .line 987
    invoke-virtual/range {v33 .. v33}, Lsun/security/x509/X509CertImpl;->getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;

    move-result-object v22

    .line 989
    .end local v22    # "aiaExt":Lsun/security/x509/AuthorityInfoAccessExtension;
    :cond_3
    if-eqz v22, :cond_7

    .line 990
    invoke-virtual/range {v22 .. v22}, Lsun/security/x509/AuthorityInfoAccessExtension;->getAccessDescriptions()Ljava/util/List;

    move-result-object v21

    .line 991
    .local v21, "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    if-eqz v21, :cond_7

    .line 992
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ad$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lsun/security/x509/AccessDescription;

    .line 993
    .local v19, "ad":Lsun/security/x509/AccessDescription;
    invoke-static/range {v19 .. v19}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/x509/AccessDescription;)Ljava/security/cert/CertStore;

    move-result-object v32

    .line 994
    .local v32, "cs":Ljava/security/cert/CertStore;
    if-eqz v32, :cond_4

    .line 995
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_5

    .line 996
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "adding AIAext CertStore"

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 998
    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_2

    .line 944
    .end local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v19    # "ad":Lsun/security/x509/AccessDescription;
    .end local v20    # "ad$iterator":Ljava/util/Iterator;
    .end local v21    # "adList":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AccessDescription;>;"
    .end local v25    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .end local v32    # "cs":Ljava/security/cert/CertStore;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .restart local v9    # "newAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    goto/16 :goto_0

    .line 949
    :catch_0
    move-exception v35

    .line 950
    .local v35, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 978
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v25    # "builderParams":Ljava/security/cert/PKIXBuilderParameters;
    .restart local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_1
    move-exception v26

    .line 980
    .local v26, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2

    .line 981
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

    .line 1005
    .end local v26    # "ce":Ljava/security/cert/CertificateException;
    .end local v33    # "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_7
    const/16 v24, 0x0

    .line 1007
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string/jumbo v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :goto_3
    move-object/from16 v37, p3

    .line 1013
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v37, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_4
    :try_start_3
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8

    .line 1014
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to try build ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1018
    :cond_8
    invoke-virtual/range {v24 .. v25}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v30

    check-cast v30, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 1020
    .local v30, "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_9

    .line 1021
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "RevocationChecker.buildToNewKey() about to check revocation ..."

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1026
    :cond_9
    if-nez v37, :cond_f

    .line 1027
    new-instance p3, Ljava/util/HashSet;

    invoke-direct/range {p3 .. p3}, Ljava/util/HashSet;-><init>()V
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1029
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v38

    .line 1031
    .local v38, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1032
    .local v4, "prevKey2":Ljava/security/PublicKey;
    if-nez v4, :cond_a

    .line 1033
    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1035
    :cond_a
    const/4 v6, 0x1

    .line 1037
    .local v6, "signFlag":Z
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;
    :try_end_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v28

    .line 1039
    .local v28, "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    :try_start_5
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v34, v2, -0x1

    .end local v6    # "signFlag":Z
    .local v34, "i":I
    :goto_6
    if-ltz v34, :cond_c

    .line 1040
    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 1042
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_b

    .line 1043
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() index "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1044
    const-string/jumbo v7, " checking "

    .line 1043
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1047
    :cond_b
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 1049
    invoke-static {v3}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    .line 1050
    .local v6, "signFlag":Z
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v4

    .line 1039
    add-int/lit8 v34, v34, -0x1

    goto :goto_6

    .line 1008
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v6    # "signFlag":Z
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    :catch_2
    move-exception v36

    .line 1009
    .local v36, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v36

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1052
    .end local v36    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .local v24, "builder":Ljava/security/cert/CertPathBuilder;
    .restart local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_3
    move-exception v31

    .line 1054
    .local v31, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_6
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v37, p3

    .line 1055
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_4

    .line 1058
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v34    # "i":I
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_c
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_d

    .line 1059
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RevocationChecker.buildToNewKey() got key "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1060
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 1059
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 1066
    :cond_d
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v12

    .line 1068
    .local v12, "newKey":Ljava/security/PublicKey;
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v17

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1068
    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    :try_end_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1071
    return-void

    .line 1072
    :catch_4
    move-exception v31

    .line 1074
    .restart local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v2

    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v5, :cond_e

    .line 1075
    throw v31
    :try_end_8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1081
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_5
    move-exception v35

    .line 1082
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    :goto_7
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v35

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1080
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v4    # "prevKey2":Ljava/security/PublicKey;
    .restart local v12    # "newKey":Ljava/security/PublicKey;
    .restart local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v34    # "i":I
    .restart local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :cond_e
    :try_start_9
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 1083
    .end local v4    # "prevKey2":Ljava/security/PublicKey;
    .end local v12    # "newKey":Ljava/security/PublicKey;
    .end local v28    # "cpList":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    .end local v31    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v34    # "i":I
    .end local v38    # "ta":Ljava/security/cert/TrustAnchor;
    :catch_6
    move-exception v29

    .line 1084
    .end local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .local v29, "cpbe":Ljava/security/cert/CertPathBuilderException;
    :goto_8
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    .line 1085
    const-string/jumbo v14, "Could not determine revocation status"

    .line 1086
    sget-object v18, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 1085
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1086
    const/16 v17, -0x1

    .line 1084
    invoke-direct/range {v13 .. v18}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v13

    .line 1081
    .end local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_7
    move-exception v35

    .restart local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    move-object/from16 p3, v37

    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_7

    .line 1083
    .end local v35    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :catch_8
    move-exception v29

    .restart local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    move-object/from16 p3, v37

    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_8

    .end local v29    # "cpbe":Ljava/security/cert/CertPathBuilderException;
    .end local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local v30    # "cpbr":Ljava/security/cert/PKIXCertPathBuilderResult;
    .restart local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_f
    move-object/from16 p3, v37

    .end local v37    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .restart local p3    # "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto/16 :goto_5
.end method

.method static certCanSignCrl(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 774
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_0

    .line 775
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    return v1

    .line 777
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V
    .locals 10
    .param p1, "xcert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pubKey"    # Ljava/security/PublicKey;
    .param p4, "crlSignFlag"    # Z
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

    .prologue
    .line 347
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_0
    iget-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 348
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "Skipping revocation check, not end entity cert"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 352
    return-void

    .line 354
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

    .line 414
    :goto_0
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 344
    :goto_1
    return-void

    .line 357
    :pswitch_0
    :try_start_2
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v7

    .line 366
    .local v7, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_3
    invoke-virtual {v7}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_2

    .line 367
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    .end local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :catchall_0
    move-exception v0

    .line 414
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 413
    throw v0

    .line 361
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

    .line 369
    .restart local v7    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_2
    :try_start_5
    invoke-direct {p0, v7}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v8

    .line 370
    .local v8, "eSoftFail":Z
    if-eqz v8, :cond_4

    .line 371
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v0, v1, :cond_6

    .line 414
    :cond_3
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 372
    return-void

    .line 375
    :cond_4
    :try_start_6
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    sget-object v1, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    if-ne v0, v1, :cond_6

    .line 376
    :cond_5
    throw v7

    .line 379
    :cond_6
    move-object v6, v7

    .line 381
    .local v6, "cause":Ljava/security/cert/CertPathValidatorException;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_7

    .line 382
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

    .line 383
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() preparing to failover"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 386
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

    .line 414
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/RevocationChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 388
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

    .line 395
    :catch_1
    move-exception v9

    .line 396
    .local v9, "x":Ljava/security/cert/CertPathValidatorException;
    :try_start_9
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_9

    .line 397
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "RevocationChecker.check() failover failed"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 398
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

    .line 400
    :cond_9
    invoke-virtual {v9}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v0

    sget-object v1, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v0, v1, :cond_a

    .line 401
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 392
    .end local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :pswitch_3
    :try_start_a
    invoke-direct {p0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    :try_end_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 403
    .restart local v9    # "x":Ljava/security/cert/CertPathValidatorException;
    :cond_a
    :try_start_b
    invoke-direct {p0, v9}, Lsun/security/provider/certpath/RevocationChecker;->isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 404
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 405
    throw v7

    .line 408
    :cond_b
    if-nez v8, :cond_8

    .line 409
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 386
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 16
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 605
    .local p2, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v14

    .line 607
    .local v14, "sn":Ljava/math/BigInteger;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "RevocationChecker.checkApprovedCRLs() starting the final sweep..."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 609
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() cert SN: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 610
    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 613
    .end local v14    # "sn":Ljava/math/BigInteger;
    :cond_0
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 614
    .local v12, "reasonCode":Ljava/security/cert/CRLReason;
    const/4 v11, 0x0

    .line 615
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .local v9, "crl$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509CRL;

    .line 616
    .local v8, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;

    move-result-object v10

    .line 617
    .local v10, "e":Ljava/security/cert/X509CRLEntry;
    if-eqz v10, :cond_1

    .line 619
    :try_start_0
    invoke-static {v10}, Lsun/security/x509/X509CRLEntryImpl;->toImpl(Ljava/security/cert/X509CRLEntry;)Lsun/security/x509/X509CRLEntryImpl;
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 623
    .local v11, "entry":Lsun/security/x509/X509CRLEntryImpl;
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    .line 624
    sget-object v1, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RevocationChecker.checkApprovedCRLs() CRL entry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 625
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 633
    :cond_2
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v15

    .line 634
    .local v15, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 645
    :cond_3
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v12

    .line 646
    if-nez v12, :cond_4

    .line 647
    sget-object v12, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    .line 649
    :cond_4
    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationDate()Ljava/util/Date;

    move-result-object v13

    .line 650
    .local v13, "revocationDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 651
    new-instance v3, Ljava/security/cert/CertificateRevokedException;

    .line 653
    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v11}, Lsun/security/x509/X509CRLEntryImpl;->getExtensions()Ljava/util/Map;

    move-result-object v2

    .line 651
    invoke-direct {v3, v13, v12, v1, v2}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 654
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 655
    invoke-virtual {v3}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 654
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 620
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v13    # "revocationDate":Ljava/util/Date;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 621
    .local v7, "ce":Ljava/security/cert/CRLException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 636
    .end local v7    # "ce":Ljava/security/cert/CRLException;
    .restart local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .restart local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 637
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificateIssuer_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 638
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 640
    const-string/jumbo v2, "Unrecognized critical extension(s) in revoked CRL entry"

    .line 639
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    .end local v8    # "crl":Ljava/security/cert/X509CRL;
    .end local v10    # "e":Ljava/security/cert/X509CRLEntry;
    .end local v11    # "entry":Lsun/security/x509/X509CRLEntryImpl;
    .end local v15    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V
    .locals 33
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "signFlag"    # Z
    .param p5, "allowSeparateKey"    # Z
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

    .prologue
    .line 470
    .local p6, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local p7, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

    .line 471
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() ---checking revocation status ..."

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 478
    :cond_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 479
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_1

    .line 480
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v9, "RevocationChecker.checkCRLs() circular dependency"

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 483
    :cond_1
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    .line 484
    const-string/jumbo v7, "Could not determine revocation status"

    .line 485
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 484
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 483
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 488
    :cond_2
    new-instance v29, Ljava/util/HashSet;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 489
    .local v29, "possibleCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 490
    .local v24, "approvedCRLs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    new-instance v30, Ljava/security/cert/X509CRLSelector;

    invoke-direct/range {v30 .. v30}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 491
    .local v30, "sel":Ljava/security/cert/X509CRLSelector;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v7

    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, v30

    invoke-static {v0, v7, v10, v11}, Lsun/security/provider/certpath/CertPathHelper;->setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    .line 495
    const/4 v6, 0x0

    .line 496
    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .local v32, "store$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/security/cert/CertStore;

    .line 498
    .local v31, "store":Ljava/security/cert/CertStore;
    :try_start_0
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "crl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/CRL;

    .line 499
    .local v26, "crl":Ljava/security/cert/CRL;
    check-cast v26, Ljava/security/cert/X509CRL;

    .end local v26    # "crl":Ljava/security/cert/CRL;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 501
    .end local v27    # "crl$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 502
    .local v8, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_4

    .line 503
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() CertStoreException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 504
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 503
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 506
    :cond_4
    if-nez v6, :cond_3

    .line 507
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    .line 506
    if-eqz v7, :cond_3

    .line 509
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    .line 510
    const-string/jumbo v7, "Unable to determine revocation status due to network error"

    .line 512
    sget-object v11, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 511
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 509
    invoke-direct/range {v6 .. v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .local v6, "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_0

    .line 517
    .end local v6    # "networkFailureException":Ljava/security/cert/CertPathValidatorException;
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    .end local v31    # "store":Ljava/security/cert/CertStore;
    :cond_5
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_6

    .line 518
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() possible crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 519
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->size()I

    move-result v10

    .line 518
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 521
    :cond_6
    const/16 v7, 0x9

    new-array v14, v7, [Z

    .line 522
    .local v14, "reasonsMask":[Z
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    move-object/from16 v9, p0

    move-object/from16 v10, v29

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v15, p7

    .line 525
    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/RevocationChecker;->verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 530
    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_8

    .line 531
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RevocationChecker.checkCRLs() approved crls.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 532
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v10

    .line 531
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 537
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 538
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    .line 537
    if-eqz v7, :cond_9

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 468
    :goto_2
    return-void

    .line 545
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    if-eqz v7, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v20, v0

    .line 549
    const/16 v23, 0x0

    move-object/from16 v15, v30

    move/from16 v16, p4

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v21, v14

    move-object/from16 v22, p7

    .line 546
    invoke-static/range {v15 .. v23}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :cond_a
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 565
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->ALL_REASONS:[Z

    invoke-static {v14, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v7

    .line 564
    if-eqz v7, :cond_c

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lsun/security/provider/certpath/RevocationChecker;->checkApprovedCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    goto :goto_2

    .line 551
    :catch_1
    move-exception v8

    .line 552
    .restart local v8    # "e":Ljava/security/cert/CertStoreException;
    instance-of v7, v8, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    if-eqz v7, :cond_b

    move-object/from16 v28, v8

    .line 553
    nop

    nop

    .line 554
    .local v28, "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    invoke-virtual/range {v28 .. v28}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lsun/security/provider/certpath/CertStoreHelper;->isCausedByNetworkIssue(Ljava/lang/String;Ljava/security/cert/CertStoreException;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 556
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 557
    const-string/jumbo v16, "Unable to determine revocation status due to network error"

    .line 559
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 558
    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v17, v8

    .line 556
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    .line 562
    .end local v28    # "cste":Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
    :cond_b
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 569
    .end local v8    # "e":Ljava/security/cert/CertStoreException;
    :cond_c
    if-eqz p5, :cond_e

    .line 571
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/provider/certpath/RevocationChecker;->verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 573
    return-void

    .line 574
    :catch_2
    move-exception v25

    .line 575
    .local v25, "cpve":Ljava/security/cert/CertPathValidatorException;
    if-eqz v6, :cond_d

    .line 580
    throw v6

    .line 582
    :cond_d
    throw v25

    .line 585
    .end local v25    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_e
    if-eqz v6, :cond_f

    .line 590
    throw v6

    .line 592
    :cond_f
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 593
    const-string/jumbo v16, "Could not determine revocation status"

    .line 594
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 593
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    .line 592
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15
.end method

.method private checkCRLs(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Set;Ljava/security/PublicKey;Z)V
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "pubKey"    # Ljava/security/PublicKey;
    .param p5, "signFlag"    # Z
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

    .prologue
    .line 460
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p3, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    .line 459
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v4, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lsun/security/provider/certpath/RevocationChecker;->checkCRLs(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/cert/X509Certificate;ZZLjava/util/Set;Ljava/util/Set;)V

    .line 457
    return-void
.end method

.method private checkOCSP(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)V
    .locals 32
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
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

    .prologue
    .line 665
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 667
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    .line 676
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    const/16 v28, 0x0

    .line 677
    .local v28, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/16 v22, 0x0

    .line 679
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    .line 680
    new-instance v23, Lsun/security/provider/certpath/CertId;

    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 681
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v3

    .line 680
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lsun/security/provider/certpath/CertId;-><init>(Ljava/security/cert/X509Certificate;Lsun/security/x509/SerialNumber;)V

    .local v23, "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    .line 689
    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    .line 690
    .local v29, "responseBytes":[B
    if-eqz v29, :cond_4

    .line 691
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 692
    sget-object v2, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "Found cached OCSP response"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 694
    :cond_0
    new-instance v1, Lsun/security/provider/certpath/OCSPResponse;

    move-object/from16 v0, v29

    invoke-direct {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    .local v1, "response":Lsun/security/provider/certpath/OCSPResponse;
    const/4 v6, 0x0

    .line 698
    .local v6, "nonce":[B
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v6    # "nonce":[B
    .local v27, "ext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/Extension;

    .line 699
    .local v26, "ext":Ljava/security/cert/Extension;
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1.3.6.1.5.5.7.48.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    invoke-interface/range {v26 .. v26}, Ljava/security/cert/Extension;->getValue()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .local v6, "nonce":[B
    goto :goto_1

    .line 668
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v6    # "nonce":[B
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v26    # "ext":Ljava/security/cert/Extension;
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    .end local v29    # "responseBytes":[B
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v21

    .line 669
    .local v21, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 684
    .end local v21    # "ce":Ljava/security/cert/CertificateException;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    .local v25, "currCert":Lsun/security/x509/X509CertImpl;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
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

    .line 685
    invoke-virtual/range {v25 .. v25}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v4

    .line 684
    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3, v4}, Lsun/security/provider/certpath/CertId;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lsun/security/x509/SerialNumber;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v23    # "certId":Lsun/security/provider/certpath/CertId;
    move-object/from16 v22, v23

    .end local v23    # "certId":Lsun/security/provider/certpath/CertId;
    .local v22, "certId":Lsun/security/provider/certpath/CertId;
    goto :goto_0

    .line 703
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v27    # "ext$iterator":Ljava/util/Iterator;
    .restart local v29    # "responseBytes":[B
    :cond_3
    :try_start_4
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v5

    .line 703
    invoke-virtual/range {v1 .. v6}, Lsun/security/provider/certpath/OCSPResponse;->verify(Ljava/util/List;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;[B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 727
    .end local v27    # "ext$iterator":Ljava/util/Iterator;
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/OCSPResponse;->getSingleResponse(Lsun/security/provider/certpath/CertId;)Lsun/security/provider/certpath/OCSPResponse$SingleResponse;

    move-result-object v31

    .line 728
    .local v31, "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getCertStatus()Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-result-object v24

    .line 729
    .local v24, "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->REVOKED:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_7

    .line 730
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationTime()Ljava/util/Date;

    move-result-object v30

    .line 731
    .local v30, "revocationTime":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 732
    new-instance v14, Ljava/security/cert/CertificateRevokedException;

    .line 733
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getRevocationReason()Ljava/security/cert/CRLReason;

    move-result-object v2

    .line 734
    invoke-virtual {v1}, Lsun/security/provider/certpath/OCSPResponse;->getSignerCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 735
    invoke-interface/range {v31 .. v31}, Lsun/security/provider/certpath/OCSP$RevocationStatus;->getSingleExtensions()Ljava/util/Map;

    move-result-object v4

    .line 732
    move-object/from16 v0, v30

    invoke-direct {v14, v0, v2, v3, v4}, Ljava/security/cert/CertificateRevokedException;-><init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V

    .line 736
    .local v14, "t":Ljava/lang/Throwable;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v14}, Ljava/security/cert/CertificateRevokedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 737
    sget-object v17, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 736
    const/4 v15, 0x0

    .line 737
    const/16 v16, -0x1

    .line 736
    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v12

    .line 707
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v14    # "t":Ljava/lang/Throwable;
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v30    # "revocationTime":Ljava/util/Date;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    if-eqz v2, :cond_5

    .line 708
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    .line 710
    .local v8, "responderURI":Ljava/net/URI;
    :goto_3
    if-nez v8, :cond_6

    .line 711
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 712
    const-string/jumbo v3, "Certificate does not specify OCSP responder"

    const/4 v4, 0x0

    .line 713
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 711
    invoke-direct {v2, v3, v4, v5, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 720
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v29    # "responseBytes":[B
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    move-object/from16 v1, v28

    .line 721
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    :goto_4
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    .line 722
    const-string/jumbo v10, "Unable to determine revocation status due to network error"

    .line 723
    sget-object v14, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 721
    invoke-direct/range {v9 .. v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v9

    .line 709
    .end local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v22    # "certId":Lsun/security/provider/certpath/CertId;
    .restart local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v29    # "responseBytes":[B
    :cond_5
    :try_start_6
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/OCSP;->getResponderURI(Lsun/security/x509/X509CertImpl;)Ljava/net/URI;

    move-result-object v8

    goto :goto_3

    .line 716
    .restart local v8    # "responderURI":Ljava/net/URI;
    :cond_6
    invoke-static/range {v22 .. v22}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 717
    move-object/from16 v0, p0

    iget-object v9, v0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    const/4 v11, 0x0

    .line 716
    invoke-static/range {v7 .. v12}, Lsun/security/provider/certpath/OCSP;->check(Ljava/util/List;Ljava/net/URI;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)Lsun/security/provider/certpath/OCSPResponse;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v1

    .restart local v1    # "response":Lsun/security/provider/certpath/OCSPResponse;
    goto/16 :goto_2

    .line 739
    .end local v8    # "responderURI":Ljava/net/URI;
    .end local v28    # "response":Lsun/security/provider/certpath/OCSPResponse;
    .restart local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .restart local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :cond_7
    sget-object v2, Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;->UNKNOWN:Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;

    move-object/from16 v0, v24

    if-ne v0, v2, :cond_8

    .line 740
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 741
    const-string/jumbo v16, "Certificate\'s revocation status is unknown"

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v18

    .line 743
    sget-object v20, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 741
    const/16 v17, 0x0

    .line 742
    const/16 v19, -0x1

    .line 740
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    .line 663
    :cond_8
    return-void

    .line 720
    .end local v24    # "certStatus":Lsun/security/provider/certpath/OCSP$RevocationStatus$CertStatus;
    .end local v31    # "rs":Lsun/security/provider/certpath/OCSP$RevocationStatus;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "issuer"    # Ljava/lang/String;
    .param p1, "serial"    # Ljava/lang/String;
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

    .prologue
    .line 246
    .local p2, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p3, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 248
    .local v2, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v3, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    invoke-static {v2, p2, p3}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    return-object v3

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 251
    const-string/jumbo v4, "cannot parse ocsp.responderCertIssuerName property"

    .line 250
    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 257
    const-string/jumbo v4, "cannot parse ocsp.responderCertSerialNumber property"

    .line 256
    invoke-direct {v3, v4, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p0, "subject"    # Ljava/lang/String;
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

    .prologue
    .line 230
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 232
    .local v1, "sel":Ljava/security/cert/X509CertSelector;
    :try_start_0
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, p0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-static {v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 235
    const-string/jumbo v3, "cannot parse ocsp.responderCertSubjectName property"

    .line 234
    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getResponderCert(Ljava/security/cert/X509CertSelector;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p0, "sel"    # Ljava/security/cert/X509CertSelector;
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

    .prologue
    .line 268
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 269
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 270
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 274
    return-object v2

    .line 278
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    .line 281
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v3

    .line 282
    .local v3, "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 283
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 285
    .end local v3    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljava/security/cert/CertStoreException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_2

    .line 288
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

    .line 293
    .end local v4    # "e":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_3
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    .line 294
    const-string/jumbo v8, "Cannot find the responder\'s certificate (set using the OCSP security properties)."

    .line 293
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "rp"    # Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
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

    .prologue
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p2, "stores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 217
    :cond_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 218
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 219
    const-string/jumbo v1, "Must specify both ocsp.responderCertIssuerName and ocsp.responderCertSerialNumber properties"

    .line 218
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_3
    return-object v1
.end method

.method private static getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$1;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker$1;-><init>()V

    .line 181
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    return-object v0
.end method

.method private isSoftFailException(Ljava/security/cert/CertPathValidatorException;)Z
    .locals 6
    .param p1, "e"    # Ljava/security/cert/CertPathValidatorException;

    .prologue
    .line 419
    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v1

    sget-object v2, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v1, v2, :cond_0

    .line 423
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 424
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v3

    iget v4, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 425
    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v5

    .line 423
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .line 426
    .local v0, "e2":Ljava/security/cert/CertPathValidatorException;
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 427
    const/4 v1, 0x1

    return v1

    .line 429
    .end local v0    # "e2":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static stripOutSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 753
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v1, "hexNumber":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 755
    const-string/jumbo v3, "0123456789ABCDEFabcdef"

    aget-char v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 756
    aget-char v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p0, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 170
    if-eqz p0, :cond_0

    .line 171
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 173
    :cond_0
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 176
    const-string/jumbo v2, "cannot parse ocsp.responderURL property"

    .line 175
    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateState(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 438
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 439
    .local v0, "pubKey":Ljava/security/PublicKey;
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0, v1}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    .line 443
    :cond_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 444
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 445
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    if-lez v1, :cond_1

    .line 446
    iget v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 433
    :cond_1
    return-void
.end method

.method private verifyPossibleCRLs(Ljava/util/Set;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Z[ZLjava/util/Set;)Ljava/util/Collection;
    .locals 19
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "prevKey"    # Ljava/security/PublicKey;
    .param p4, "signFlag"    # Z
    .param p5, "reasonsMask"    # [Z
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

    .prologue
    .line 803
    .local p1, "crls":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .local p6, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v1

    .line 804
    .local v1, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_0

    .line 805
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RevocationChecker.verifyPossibleCRLs: Checking CRLDPs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 807
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 805
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 810
    :cond_0
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    .line 811
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    const/16 v17, 0x0

    .line 812
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    if-nez v15, :cond_4

    .line 816
    invoke-virtual {v1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    check-cast v12, Lsun/security/x509/X500Name;

    .line 817
    .local v12, "certIssuer":Lsun/security/x509/X500Name;
    new-instance v2, Lsun/security/x509/DistributionPoint;

    .line 818
    new-instance v4, Lsun/security/x509/GeneralNames;

    invoke-direct {v4}, Lsun/security/x509/GeneralNames;-><init>()V

    new-instance v5, Lsun/security/x509/GeneralName;

    invoke-direct {v5, v12}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v4, v5}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    move-result-object v4

    .line 819
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 817
    invoke-direct {v2, v4, v5, v6}, Lsun/security/x509/DistributionPoint;-><init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V

    .line 820
    .local v2, "point":Lsun/security/x509/DistributionPoint;
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 824
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v12    # "certIssuer":Lsun/security/x509/X500Name;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :goto_0
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 825
    .local v18, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "point$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/DistributionPoint;

    .line 826
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 829
    .local v3, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v8

    .line 830
    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v11

    .line 829
    const/4 v7, 0x0

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v9, p6

    .line 827
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "point$iterator":Ljava/util/Iterator;
    .end local v17    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    :catch_0
    move-exception v14

    .line 840
    .local v14, "e":Ljava/lang/Exception;
    sget-object v4, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_3

    .line 841
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

    .line 842
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 844
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 822
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v1    # "certImpl":Lsun/security/x509/X509CertImpl;
    .restart local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    :cond_4
    :try_start_1
    const-string/jumbo v4, "points"

    invoke-virtual {v15, v4}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .local v17, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    goto :goto_0

    .line 835
    .restart local v2    # "point":Lsun/security/x509/DistributionPoint;
    .restart local v13    # "crl$iterator":Ljava/util/Iterator;
    .restart local v16    # "point$iterator":Ljava/util/Iterator;
    .restart local v18    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
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

    .line 838
    .end local v2    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crl$iterator":Ljava/util/Iterator;
    :cond_6
    return-object v18
.end method

.method private verifyWithSeparateSigningKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;ZLjava/util/Set;)V
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "signFlag"    # Z
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

    .prologue
    .local p4, "stackedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/4 v2, 0x0

    .line 876
    const-string/jumbo v6, "revocation status"

    .line 877
    .local v6, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 878
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RevocationChecker.verifyWithSeparateSigningKey() ---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 880
    const-string/jumbo v3, "..."

    .line 879
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 886
    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 887
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_1

    .line 888
    sget-object v0, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    .line 889
    const-string/jumbo v1, "RevocationChecker.verifyWithSeparateSigningKey() circular dependency"

    .line 888
    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 892
    :cond_1
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 893
    const-string/jumbo v1, "Could not determine revocation status"

    .line 894
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNDETERMINED_REVOCATION_STATUS:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 893
    const/4 v4, -0x1

    move-object v3, v2

    .line 892
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 901
    :cond_2
    if-nez p3, :cond_3

    .line 902
    invoke-direct {p0, p1, v2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    .line 874
    :goto_0
    return-void

    .line 904
    :cond_3
    invoke-direct {p0, p1, p2, p4}, Lsun/security/provider/certpath/RevocationChecker;->buildToNewKey(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;
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

    .prologue
    .line 337
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 338
    .end local p1    # "cert":Ljava/security/cert/Certificate;
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    iget-boolean v1, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 337
    invoke-direct {p0, p1, p2, v0, v1}, Lsun/security/provider/certpath/RevocationChecker;->check(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/PublicKey;Z)V

    .line 335
    return-void
.end method

.method public bridge synthetic clone()Ljava/security/cert/PKIXRevocationChecker;
    .locals 1

    .prologue
    .line 1092
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker;->clone()Lsun/security/provider/certpath/RevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lsun/security/provider/certpath/RevocationChecker;
    .locals 3

    .prologue
    .line 1093
    invoke-super {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/RevocationChecker;

    .line 1096
    .local v0, "copy":Lsun/security/provider/certpath/RevocationChecker;
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    .line 1097
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

    .prologue
    .line 330
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

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V
    .locals 11
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "params"    # Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v5

    .line 103
    .local v5, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object v6

    .line 104
    .local v6, "uri":Ljava/net/URI;
    if-nez v6, :cond_0

    iget-object v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    invoke-static {v7}, Lsun/security/provider/certpath/RevocationChecker;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .end local v6    # "uri":Ljava/net/URI;
    :cond_0
    iput-object v6, p0, Lsun/security/provider/certpath/RevocationChecker;->responderURI:Ljava/net/URI;

    .line 105
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponderCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 106
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v7

    .line 108
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    .line 107
    invoke-static {v5, v7, v8}, Lsun/security/provider/certpath/RevocationChecker;->getResponderCert(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;Ljava/util/Set;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 106
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->responderCert:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object v4

    .line 111
    .local v4, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "option$iterator":Ljava/util/Iterator;
    :pswitch_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker$Option;

    .line 112
    .local v2, "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    invoke-static {}, Lsun/security/provider/certpath/RevocationChecker;->-getjava-security-cert-PKIXRevocationChecker$OptionSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 119
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unrecognized revocation parameter option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-direct {v7, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    .end local v2    # "option":Ljava/security/cert/PKIXRevocationChecker$Option;
    :cond_2
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->SOFT_FAIL:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->softFail:Z

    .line 126
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_5

    .line 127
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    if-eqz v7, :cond_4

    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    :goto_0
    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 128
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    .line 141
    :goto_1
    iget-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->legacy:Z

    if-eqz v7, :cond_9

    .line 142
    iget-boolean v7, v5, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    .line 146
    :goto_2
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponses()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 147
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspExtensions()Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 149
    iput-object p1, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    .line 150
    iput-object p2, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certStores()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    .line 153
    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->certStores:Ljava/util/List;

    const-string/jumbo v8, "Collection"

    .line 154
    new-instance v9, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certificates()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 153
    invoke-static {v8, v9}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_3
    :goto_3
    return-void

    .line 127
    :cond_4
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_0

    .line 130
    :cond_5
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->NO_FALLBACK:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 131
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 132
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    .line 139
    :cond_6
    :goto_4
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->onlyEE:Z

    goto :goto_1

    .line 134
    :cond_7
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->ONLY_OCSP:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_4

    .line 136
    :cond_8
    sget-object v7, Ljava/security/cert/PKIXRevocationChecker$Option;->PREFER_CRLS:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 137
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker$Mode;->PREFER_CRLS:Lsun/security/provider/certpath/RevocationChecker$Mode;

    iput-object v7, p0, Lsun/security/provider/certpath/RevocationChecker;->mode:Lsun/security/provider/certpath/RevocationChecker$Mode;

    goto :goto_4

    .line 144
    :cond_9
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/provider/certpath/RevocationChecker;->crlDP:Z

    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v7, Lsun/security/provider/certpath/RevocationChecker;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_3

    .line 160
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

    .line 112
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
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 302
    const-string/jumbo v1, "forward checking not supported"

    .line 301
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    .line 306
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->issuerCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 309
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/RevocationChecker;->crlSignFlag:Z

    .line 310
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->params:Lsun/security/provider/certpath/PKIX$ValidatorParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath()Ljava/security/cert/CertPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    .line 315
    :goto_1
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->softFailExceptions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 299
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lsun/security/provider/certpath/RevocationChecker;->anchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 313
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/RevocationChecker;->certIndex:I

    goto :goto_1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method
