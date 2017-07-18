.class Lsun/security/provider/certpath/PolicyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PolicyChecker.java"


# static fields
.field static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final anyPolicyInhibited:Z

.field private certIndex:I

.field private final certPathLen:I

.field private final expPolicyRequired:Z

.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private final initPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final polMappingInhibited:Z

.field private policyMapping:I

.field private final rejectPolicyQualifiers:Z

.field private rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZZZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    const-string/jumbo v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iput p2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    iput-boolean p3, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    iput-boolean p5, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    iput-boolean p6, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    iput-object p7, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    goto :goto_0
.end method

.method private checkPolicy(Ljava/security/cert/X509Certificate;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const-string/jumbo v10, "certificate policies"

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() ---checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() certIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: explicitPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyMapping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyTree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    :goto_0
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    iget-boolean v5, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    iget-object v6, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v8, :cond_1

    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-static {v0, v7, v8}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: explicitPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyMapping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyTree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v9

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method static mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v6, -0x1

    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v1

    if-nez v1, :cond_2

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "require"

    invoke-virtual {v1, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyChecker.mergeExplicitPolicy() require Index from cert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-nez p2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq p0, v6, :cond_4

    if-ge v2, p0, :cond_5

    :cond_4
    move p0, v2

    :cond_5
    :goto_1
    return p0

    :cond_6
    if-nez v2, :cond_5

    move p0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_7

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergeExplicitPolicy unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v1

    check-cast v1, Lsun/security/x509/InhibitAnyPolicyExtension;

    if-nez v1, :cond_2

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "skip_certs"

    invoke-virtual {v1, v3}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyChecker.mergeInhibitAnyPolicy() skipCerts Index from cert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-ge v2, p0, :cond_4

    move p0, v2

    :cond_4
    return p0

    :catch_0
    move-exception v0

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergeInhibitAnyPolicy unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v6, -0x1

    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v2

    if-nez v2, :cond_2

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "inhibit"

    invoke-virtual {v2, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PolicyChecker.mergePolicyMapping() inhibit Index from cert = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-eq v1, v6, :cond_5

    if-eq p0, v6, :cond_4

    if-ge v1, p0, :cond_5

    :cond_4
    move p0, v1

    :cond_5
    return p0

    :catch_0
    move-exception v0

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_6

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergePolicyMapping unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/16 v22, 0x0

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processParents(): matchAny = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, p0, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v6, v1, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_1
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_2

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processParents() found parent:\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    const/16 v22, 0x1

    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    const/4 v14, 0x0

    const-string/jumbo v6, "2.5.29.32.0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual/range {v17 .. v17}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_3

    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " in parent\'s "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "expected policy set already appears in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "child node"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v9, 0x0

    move-object/from16 v6, p5

    move/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    goto :goto_1

    :cond_6
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p4

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p1

    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    goto/16 :goto_0

    :cond_7
    return v22
.end method

.method static processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Lsun/security/x509/X509CertImpl;",
            "Z)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    if-nez p6, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v23

    if-eqz v23, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual/range {v23 .. v23}, Lsun/security/x509/CertificatePoliciesExtension;->isCritical()Z

    move-result v4

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processPolicies() policiesCritical = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string/jumbo v3, "policies"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processPolicies() rejectPolicyQualifiers = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    const/16 v24, 0x0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lsun/security/x509/PolicyInformation;

    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v14

    goto :goto_1

    :cond_3
    invoke-virtual/range {p6 .. p6}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v26

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v5, "Exception while retrieving policyOIDs"

    move-object/from16 v0, v26

    invoke-direct {v3, v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processPolicies() processing policy: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p5, :cond_6

    if-eqz v4, :cond_6

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v4, "critical policy qualifiers present in certificate"

    sget-object v8, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    :cond_6
    const/4 v9, 0x0

    move/from16 v3, p0

    move/from16 v5, p5

    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v25

    if-nez v25, :cond_2

    const/4 v9, 0x1

    move/from16 v3, p0

    move/from16 v5, p5

    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    goto/16 :goto_1

    :cond_7
    if-eqz v24, :cond_a

    if-gtz p4, :cond_8

    if-nez p8, :cond_a

    invoke-static/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_8
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_9

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "PolicyChecker.processPolicies() processing policy: 2.5.29.32.0"

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo v13, "2.5.29.32.0"

    const/4 v15, 0x1

    move/from16 v9, p0

    move v10, v4

    move/from16 v11, p5

    move-object v12, v6

    invoke-static/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    :cond_a
    move/from16 v0, p0

    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v6, 0x0

    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    if-nez p8, :cond_c

    move-object/from16 v9, p7

    move/from16 v10, p0

    move/from16 v11, p3

    move-object v12, v6

    move v13, v4

    invoke-static/range {v9 .. v14}, Lsun/security/provider/certpath/PolicyChecker;->processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    :cond_c
    if-eqz v6, :cond_d

    const-string/jumbo v3, "2.5.29.32.0"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_d
    :goto_3
    if-eqz p8, :cond_e

    move/from16 v0, p2

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result p2

    :cond_e
    if-nez p2, :cond_12

    if-nez v6, :cond_12

    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v16, "non-null policy tree required and policy tree is null"

    sget-object v20, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    :cond_f
    if-nez v23, :cond_b

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_10

    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "PolicyChecker.processPolicies() no policies present in cert"

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_10
    const/4 v6, 0x0

    goto :goto_2

    :cond_11
    if-eqz v23, :cond_d

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    if-eqz v6, :cond_d

    if-eqz p8, :cond_d

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lsun/security/provider/certpath/PolicyChecker;->rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    goto :goto_3

    :cond_12
    return-object v6
.end method

.method private static processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "II",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    move-result-object v18

    if-nez v18, :cond_0

    return-object p3

    :cond_0
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() inside policyMapping check"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v14, 0x0

    :try_start_0
    const-string/jumbo v5, "map"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    const/4 v9, 0x0

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsun/security/x509/CertificatePolicyMap;

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() issuerDomain = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() subjectDomain = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v5, "2.5.29.32.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "encountered an issuerDomainPolicy of ANY_POLICY"

    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    :catch_0
    move-exception v13

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_4

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() mapping exception"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v6, "Exception while checking mapping"

    invoke-direct {v5, v6, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    const-string/jumbo v5, "2.5.29.32.0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v3, "encountered a subjectDomainPolicy of ANY_POLICY"

    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    if-gtz p2, :cond_8

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addExpectedPolicy(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-nez p2, :cond_7

    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v15

    check-cast v15, Lsun/security/provider/certpath/PolicyNodeImpl;

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_a

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() before deleting: policy tree = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v15, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    const/4 v9, 0x1

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_7

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PolicyChecker.processPolicyMappings() after deleting: policy tree = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    if-gtz p2, :cond_c

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    :cond_c
    const-string/jumbo v5, "2.5.29.32.0"

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v3

    check-cast v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v8, 0x1

    move-object/from16 v5, p5

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    goto :goto_1

    :cond_d
    if-eqz v9, :cond_f

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_e

    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "setting rootNode to null"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_e
    const/16 p3, 0x0

    :cond_f
    return-object p3
.end method

.method private static removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/x509/CertificatePoliciesExtension;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v11, "policies"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const/4 v1, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/PolicyInformation;

    invoke-virtual {v4}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_1

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PolicyChecker.processPolicies() processing policy second time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "2.5.29.32.0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "2.5.29.32.0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_3

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PolicyChecker.processPolicies() before deleting: policy tree = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    const/4 v1, 0x1

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_2

    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "PolicyChecker.processPolicies() after deleting: policy tree = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v12, "Exception while retrieving policyOIDs"

    invoke-direct {v11, v12, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 p0, 0x0

    :cond_5
    return-object p0
.end method

.method private static rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    const-string/jumbo v6, "2.5.29.32.0"

    invoke-virtual {p2, p0, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    return-object p2

    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    invoke-virtual {p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 p2, 0x0

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v4

    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    goto :goto_1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 1
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

    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PolicyChecker;->checkPolicy(Ljava/security/cert/X509Certificate;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    return-object v0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    return-object v0
.end method

.method public init(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    if-eqz v0, :cond_3

    :goto_2
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    return-void

    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v1, v0, 0x1

    goto :goto_2
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
