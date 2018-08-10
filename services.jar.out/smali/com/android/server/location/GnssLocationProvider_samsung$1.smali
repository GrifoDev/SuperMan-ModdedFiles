.class Lcom/android/server/location/GnssLocationProvider_samsung$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->-get1(Lcom/android/server/location/GnssLocationProvider_samsung;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-set0(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->-wrap1(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-set0(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung$1;->this$0:Lcom/android/server/location/GnssLocationProvider_samsung;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider_samsung;->-set0(Lcom/android/server/location/GnssLocationProvider_samsung;Z)Z

    return-void
.end method
