.class Lcom/samsung/android/settings/location/SatelliteView$2;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/SatelliteView$2;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    return-void
.end method
