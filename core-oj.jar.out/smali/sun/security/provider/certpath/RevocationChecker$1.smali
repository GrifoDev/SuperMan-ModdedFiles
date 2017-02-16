.class final Lsun/security/provider/certpath/RevocationChecker$1;
.super Ljava/lang/Object;
.source "RevocationChecker.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker$1;->run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 184
    new-instance v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    invoke-direct {v2, v3}, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;-><init>(Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;)V

    .line 186
    .local v2, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    const-string/jumbo v3, "com.sun.security.onlyCheckRevocationOfEECert"

    .line 185
    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "onlyEE":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 188
    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 187
    :goto_0
    iput-boolean v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    .line 189
    const-string/jumbo v3, "ocsp.enable"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "ocspEnabled":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 190
    :cond_0
    iput-boolean v4, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    .line 192
    const-string/jumbo v3, "ocsp.responderURL"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    .line 194
    const-string/jumbo v3, "ocsp.responderCertSubjectName"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    .line 196
    const-string/jumbo v3, "ocsp.responderCertIssuerName"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    .line 198
    const-string/jumbo v3, "ocsp.responderCertSerialNumber"

    invoke-static {v3}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    iput-object v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    .line 200
    const-string/jumbo v3, "com.sun.security.enableCRLDP"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 199
    iput-boolean v3, v2, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    .line 201
    return-object v2

    .end local v0    # "ocspEnabled":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 187
    goto :goto_0
.end method
