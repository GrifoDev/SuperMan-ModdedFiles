.class final Lsun/security/ssl/JsseJce$SunCertificates;
.super Ljava/security/Provider;
.source "JsseJce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/JsseJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SunCertificates"
.end annotation


# direct methods
.method constructor <init>(Ljava/security/Provider;)V
    .locals 4

    const-string/jumbo v0, "SunCertificates"

    const-string/jumbo v1, "SunJSSE internal"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Lsun/security/ssl/JsseJce$SunCertificates$1;

    invoke-direct {v0, p0, p1}, Lsun/security/ssl/JsseJce$SunCertificates$1;-><init>(Lsun/security/ssl/JsseJce$SunCertificates;Ljava/security/Provider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method
