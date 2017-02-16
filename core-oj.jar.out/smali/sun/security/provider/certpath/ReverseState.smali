.class Lsun/security/provider/certpath/ReverseState;
.super Ljava/lang/Object;
.source "ReverseState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

.field certIndex:I

.field crlSign:Z

.field explicitPolicy:I

.field inhibitAnyPolicy:I

.field private init:Z

.field nc:Lsun/security/x509/NameConstraintsExtension;

.field policyMapping:I

.field pubKey:Ljava/security/PublicKey;

.field remainingCACerts:I

.field revChecker:Lsun/security/provider/certpath/RevocationChecker;

.field rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

.field subjectDN:Ljavax/security/auth/x500/X500Principal;

.field trustAnchor:Ljava/security/cert/TrustAnchor;

.field untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

.field userCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ReverseState;->debug:Lsun/security/util/Debug;

    .line 58
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    .line 112
    iput-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    .line 58
    return-void
.end method

.method private updateState(Ljava/security/PublicKey;Ljavax/security/auth/x500/X500Principal;)V
    .locals 0
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .param p2, "subjectDN"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 273
    iput-object p2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 276
    iput-object p1, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    .line 270
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 377
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/ReverseState;

    .line 381
    .local v1, "clonedState":Lsun/security/provider/certpath/ReverseState;
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 380
    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    .line 383
    iget-object v4, v1, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 384
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 386
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "clonedState":Lsun/security/provider/certpath/ReverseState;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 392
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clonedState":Lsun/security/provider/certpath/ReverseState;
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v4}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/NameConstraintsExtension;

    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    .line 397
    :cond_2
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-eqz v4, :cond_3

    .line 398
    iget-object v4, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v4

    iput-object v4, v1, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 401
    :cond_3
    return-object v1
.end method

.method public initState(Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 11
    .param p1, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 161
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$BuilderParams;->maxPathLength()I

    move-result v9

    .line 162
    .local v9, "maxPathLen":I
    if-ne v9, v2, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    .line 166
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    .line 176
    :goto_1
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    .line 183
    :goto_2
    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iput v4, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    .line 190
    .end local v9    # "maxPathLen":I
    :goto_3
    iput v10, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    .line 193
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 194
    .local v5, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "2.5.29.32.0"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    const-string/jumbo v2, "2.5.29.32.0"

    move-object v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    iput-object v0, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    .line 205
    iget-object v0, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "checker$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/PKIXCertPathChecker;

    .line 206
    .local v7, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v7, v4}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_4

    .end local v5    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v8    # "checker$iterator":Ljava/util/Iterator;
    .restart local v9    # "maxPathLen":I
    :cond_0
    move v0, v9

    .line 163
    goto :goto_0

    .line 172
    :cond_1
    if-ne v9, v2, :cond_2

    move v0, v9

    :goto_5
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v9, 0x2

    goto :goto_5

    .line 179
    :cond_3
    if-ne v9, v2, :cond_4

    move v0, v9

    :goto_6
    iput v0, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v9, 0x2

    goto :goto_6

    .line 186
    :cond_5
    if-ne v9, v2, :cond_6

    .end local v9    # "maxPathLen":I
    :goto_7
    iput v9, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    goto :goto_3

    .restart local v9    # "maxPathLen":I
    :cond_6
    add-int/lit8 v9, v9, 0x2

    goto :goto_7

    .line 210
    .end local v9    # "maxPathLen":I
    .restart local v5    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "checker$iterator":Ljava/util/Iterator;
    :cond_7
    iput-boolean v10, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    .line 212
    iput-boolean v10, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    .line 154
    return-void
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    return v0
.end method

