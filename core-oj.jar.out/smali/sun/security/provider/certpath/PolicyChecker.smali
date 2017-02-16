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

    .prologue
    .line 74
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V
    .locals 2
    .param p2, "certPathLen"    # I
    .param p3, "expPolicyRequired"    # Z
    .param p4, "polMappingInhibited"    # Z
    .param p5, "anyPolicyInhibited"    # Z
    .param p6, "rejectPolicyQualifiers"    # Z
    .param p7, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
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

    .prologue
    .line 88
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    .line 97
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    const-string/jumbo v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    iput p2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    .line 102
    iput-boolean p3, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    .line 103
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    .line 104
    iput-boolean p5, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    .line 105
    iput-boolean p6, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    .line 106
    iput-object p7, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 91
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    goto :goto_0
.end method

.method private checkPolicy(Ljava/security/cert/X509Certificate;)V
    .locals 11
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 200
    const-string/jumbo v10, "certificate policies"

    .line 201
    .local v10, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() ---checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string/jumbo v2, "..."

    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() certIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: explicitPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyMapping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 209
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyTree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_0
    const/4 v7, 0x0

    .line 218
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 223
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 225
    .local v8, "finalCert":Z
    :goto_0
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 226
    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    iget-boolean v5, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    iget-object v6, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 225
    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 229
    if-nez v8, :cond_1

    .line 230
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-static {v0, v7, v8}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 232
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 233
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-static {v0, v7}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    move-result v0

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 237
    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 239
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    .line 240
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: explicitPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyMapping = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    iget v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 246
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyTree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 248
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

    .line 198
    :cond_2
    return-void

    .line 219
    .end local v8    # "finalCert":Z
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v9

    .line 220
    .local v9, "ce":Ljava/security/cert/CertificateException;
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v0, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 223
    .end local v9    # "ce":Ljava/security/cert/CertificateException;
    .local v7, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "finalCert":Z
    goto/16 :goto_0
.end method

