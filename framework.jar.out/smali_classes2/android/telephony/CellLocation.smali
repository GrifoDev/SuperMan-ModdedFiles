.class public abstract Landroid/telephony/CellLocation;
.super Ljava/lang/Object;
.source "CellLocation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Landroid/telephony/CellLocation;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    return-object v1
.end method

.method public static newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestLocationUpdate()V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public abstract fillInNotifierBundle(Landroid/os/Bundle;)V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setStateInvalid()V
.end method
