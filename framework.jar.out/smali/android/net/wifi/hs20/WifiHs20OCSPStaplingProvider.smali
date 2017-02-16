.class public Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;
.super Ljava/security/Provider;
.source "WifiHs20OCSPStaplingProvider.java"


# static fields
.field private static final WifiHs20OCSPStaplingProvider:Ljava/security/Provider;


# direct methods
.method static synthetic -wrap0(Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;->setup()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 23
    const-string/jumbo v0, "OCSPStaplingProvider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 24
    const-string/jumbo v1, "Samsung ocsp stapling provider with mandatory certificate revocation check"

    .line 23
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 26
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider$1;-><init>(Landroid/net/wifi/hs20/WifiHs20OCSPStaplingProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
