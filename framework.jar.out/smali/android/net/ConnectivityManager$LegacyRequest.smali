.class Landroid/net/ConnectivityManager$LegacyRequest;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManager$LegacyRequest$1;
    }
.end annotation


# instance fields
.field currentNetwork:Landroid/net/Network;

.field delay:I

.field expireSequenceNumber:I

.field networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field networkCapabilities:Landroid/net/NetworkCapabilities;

.field networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method static synthetic -wrap0(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;->clearDnsBinding()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->delay:I

    new-instance v0, Landroid/net/ConnectivityManager$LegacyRequest$1;

    invoke-direct {v0, p0}, Landroid/net/ConnectivityManager$LegacyRequest$1;-><init>(Landroid/net/ConnectivityManager$LegacyRequest;)V

    iput-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityManager$LegacyRequest;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$LegacyRequest;-><init>()V

    return-void
.end method

.method private clearDnsBinding()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroid/net/ConnectivityManager$LegacyRequest;->currentNetwork:Landroid/net/Network;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetworkForHostResolution(Landroid/net/Network;)Z

    :cond_0
    return-void
.end method
