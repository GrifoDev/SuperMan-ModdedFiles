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

    .prologue
    .line 41
    const-string/jumbo v0, "No trusted certificate found"

    .line 40
    sput-object v0, Lsun/security/validator/ValidatorException;->T_NO_TRUST_ANCHOR:Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "End entity certificate extension check failed"

    .line 43
    sput-object v0, Lsun/security/validator/ValidatorException;->T_EE_EXTENSIONS:Ljava/lang/Object;

    .line 47
    const-string/jumbo v0, "CA certificate extension check failed"

    .line 46
    sput-object v0, Lsun/security/validator/ValidatorException;->T_CA_EXTENSIONS:Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, "Certificate expired"

    .line 49
    sput-object v0, Lsun/security/validator/ValidatorException;->T_CERT_EXPIRED:Ljava/lang/Object;

    .line 53
    const-string/jumbo v0, "Certificate signature validation failed"

    .line 52
    sput-object v0, Lsun/security/validator/ValidatorException;->T_SIGNATURE_ERROR:Ljava/lang/Object;

    .line 56
    const-string/jumbo v0, "Certificate chaining error"

    .line 55
    sput-object v0, Lsun/security/validator/ValidatorException;->T_NAME_CHAINING:Ljava/lang/Object;

    .line 59
    const-string/jumbo v0, "Certificate signature algorithm disabled"

    .line 58
    sput-object v0, Lsun/security/validator/ValidatorException;->T_ALGORITHM_DISABLED:Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "Untrusted certificate"

    .line 61
    sput-object v0, Lsun/security/validator/ValidatorException;->T_UNTRUSTED_CERT:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    move-object v0, p1

    .line 81
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    .line 89
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 94
    iput-object p2, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    .line 95
    iput-object p3, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Object;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lsun/security/validator/ValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/security/cert/X509Certificate;)V

    .line 101
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    return-void
.end method


# virtual methods
.method public getErrorCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/validator/ValidatorException;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getErrorType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/validator/ValidatorException;->type:Ljava/lang/Object;

    return-object v0
.end method
