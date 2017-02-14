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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lsun/security/validator/Validator;->CHAIN0:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lsun/security/validator/Validator;->variant:Ljava/lang/String;

    invoke-static {p1, p2}, Lsun/security/validator/EndEntityChecker;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/validator/EndEntityChecker;

    move-result-object v0

    iput-object v0, p0, Lsun/security/validator/Validator;->endEntityChecker:Lsun/security/validator/EndEntityChecker;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyStore;)Lsun/security/validator/Validator;
    .locals 1

    invoke-static {p2}, Lsun/security/validator/KeyStores;->getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lsun/security/validator/Validator;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)Lsun/security/validator/Validator;
    .locals 2

    const-string/jumbo v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getInstance(PKIXBuilderParameters) can only be used with PKIX validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lsun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lsun/security/validator/Validator;
    .locals 3
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

    const-string/jumbo v0, "Simple"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsun/security/validator/SimpleValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/SimpleValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "PKIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lsun/security/validator/PKIXValidator;

    invoke-direct {v0, p1, p2}, Lsun/security/validator/PKIXValidator;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown validator type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lsun/security/validator/Validator;->validationDate:Ljava/util/Date;

    return-void
.end method

.method public final validate([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;)[Ljava/security/cert/X509Certificate;
    .locals 1
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 1
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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lsun/security/validator/Validator;->validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final validate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;
    .locals 2
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/security/validator/Validator;->engineValidate([Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/security/AlgorithmConstraints;Ljava/lang/Object;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/validator/Validator;->endEntityChecker:Lsun/security/validator/EndEntityChecker;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1, p4}, Lsun/security/validator/EndEntityChecker;->check(Ljava/security/cert/X509Certificate;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
