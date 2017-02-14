.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
.super Ljava/lang/Object;
.source "X509Data.java"


# instance fields
.field private x509Certificate:[B

.field private x509Crl:[B

.field private x509IssuerName:Ljava/lang/String;

.field private x509SerialNumber:I

.field private x509Ski:[B

.field private x509SubjectName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX509Certificate()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Certificate:[B

    return-object v0
.end method

.method public getX509Crl()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Crl:[B

    return-object v0
.end method

.method public getX509IssuerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509IssuerName:Ljava/lang/String;

    return-object v0
.end method

.method public getX509SerialNumber()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SerialNumber:I

    return v0
.end method

.method public getX509Ski()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Ski:[B

    return-object v0
.end method

.method public getX509SubjectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SubjectName:Ljava/lang/String;

    return-object v0
.end method

.method public setX509Certificate([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Certificate:[B

    return-void
.end method

.method public setX509Crl([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Crl:[B

    return-void
.end method

.method public setX509IssuerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509IssuerName:Ljava/lang/String;

    return-void
.end method

.method public setX509SerialNumber(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SerialNumber:I

    return-void
.end method

.method public setX509Ski([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509Ski:[B

    return-void
.end method

.method public setX509SubjectName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->x509SubjectName:Ljava/lang/String;

    return-void
.end method
