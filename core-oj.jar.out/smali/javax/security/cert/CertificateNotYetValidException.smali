.class public Ljavax/security/cert/CertificateNotYetValidException;
.super Ljavax/security/cert/CertificateException;
.source "CertificateNotYetValidException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljavax/security/cert/CertificateException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljavax/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method
