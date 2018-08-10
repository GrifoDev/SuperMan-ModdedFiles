.class public Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;
.super Ljava/security/Provider;
.source "WifiHs20OCSPStaplingProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "OCSPStaplingProvider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v1, "Samsung ocsp stapling provider with mandatory certificate revocation check"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;-><init>(Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method
