.class Landroid/location/LocationManager$GnssStatusListenerTransport$3;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V
    .locals 0

    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/GnssStatusCallback;->onFirstFix(I)V

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/GnssStatusCallback;->onSatelliteStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method

.method public onStarted()V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssStatusCallback;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->-get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GnssStatusCallback;->onStopped()V

    return-void
.end method
