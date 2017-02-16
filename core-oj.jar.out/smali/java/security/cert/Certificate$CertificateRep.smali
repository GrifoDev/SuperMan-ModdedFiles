.class public Ljava/security/cert/Certificate$CertificateRep;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CertificateRep"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x76d895623651c3f4L


# instance fields
.field private data:[B

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    .line 224
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v2, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 243
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Ljava/security/cert/Certificate$CertificateRep;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 242
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 244
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/NotSerializableException;

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java.security.cert.Certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    iget-object v4, p0, Ljava/security/cert/Certificate$CertificateRep;->type:Ljava/lang/String;

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v4, ": "

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
