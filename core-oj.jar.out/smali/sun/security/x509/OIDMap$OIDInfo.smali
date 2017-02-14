.class Lsun/security/x509/OIDMap$OIDInfo;
.super Ljava/lang/Object;
.source "OIDMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/OIDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OIDInfo"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;

.field final name:Ljava/lang/String;

.field final oid:Lsun/security/util/ObjectIdentifier;


# direct methods
.method constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    iput-object p3, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method
