.class Lsun/security/provider/certpath/ForwardState;
.super Ljava/lang/Object;
.source "ForwardState.java"

# interfaces
.implements Lsun/security/provider/certpath/State;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field cert:Lsun/security/x509/X509CertImpl;

.field forwardCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private init:Z

.field issuerDN:Ljavax/security/auth/x500/X500Principal;

.field keyParamsNeededFlag:Z

.field subjectNamesTraversed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;"
        }
    .end annotation
.end field

.field traversedCACerts:I

.field untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    .line 54
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 233
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/ForwardState;

    .line 237
    .local v1, "clonedState":Lsun/security/provider/certpath/ForwardState;
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    .line 236
    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 239
    iget-object v4, v1, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 240
    .local v3, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 242
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v0, Ljava/lang/Cloneable;

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v3, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .end local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v4, Ljava/lang/InternalError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 253
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "clonedState":Lsun/security/provider/certpath/ForwardState;
    .restart local v3    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 252
    iput-object v4, v1, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    return-object v1
.end method

.method public initState(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .prologue
    .local p1, "certPathCheckers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    const/4 v3, 0x1

    .line 137
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "checker$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 146
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 148
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->forwardCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_1
    iput-boolean v3, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 135
    return-void
.end method

.method public isInitial()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    return v0
.end method

.method public keyParamsNeeded()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, "\n  issuerDN of last cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, "\n  traversedCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v1, "\n  init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string/jumbo v1, "\n  keyParamsNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    iget-boolean v2, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v1, "\n  subjectNamesTraversed: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(Ljava/security/cert/X509Certificate;)V
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v4

    .line 170
    .local v4, "icert":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v7}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->keyParamsNeededFlag:Z

    .line 175
    :cond_1
    iput-object v4, p0, Lsun/security/provider/certpath/ForwardState;->cert:Lsun/security/x509/X509CertImpl;

    .line 178
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    iput-object v7, p0, Lsun/security/provider/certpath/ForwardState;->issuerDN:Ljavax/security/auth/x500/X500Principal;

    .line 180
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 186
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v7, :cond_2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 187
    iget v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lsun/security/provider/certpath/ForwardState;->traversedCACerts:I

    .line 193
    :cond_2
    iget-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    if-nez v7, :cond_4

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 217
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lsun/security/provider/certpath/ForwardState;->init:Z

    .line 162
    return-void

    .line 194
    :cond_4
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 195
    .local v6, "subjName":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-static {v6}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    :try_start_0
    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;

    move-result-object v5

    .line 200
    .local v5, "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-eqz v5, :cond_3

    .line 202
    const-string/jumbo v7, "subject_name"

    .line 201
    invoke-virtual {v5, v7}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;

    move-result-object v3

    .line 203
    .local v3, "gNames":Lsun/security/x509/GeneralNames;
    invoke-virtual {v3}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "gName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralName;

    .line 204
    .local v1, "gName":Lsun/security/x509/GeneralName;
    iget-object v7, p0, Lsun/security/provider/certpath/ForwardState;->subjectNamesTraversed:Ljava/util/HashSet;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1    # "gName":Lsun/security/x509/GeneralName;
    .end local v2    # "gName$iterator":Ljava/util/Iterator;
    .end local v3    # "gNames":Lsun/security/x509/GeneralNames;
    .end local v5    # "subjAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_5

    .line 209
    sget-object v7, Lsun/security/provider/certpath/ForwardState;->debug:Lsun/security/util/Debug;

    const-string/jumbo v8, "ForwardState.updateState() unexpected exception"

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    :cond_5
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v7, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
