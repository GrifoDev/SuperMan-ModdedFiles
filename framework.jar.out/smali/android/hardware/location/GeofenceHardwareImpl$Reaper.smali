.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "GeofenceHardwareImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reaper"
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private mMonitoringType:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    return-void
.end method

.method constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    return-void
.end method

.method private binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move v1, v0

    goto :goto_1
.end method

.method private callbackEquals(Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private unlinkToDeath()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v0}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get3(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get3(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get5(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get5(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get2(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->-get2(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    iget-object v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-direct {p0, v3, v4}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    iget v4, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    invoke-interface {v1}, Landroid/hardware/location/IGeofenceHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    invoke-interface {v2}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    add-int v0, v1, v2

    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
