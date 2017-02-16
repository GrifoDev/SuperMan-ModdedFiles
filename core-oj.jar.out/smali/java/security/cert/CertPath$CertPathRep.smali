.class public Ljava/security/cert/CertPath$CertPathRep;
.super Ljava/lang/Object;
.source "CertPath.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/cert/CertPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CertPathRep"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x29d9ae4d46fc6e13L


# instance fields
.field private data:[B

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    .line 319
    iput-object p2, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    .line 317
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
    .line 332
    :try_start_0
    iget-object v3, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 333
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Ljava/security/cert/CertPath$CertPathRep;->data:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 334
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/io/NotSerializableException;

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java.security.cert.CertPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/CertPath$CertPathRep;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .line 338
    .local v2, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 339
    throw v2
.end method
