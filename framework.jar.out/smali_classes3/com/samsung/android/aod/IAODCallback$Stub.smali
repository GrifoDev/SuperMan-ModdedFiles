.class public abstract Lcom/samsung/android/aod/IAODCallback$Stub;
.super Landroid/os/Binder;
.source "IAODCallback.java"

# interfaces
.implements Lcom/samsung/android/aod/IAODCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAODCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAODCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAODCallback"

.field static final TRANSACTION_onScreenTurningOn:I = 0x1

.field static final TRANSACTION_onUpdateCalendarData:I = 0x3

.field static final TRANSACTION_onUpdateNotificationKeys:I = 0x2

.field static final TRANSACTION_onUpdateSmartAlertNotifications:I = 0x5

.field static final TRANSACTION_onUpdateStatusBarNotifications:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAODCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAODCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.aod.IAODCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAODCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/aod/IAODCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAODCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAODCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/aod/IAODCallback$Stub;->onScreenTurningOn()V

    return v6

    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/aod/IAODCallback$Stub;->onUpdateNotificationKeys(ILjava/util/List;)V

    return v6

    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/aod/IAODCallback$Stub;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return v6

    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v5, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/aod/IAODCallback$Stub;->onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V

    return v6

    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.aod.IAODCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v5, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v2}, Lcom/samsung/android/aod/IAODCallback$Stub;->onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V

    return v6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
