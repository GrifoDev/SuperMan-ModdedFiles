.class Ljava/security/cert/CertPathHelperImpl;
.super Lsun/security/provider/certpath/CertPathHelper;
.source "CertPathHelperImpl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lsun/security/provider/certpath/CertPathHelper;-><init>()V

    return-void
.end method

.method static declared-synchronized initialize()V
    .locals 2

    .prologue
    const-class v1, Ljava/security/cert/CertPathHelperImpl;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/security/cert/CertPathHelperImpl;

    invoke-direct {v0}, Ljava/security/cert/CertPathHelperImpl;-><init>()V

    sput-object v0, Lsun/security/provider/certpath/CertPathHelper;->instance:Lsun/security/provider/certpath/CertPathHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 52
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected implSetDateAndTime(Ljava/security/cert/X509CRLSelector;Ljava/util/Date;J)V
    .locals 1
    .param p1, "sel"    # Ljava/security/cert/X509CRLSelector;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "skew"    # J

    .prologue
    .line 64
    invoke-virtual {p1, p2, p3, p4}, Ljava/security/cert/X509CRLSelector;->setDateAndTime(Ljava/util/Date;J)V

    .line 63
    return-void
.end method

.method protected implSetPathToNames(Ljava/security/cert/X509CertSelector;Ljava/util/Set;)V
    .locals 0
    .param p1, "sel"    # Ljava/security/cert/X509CertSelector;
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

    .prologue
    .line 60
    .local p2, "names":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/x509/GeneralNameInterface;>;"
    invoke-virtual {p1, p2}, Ljava/security/cert/X509CertSelector;->setPathToNamesInternal(Ljava/util/Set;)V

    .line 59
    return-void
.end method
