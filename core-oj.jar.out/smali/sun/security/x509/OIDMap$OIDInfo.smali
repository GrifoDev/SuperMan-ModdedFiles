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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lsun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lsun/security/x509/OIDMap$OIDInfo;->oid:Lsun/security/util/ObjectIdentifier;

    .line 194
    iput-object p3, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    .line 191
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

    .prologue
    .line 201
    iget-object v0, p0, Lsun/security/x509/OIDMap$OIDInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method
