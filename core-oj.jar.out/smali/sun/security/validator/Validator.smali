.class public abstract Lsun/security/validator/Validator;
.super Ljava/lang/Object;
.source "Validator.java"


# static fields
.field static final CHAIN0:[Ljava/security/cert/X509Certificate;

.field public static final TYPE_PKIX:Ljava/lang/String; = "PKIX"

.field public static final TYPE_SIMPLE:Ljava/lang/String; = "Simple"

.field public static final VAR_CODE_SIGNING:Ljava/lang/String; = "code signing"

.field public static final VAR_GENERIC:Ljava/lang/String; = "generic"

.field public static final VAR_JCE_SIGNING:Ljava/lang/String; = "jce signing"

.field public static final VAR_PLUGIN_CODE_SIGNING:Ljava/lang/String; = "plugin code signing"

.field public static final VAR_TLS_CLIENT:Ljava/lang/String; = "tls client"

.field public static final VAR_TLS_SERVER:Ljava/lang/String; = "tls server"

.field public static final VAR_TSA_SERVER:Ljava/lang/String; = "tsa server"


# instance fields
.field final endEntityChecker:Lsun/security/validator/EndEntityChecker;

.field volatile validationDate:Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lsun/security/validator/Validator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    .line 158
    invoke-static {p1, p2}, Lsun/security/validator/EndEntityChecker;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/validator/EndEntityChecker;

    move-result-object v0

    iput-object v0, p0, Lsun/security/validator/Validator;->endEntityChecker:Lsun/security/validator/EndEntityChecker;

    .line 156
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Lsun/security/validator/Validator;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 167
    invoke-static {p2}, Lsun/security/validator/KeyStores;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lsun/security/validator/Validator;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/PKIXBuilderParameters;

    .prologue
    .line 192
    const-string/jumbo v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 194
    const-string/jumbo v1, "getInstance(PKIXBuilderParameters) can only be used with PKIX validator"

    .line 193
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    new-instance v0, Lsun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lsun/security/validator/Validator;"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "trustedCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const-string/jumbo v0, "Simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lsun/security/validator/SimpleValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/SimpleValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 178
    :cond_0
    const-string/jumbo v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Lsun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown validator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public abstract getTrustedCertificates()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public setValidationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "validationDate"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 290
    iput-object p1, p0, Lsun/security/validator/Validator;->validationDate:Ljava/util/Date;

    .line 289
    return-void
.end method

.method public final validate([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, v0, v0}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 215
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 236
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p3, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p4, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/AlgorithmConstraints;",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 260
    .local p2, "otherCerts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/security/validator/Validator;->engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    .line 263
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lsun/security/validator/Validator;->endEntityChecker:Lsun/security/validator/EndEntityChecker;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1, p4}, Lsun/security/validator/EndEntityChecker;->check(Ljava/security/cert/X509Certificate;Ljava/lang/Object;)V

    .line 267
    :cond_0
    return-object p1
.end method