.method static mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I
    .locals 7
    .param p0, "explicitPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p2, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 270
    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v1

    .line 277
    .local v1, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v1, :cond_2

    .line 278
    return p0

    .line 271
    .end local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 280
    .restart local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_2
    const-string/jumbo v3, "require"

    invoke-virtual {v1, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 281
    .local v2, "require":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    .line 282
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

    .line 285
    :cond_3
    if-nez p2, :cond_6

    .line 286
    if-eq v2, v6, :cond_5

    .line 287
    if-eq p0, v6, :cond_4

    if-ge v2, p0, :cond_5

    .line 288
    :cond_4
    move p0, v2

    .line 304
    :cond_5
    :goto_1
    return p0

    .line 292
    :cond_6
    if-nez v2, :cond_5

    .line 293
    move p0, v2

    goto :goto_1

    .line 295
    .end local v1    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v2    # "require":I
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_7

    .line 297
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergeExplicitPolicy unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_7
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I
    .locals 6
    .param p0, "inhibitAnyPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 371
    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :cond_0
    :goto_0
    :try_start_0
    sget-object v3, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1, v3}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v1

    .line 376
    check-cast v1, Lsun/security/x509/InhibitAnyPolicyExtension;

    .line 378
    .local v1, "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    if-nez v1, :cond_2

    .line 379
    return p0

    .line 372
    .end local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 382
    .restart local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    :cond_2
    const-string/jumbo v3, "skip_certs"

    invoke-virtual {v1, v3}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 383
    .local v2, "skipCerts":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    .line 384
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

    .line 387
    :cond_3
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 388
    if-ge v2, p0, :cond_4

    .line 389
    move p0, v2

    .line 401
    :cond_4
    return p0

    .line 392
    .end local v1    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    .end local v2    # "skipCerts":I
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    .line 394
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergeInhibitAnyPolicy unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 398
    :cond_5
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I
    .locals 7
    .param p0, "policyMapping"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 323
    if-lez p0, :cond_0

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v2

    .line 330
    .local v2, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v2, :cond_2

    .line 331
    return p0

    .line 324
    .end local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 334
    .restart local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :cond_2
    const-string/jumbo v3, "inhibit"

    invoke-virtual {v2, v3}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 335
    .local v1, "inhibit":I
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_3

    .line 336
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

    .line 339
    :cond_3
    if-eq v1, v6, :cond_5

    .line 340
    if-eq p0, v6, :cond_4

    if-ge v1, p0, :cond_5

    .line 341
    :cond_4
    move p0, v1

    .line 353
    :cond_5
    return p0

    .line 344
    .end local v1    # "inhibit":I
    .end local v2    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_6

    .line 346
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "PolicyChecker.mergePolicyMapping unexpected exception"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_6
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z
    .locals 25
    .param p0, "certIndex"    # I
    .param p1, "policiesCritical"    # Z
    .param p2, "rejectPolicyQualifiers"    # Z
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "curPolicy"    # Ljava/lang/String;
    .param p6, "matchAny"    # Z
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

    .prologue
    .line 659
    .local p5, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    const/16 v22, 0x0

    .line 661
    .local v22, "foundMatch":Z
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_0

    .line 662
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

    .line 667
    :cond_0
    add-int/lit8 v6, p0, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual {v0, v6, v1, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v24

    .line 671
    .local v24, "parentNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "curParent$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 672
    .local v4, "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_2

    .line 673
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PolicyChecker.processParents() found parent:\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 674
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v9

    .line 673
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 676
    :cond_2
    const/16 v22, 0x1

    .line 677
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v20

    .line 679
    .local v20, "curParPolicy":Ljava/lang/String;
    const/4 v3, 0x0

    .line 680
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v14, 0x0

    .line 682
    .local v14, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "2.5.29.32.0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 684
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v23

    .line 686
    .local v23, "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v19, "curParExpPol$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 689
    .local v5, "curParExpPol":Ljava/lang/String;
    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v16

    .line 690
    .local v16, "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 691
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 692
    .local v17, "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual/range {v17 .. v17}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v18

    .line 693
    .local v18, "childPolicy":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 694
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_3

    .line 695
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " in parent\'s "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 696
    const-string/jumbo v9, "expected policy set already appears in "

    .line 695
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 697
    const-string/jumbo v9, "child node"

    .line 695
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 702
    .end local v17    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v18    # "childPolicy":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 703
    .local v8, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 707
    const/4 v9, 0x0

    move-object/from16 v6, p5

    move/from16 v7, p1

    .line 705
    invoke-direct/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1

    .line 710
    .end local v5    # "curParExpPol":Ljava/lang/String;
    .end local v8    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v19    # "curParExpPol$iterator":Ljava/util/Iterator;
    .end local v23    # "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_6
    new-instance v14, Ljava/util/HashSet;

    .end local v14    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 711
    .local v14, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 715
    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v15, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p1

    .line 713
    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .local v3, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto/16 :goto_0

    .line 719
    .end local v3    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v4    # "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v14    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "curParPolicy":Ljava/lang/String;
    :cond_7
    return v22
.end method

.method static processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 28
    .param p0, "certIndex"    # I
    .param p2, "explicitPolicy"    # I
    .param p3, "policyMapping"    # I
    .param p4, "inhibitAnyPolicy"    # I
    .param p5, "rejectPolicyQualifiers"    # Z
    .param p6, "origRootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p7, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p8, "finalCert"    # Z
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

    .prologue
    .line 431
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 433
    .local v4, "policiesCritical":Z
    const/4 v6, 0x0

    .line 434
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 436
    .local v14, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    if-nez p6, :cond_3

    .line 437
    const/4 v6, 0x0

    .line 443
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v23

    .line 446
    .local v23, "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    if-eqz v23, :cond_f

    if-eqz v6, :cond_f

    .line 447
    invoke-virtual/range {v23 .. v23}, Lsun/security/x509/CertificatePoliciesExtension;->isCritical()Z

    move-result v4

    .line 448
    .local v4, "policiesCritical":Z
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    .line 449
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

    .line 453
    :cond_0
    :try_start_0
    const-string/jumbo v3, "policies"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v27

    .line 459
    .local v27, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    .line 460
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

    .line 463
    :cond_1
    const/16 v24, 0x0

    .line 466
    .local v24, "foundAnyPolicy":Z
    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "curPolInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lsun/security/x509/PolicyInformation;

    .line 468
    .local v21, "curPolInfo":Lsun/security/x509/PolicyInformation;
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "curPolicy":Ljava/lang/String;
    const-string/jumbo v3, "2.5.29.32.0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 471
    const/16 v24, 0x1

    .line 472
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v14

    goto :goto_1

    .line 439
    .end local v7    # "curPolicy":Ljava/lang/String;
    .end local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v23    # "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    .end local v24    # "foundAnyPolicy":Z
    .end local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .local v4, "policiesCritical":Z
    .restart local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto/16 :goto_0

    .line 454
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v4, "policiesCritical":Z
    .restart local v23    # "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    :catch_0
    move-exception v26

    .line 455
    .local v26, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v5, "Exception while retrieving policyOIDs"

    move-object/from16 v0, v26

    invoke-direct {v3, v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 475
    .end local v26    # "ioe":Ljava/io/IOException;
    .restart local v7    # "curPolicy":Ljava/lang/String;
    .restart local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .restart local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .restart local v24    # "foundAnyPolicy":Z
    .restart local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_4
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_5

    .line 476
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

    .line 481
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v8

    .line 485
    .local v8, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p5, :cond_6

    if-eqz v4, :cond_6

    .line 487
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 488
    const-string/jumbo v4, "critical policy qualifiers present in certificate"

    .line 489
    .end local v4    # "policiesCritical":Z
    sget-object v8, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    .end local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 487
    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .end local v7    # "curPolicy":Ljava/lang/String;
    throw v3

    .line 495
    .restart local v4    # "policiesCritical":Z
    .restart local v7    # "curPolicy":Ljava/lang/String;
    .restart local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :cond_6
    const/4 v9, 0x0

    move/from16 v3, p0

    move/from16 v5, p5

    .line 493
    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v25

    .line 497
    .local v25, "foundMatch":Z
    if-nez v25, :cond_2

    .line 501
    const/4 v9, 0x1

    move/from16 v3, p0

    move/from16 v5, p5

    .line 499
    invoke-static/range {v3 .. v9}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    goto/16 :goto_1

    .line 507
    .end local v7    # "curPolicy":Ljava/lang/String;
    .end local v8    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v21    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v25    # "foundMatch":Z
    :cond_7
    if-eqz v24, :cond_a

    .line 508
    if-gtz p4, :cond_8

    .line 509
    if-nez p8, :cond_a

    invoke-static/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    .line 508
    if-eqz v3, :cond_a

    .line 510
    :cond_8
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_9

    .line 511
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "PolicyChecker.processPolicies() processing policy: 2.5.29.32.0"

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 515
    :cond_9
    const-string/jumbo v13, "2.5.29.32.0"

    .line 516
    const/4 v15, 0x1

    move/from16 v9, p0

    move v10, v4

    move/from16 v11, p5

    move-object v12, v6

    .line 514
    invoke-static/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    .line 521
    :cond_a
    move/from16 v0, p0

    invoke-virtual {v6, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 522
    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 523
    const/4 v6, 0x0

    .line 536
    .end local v4    # "policiesCritical":Z
    .end local v22    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v24    # "foundAnyPolicy":Z
    .end local v27    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    .line 537
    if-nez p8, :cond_c

    move-object/from16 v9, p7

    move/from16 v10, p0

    move/from16 v11, p3

    move-object v12, v6

    move v13, v4

    .line 539
    invoke-static/range {v9 .. v14}, Lsun/security/provider/certpath/PolicyChecker;->processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    .line 548
    :cond_c
    if-eqz v6, :cond_d

    const-string/jumbo v3, "2.5.29.32.0"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 561
    :cond_d
    :goto_3
    if-eqz p8, :cond_e

    .line 563
    move/from16 v0, p2

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-static {v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result p2

    .line 571
    :cond_e
    if-nez p2, :cond_12

    if-nez v6, :cond_12

    .line 572
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    .line 573
    const-string/jumbo v16, "non-null policy tree required and policy tree is null"

    .line 574
    sget-object v20, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    .line 572
    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v15

    .line 525
    .local v4, "policiesCritical":Z
    :cond_f
    if-nez v23, :cond_b

    .line 526
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_10

    .line 527
    sget-object v3, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v5, "PolicyChecker.processPolicies() no policies present in cert"

    invoke-virtual {v3, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 530
    :cond_10
    const/4 v6, 0x0

    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_2

    .line 549
    .end local v4    # "policiesCritical":Z
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_11
    if-eqz v23, :cond_d

    .line 550
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v6, v0, v1, v2}, Lsun/security/provider/certpath/PolicyChecker;->removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    .line 554
    .local v6, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-eqz v6, :cond_d

    if-eqz p8, :cond_d

    .line 556
    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lsun/security/provider/certpath/PolicyChecker;->rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v6

    goto :goto_3

    .line 577
    .end local v6    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_12
    return-object v6
.end method

.method private static processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 22
    .param p0, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "certIndex"    # I
    .param p2, "policyMapping"    # I
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "policiesCritical"    # Z
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

    .prologue
    .line 744
    .local p5, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    move-result-object v18

    .line 746
    .local v18, "polMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-nez v18, :cond_0

    .line 747
    return-object p3

    .line 749
    :cond_0
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    .line 750
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() inside policyMapping check"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 753
    :cond_1
    const/4 v14, 0x0

    .line 755
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :try_start_0
    const-string/jumbo v5, "map"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 766
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    const/4 v9, 0x0

    .line 767
    .local v9, "childDeleted":Z
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "polMap$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lsun/security/x509/CertificatePolicyMap;

    .line 769
    .local v16, "polMap":Lsun/security/x509/CertificatePolicyMap;
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "issuerDomain":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lsun/security/x509/CertificatePolicyMap;->getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v19

    .line 772
    .local v19, "subjectDomain":Ljava/lang/String;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3

    .line 773
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

    .line 775
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

    .line 779
    :cond_3
    const-string/jumbo v5, "2.5.29.32.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 780
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 781
    const-string/jumbo v3, "encountered an issuerDomainPolicy of ANY_POLICY"

    .line 782
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 780
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .end local v4    # "issuerDomain":Ljava/lang/String;
    throw v2

    .line 756
    .end local v9    # "childDeleted":Z
    .end local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v17    # "polMap$iterator":Ljava/util/Iterator;
    .end local v19    # "subjectDomain":Ljava/lang/String;
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :catch_0
    move-exception v13

    .line 757
    .local v13, "e":Ljava/io/IOException;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_4

    .line 758
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "PolicyChecker.processPolicyMappings() mapping exception"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    .line 762
    :cond_4
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v6, "Exception while checking mapping"

    invoke-direct {v5, v6, v13}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 785
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "issuerDomain":Ljava/lang/String;
    .restart local v9    # "childDeleted":Z
    .local v14, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .restart local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .restart local v17    # "polMap$iterator":Ljava/util/Iterator;
    .restart local v19    # "subjectDomain":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "2.5.29.32.0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 786
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    .line 787
    const-string/jumbo v3, "encountered a subjectDomainPolicy of ANY_POLICY"

    .line 788
    sget-object v7, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 786
    invoke-direct/range {v2 .. v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .end local v4    # "issuerDomain":Ljava/lang/String;
    throw v2

    .line 792
    .restart local v4    # "issuerDomain":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v21

    .line 793
    .local v21, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 794
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "curNode$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 795
    .local v2, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-gtz p2, :cond_8

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    .line 796
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addExpectedPolicy(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_9
    if-nez p2, :cond_7

    .line 799
    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v15

    check-cast v15, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 800
    .local v15, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_a

    .line 801
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

    .line 804
    :cond_a
    invoke-virtual {v15, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 805
    const/4 v9, 0x1

    .line 806
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_7

    .line 807
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

    .line 813
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v12    # "curNode$iterator":Ljava/util/Iterator;
    .end local v15    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_b
    if-gtz p2, :cond_c

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 815
    :cond_c
    const-string/jumbo v5, "2.5.29.32.0"

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v20

    .line 816
    .local v20, "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "curAnyNode$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 818
    .local v10, "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v3

    check-cast v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 820
    .local v3, "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 821
    .local v7, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 825
    const/4 v8, 0x1

    move-object/from16 v5, p5

    move/from16 v6, p4

    .line 823
    invoke-direct/range {v2 .. v8}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .restart local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1

    .line 831
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v3    # "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v4    # "issuerDomain":Ljava/lang/String;
    .end local v7    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v11    # "curAnyNode$iterator":Ljava/util/Iterator;
    .end local v16    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v19    # "subjectDomain":Ljava/lang/String;
    .end local v20    # "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v21    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_d
    if-eqz v9, :cond_f

    .line 832
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    .line 834
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_e

    .line 835
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "setting rootNode to null"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 836
    :cond_e
    const/16 p3, 0x0

    .line 840
    .end local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_f
    return-object p3
.end method

.method private static removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 14
    .param p0, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p1, "certIndex"    # I
    .param p3, "currCertPolicies"    # Lsun/security/x509/CertificatePoliciesExtension;
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

    .prologue
    .line 860
    .local p2, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 862
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :try_start_0
    const-string/jumbo v11, "policies"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 868
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    const/4 v1, 0x0

    .line 869
    .local v1, "childDeleted":Z
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "curPolInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/PolicyInformation;

    .line 871
    .local v4, "curPolInfo":Lsun/security/x509/PolicyInformation;
    invoke-virtual {v4}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    .line 873
    .local v6, "curPolicy":Ljava/lang/String;
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_1

    .line 874
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

    .line 878
    :cond_1
    invoke-virtual {p0, p1, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v10

    .line 879
    .local v10, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "curNode$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 880
    .local v2, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 881
    .local v8, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "2.5.29.32.0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 882
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 883
    const-string/jumbo v11, "2.5.29.32.0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 884
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_3

    .line 885
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

    .line 887
    :cond_3
    invoke-virtual {v8, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 888
    const/4 v1, 0x1

    .line 889
    sget-object v11, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v11, :cond_2

    .line 890
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

    .line 863
    .end local v1    # "childDeleted":Z
    .end local v2    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v3    # "curNode$iterator":Ljava/util/Iterator;
    .end local v4    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v5    # "curPolInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "curPolicy":Ljava/lang/String;
    .end local v8    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v10    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :catch_0
    move-exception v7

    .line 864
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v12, "Exception while retrieving policyOIDs"

    invoke-direct {v11, v12, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 897
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v1    # "childDeleted":Z
    .restart local v5    # "curPolInfo$iterator":Ljava/util/Iterator;
    .local v9, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :cond_4
    if-eqz v1, :cond_5

    .line 898
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 899
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 900
    const/4 p0, 0x0

    .line 904
    .end local p0    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_5
    return-object p0
.end method

.method private static rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .locals 12
    .param p0, "certIndex"    # I
    .param p2, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
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

    .prologue
    .line 597
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v6, "2.5.29.32.0"

    invoke-virtual {p2, p0, v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 598
    .local v8, "anyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 599
    return-object p2

    .line 601
    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 602
    .local v7, "anyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 603
    .local v1, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 605
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    .local v9, "initial":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "node$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 607
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 612
    invoke-virtual {p2, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 613
    invoke-virtual {p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 614
    const/4 p2, 0x0

    .line 626
    .end local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_2
    return-object p2

    .line 617
    .restart local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v4

    .line 619
    .local v4, "anyCritical":Z
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v3

    .line 620
    .local v3, "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "policy$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 621
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 622
    .local v5, "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 623
    const/4 v6, 0x0

    .line 622
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .restart local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 1
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
    .line 180
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-direct {p0, p1}, Lsun/security/provider/certpath/PolicyChecker;->checkPolicy(Ljava/security/cert/X509Certificate;)V

    .line 182
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v1, :cond_0

    .line 917
    return-object v2

    .line 919
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    .line 920
    .local v0, "policyTree":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    .line 921
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

    .prologue
    .line 156
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 158
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 164
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    return-object v0
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
    const/4 v1, 0x0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 122
    const-string/jumbo v1, "forward checking not supported"

    .line 121
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 126
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 127
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 128
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    if-eqz v0, :cond_3

    :goto_2
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 119
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_3
    iget v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v1, v0, 0x1

    goto :goto_2
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method
