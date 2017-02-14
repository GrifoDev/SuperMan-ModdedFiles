.class Lsun/security/provider/certpath/PKIXMasterCertPathValidator;
.super Ljava/lang/Object;
.source "PKIXMasterCertPathValidator.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validate(Ljava/security/cert/CertPath;Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertPath;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "--------------------------------------------------------------"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "Executing PKIX certification path validation algorithm."

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_b

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Checking cert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v15

    if-nez v15, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v15

    :cond_2
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_3

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    const/4 v12, 0x0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_8

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-Using checker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ... ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/security/cert/PKIXCertPathChecker;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    if-nez v11, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    :cond_5
    :try_start_0
    invoke-virtual {v10, v9, v15}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_6

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-checker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v12, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " validation succeeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "Set of critical extensions:"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    invoke-virtual {v1, v13}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v8

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    add-int/lit8 v4, v11, 0x1

    sub-int v5, v7, v4

    invoke-virtual {v8}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v6

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :cond_8
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "unrecognized critical extension(s)"

    add-int/lit8 v3, v11, 0x1

    sub-int v5, v7, v3

    sget-object v6, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    :cond_9
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_a

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\ncert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " validation succeeded.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_c

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "Cert path validation succeeded. (PKIX validation algorithm)"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/security/provider/certpath/PKIXMasterCertPathValidator;->debug:Lsun/security/util/Debug;

    const-string/jumbo v2, "--------------------------------------------------------------"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_c
    return-void
.end method
