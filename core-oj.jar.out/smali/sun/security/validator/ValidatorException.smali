.class public Lsun/security/validator/ValidatorException;
.super Ljava/security/cert/CertificateException;
.source "ValidatorException.java"


# static fields
.field public static final T_ALGORITHM_DISABLED:Ljava/lang/Object;

.field public static final T_CA_EXTENSIONS:Ljava/lang/Object;

.field public static final T_CERT_EXPIRED:Ljava/lang/Object;

.field public static final T_EE_EXTENSIONS:Ljava/lang/Object;

.field public static final T_NAME_CHAINING:Ljava/lang/Object;

.field public static final T_NO_TRUST_ANCHOR:Ljava/lang/Object;

.field public static final T_SIGNATURE_ERROR:Ljava/lang/Object;

.field public static final T_UNTRUSTED_CERT:Ljava/lang/Object;

.field private static final serialVersionUID:J = -0x275e9f12c6b9ebbbL


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private type:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "No trusted certificate found"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    const-string/jumbo v0, "End entity certificate extension check failed"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    const-string/jumbo v0, "CA certificate extension check failed"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    const-string/jumbo v0, "Certificate expired"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_CERT_EXPIRED:Ljava/lang/Object;

    const-string/jumbo v0, "Certificate signature validation failed"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    const-string/jumbo v0, "Certificate chaining error"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    const-string/jumbo v0, "Certificate signature algorithm disabled"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    const-string/jumbo v0, "Untrusted certificate"

    sput-object v0, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    iput-object p2, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    iput-object p3, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getErrorCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    return-object v0
.end method
