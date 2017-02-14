.class Landroid/location/LocationManager$1;
.super Landroid/location/GnssNavigationMessage$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessageEvent$Callback;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager;

.field final synthetic val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNavigationMessageEvent$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/location/LocationManager$1;->this$0:Landroid/location/LocationManager;

    iput-object p2, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 2

    new-instance v0, Landroid/location/GnssNavigationMessageEvent;

    invoke-direct {v0, p1}, Landroid/location/GnssNavigationMessageEvent;-><init>(Landroid/location/GnssNavigationMessage;)V

    iget-object v1, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-virtual {v1, v0}, Landroid/location/GnssNavigationMessageEvent$Callback;->onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessageEvent;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/location/LocationManager$1;->val$callback:Landroid/location/GnssNavigationMessageEvent$Callback;

    invoke-virtual {v0, p1}, Landroid/location/GnssNavigationMessageEvent$Callback;->onStatusChanged(I)V

    return-void
.end method
