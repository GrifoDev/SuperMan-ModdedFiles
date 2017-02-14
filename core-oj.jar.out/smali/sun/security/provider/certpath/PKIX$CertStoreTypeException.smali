.class Lsun/security/provider/certpath/PKIX$CertStoreTypeException;
.super Ljava/security/cert/CertStoreException;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CertStoreTypeException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x679327aecf46397cL


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;->type:Ljava/lang/String;

    return-object v0
.end method
