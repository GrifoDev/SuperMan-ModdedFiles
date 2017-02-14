.class Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;
.super Lcom/samsung/android/location/ISLocationListener$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlpSLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Lcom/samsung/android/location/ISLocationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/FlpHardwareProvider;Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;-><init>(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationAvailable([Landroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "FlpHardwareProvider.mSLocationListener onLocationAvailable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap20(Lcom/android/server/location/FlpHardwareProvider;[Landroid/location/Location;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Landroid/location/Address;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
