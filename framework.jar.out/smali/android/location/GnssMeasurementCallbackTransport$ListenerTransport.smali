.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "GnssMeasurementCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GnssMeasurementCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2

    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;Landroid/location/GnssMeasurementsEvent;)V

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2

    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;I)V

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    return-void
.end method