.method public keyParamsNeeded()Z
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, "\n  subjectDN of last cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, "\n  subjectKeyIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, "\n  nameConstraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v1, "\n  certIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, "\n  explicitPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, "\n  policyMapping:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, "\n  inhibitAnyPolicy:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, "\n  rootNode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v1, "\n  remainingCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v1, "\n  crlSign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v1, "\n  init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v1, "\n]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$BuilderParams;)V
    .locals 7
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "buildParams"    # Lsun/security/provider/certpath/PKIX$BuilderParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 224
    iput-object p1, p0, Lsun/security/provider/certpath/ReverseState;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 225
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 226
    .local v4, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p0, v4}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 235
    :goto_0
    const/4 v3, 0x0

    .line 236
    .local v3, "revCheckerAdded":Z
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseState;->userCheckers:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "checker$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    .line 237
    .local v1, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v5, v1, Lsun/security/provider/certpath/AlgorithmChecker;

    if-eqz v5, :cond_2

    .line 238
    nop

    nop

    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    goto :goto_1

    .line 229
    .end local v2    # "checker$iterator":Ljava/util/Iterator;
    .end local v3    # "revCheckerAdded":Z
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 230
    .local v0, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/PublicKey;Ljavax/security/auth/x500/X500Principal;)V

    goto :goto_0

    .line 239
    .end local v0    # "caName":Ljavax/security/auth/x500/X500Principal;
    .restart local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v2    # "checker$iterator":Ljava/util/Iterator;
    .restart local v3    # "revCheckerAdded":Z
    :cond_2
    instance-of v5, v1, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v5, :cond_0

    .line 240
    if-eqz v3, :cond_3

    .line 241
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    .line 242
    const-string/jumbo v6, "Only one PKIXRevocationChecker can be specified"

    .line 241
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_3
    instance-of v5, v1, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v5, :cond_4

    move-object v5, v1

    .line 246
    nop

    nop

    invoke-virtual {v5, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    .line 248
    :cond_4
    nop

    nop

    .end local v1    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v1, v6}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 249
    const/4 v3, 0x1

    goto :goto_1

    .line 255
    :cond_5
    invoke-virtual {p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_7

    .line 260
    :cond_6
    :goto_2
    iput-boolean v6, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    .line 222
    return-void

    .line 256
    :cond_7
    new-instance v5, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v5, p1, p2}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    iput-object v5, p0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    .line 257
    iget-object v5, p0, Lsun/security/provider/certpath/ReverseState;->revChecker:Lsun/security/provider/certpath/RevocationChecker;

    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/RevocationChecker;->init(Z)V

    goto :goto_2
.end method

.method public updateState(Ljava/security/cert/X509Certificate;)V
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 288
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjectDN:Ljavax/security/auth/x500/X500Principal;

    .line 295
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    .line 296
    .local v0, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 297
    .local v1, "newKey":Ljava/security/PublicKey;
    invoke-static {v1}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    invoke-static {v1, v2}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v1

    .line 302
    :cond_1
    iput-object v1, p0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    .line 308
    iget-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    if-eqz v2, :cond_2

    .line 309
    iput-boolean v4, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    .line 310
    return-void

    .line 314
    :cond_2
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->subjKeyId:Lsun/security/x509/SubjectKeyIdentifierExtension;

    .line 317
    invoke-static {p1}, Lsun/security/provider/certpath/RevocationChecker;->certCanSignCrl(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/provider/certpath/ReverseState;->crlSign:Z

    .line 320
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v2, :cond_4

    .line 321
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/x509/NameConstraintsExtension;->merge(Lsun/security/x509/NameConstraintsExtension;)V

    .line 334
    :cond_3
    :goto_0
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    invoke-static {v2, v0, v4}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v2

    .line 333
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->explicitPolicy:I

    .line 336
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    invoke-static {v2, v0}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    move-result v2

    .line 335
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->policyMapping:I

    .line 338
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    invoke-static {v2, v0}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    move-result v2

    .line 337
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->inhibitAnyPolicy:I

    .line 339
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->certIndex:I

    .line 345
    iget v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    invoke-static {p1, v2}, Lsun/security/provider/certpath/ConstraintsChecker;->mergeBasicConstraints(Ljava/security/cert/X509Certificate;I)I

    move-result v2

    .line 344
    iput v2, p0, Lsun/security/provider/certpath/ReverseState;->remainingCACerts:I

    .line 347
    iput-boolean v4, p0, Lsun/security/provider/certpath/ReverseState;->init:Z

    .line 285
    return-void

    .line 323
    :cond_4
    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    .line 324
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    invoke-virtual {v2}, Lsun/security/x509/NameConstraintsExtension;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/NameConstraintsExtension;

    iput-object v2, p0, Lsun/security/provider/certpath/ReverseState;->nc:Lsun/security/x509/NameConstraintsExtension;

    goto :goto_0
.end method
