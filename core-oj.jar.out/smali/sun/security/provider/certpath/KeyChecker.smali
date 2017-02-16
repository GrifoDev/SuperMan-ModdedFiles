.class Lsun/security/provider/certpath/KeyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "KeyChecker.java"


# static fields
.field private static final KEY_CERT_SIGN:I = 0x5

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final certPathLen:I

.field private remainingCerts:I

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

.field private final targetConstraints:Ljava/security/cert/CertSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    .line 45
    return-void
.end method

.method constructor <init>(ILjava/security/cert/CertSelector;)V
    .locals 0
    .param p1, "certPathLen"    # I
    .param p2, "targetCertSel"    # Ljava/security/cert/CertSelector;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 62
    iput p1, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    .line 63
    iput-object p2, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    .line 61
    return-void
.end method

.method static verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V
    .locals 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string/jumbo v7, "CA key usage"

    .line 144
    .local v7, "msg":Ljava/lang/String;
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeyChecker.verifyCAKeyUsage() ---checking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string/jumbo v3, "..."

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v6

    .line 153
    .local v6, "keyUsageBits":[Z
    if-nez v6, :cond_1

    .line 154
    return-void

    .line 158
    :cond_1
    const/4 v0, 0x5

    aget-boolean v0, v6, v0

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " check failed: keyCertSign bit is not set"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    sget-object v5, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v4, -0x1

    move-object v3, v2

    .line 159
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 164
    :cond_2
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3

    .line 165
    sget-object v0, Lsun/security/provider/certpath/KeyChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeyChecker.verifyCAKeyUsage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    const-string/jumbo v2, " verified."

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 142
    :cond_3
    return-void
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 3
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
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    .line 109
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 111
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    .line 114
    iget v1, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lsun/security/provider/certpath/KeyChecker;->targetConstraints:Ljava/security/cert/CertSelector;

    invoke-interface {v1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "target certificate constraints check failed"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    invoke-static {v0}, Lsun/security/provider/certpath/KeyChecker;->verifyCAKeyUsage(Ljava/security/cert/X509Certificate;)V

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_2
    :goto_0
    return-void

    .line 127
    :cond_3
    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
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
    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    .line 89
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

    .line 94
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/KeyChecker;->supportedExts:Ljava/util/Set;

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
    .line 72
    if-nez p1, :cond_0

    .line 73
    iget v0, p0, Lsun/security/provider/certpath/KeyChecker;->certPathLen:I

    iput v0, p0, Lsun/security/provider/certpath/KeyChecker;->remainingCerts:I

    .line 71
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 76
    const-string/jumbo v1, "forward checking not supported"

    .line 75
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method
