.class public abstract Lsun/security/provider/certpath/CertPathHelper;
.super Ljava/lang/Object;
.source "CertPathHelper.java"


# static fields
.field protected static instance:Lsun/security/provider/certpath/CertPathHelper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
    .locals 2

    sget-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/security/provider/certpath/CertPathHelper;->implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V

    return-void
.end method

.method static setPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    invoke-virtual {v0, p0, p1}, Lsun/security/provider/certpath/CertPathHelper;->implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method protected abstract implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
.end method

.method protected abstract implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CertSelector;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/GeneralNameInterface;",
            ">;)V"
        }
    .end annotation
.end method
