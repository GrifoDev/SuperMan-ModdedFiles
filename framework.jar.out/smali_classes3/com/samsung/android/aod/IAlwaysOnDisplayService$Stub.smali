.class public abstract Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;
.super Landroid/os/Binder;
.source "IAlwaysOnDisplayService.java"

# interfaces
.implements Lcom/samsung/android/aod/IAlwaysOnDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/IAlwaysOnDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.aod.IAlwaysOnDisplayService"

.field static final TRANSACTION_requestHide:I = 0x3

.field static final TRANSACTION_startAOD:I = 0x1

.field static final TRANSACTION_stopAOD:I = 0x2

.field static final TRANSACTION_updateCalendarData:I = 0x5

.field static final TRANSACTION_updateNotificationKeys:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/aod/IAlwaysOnDisplayService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/aod/IAlwaysOnDisplayService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->startAOD()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_2
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->stopAOD()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_3
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->requestHide()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_4
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->updateNotificationKeys(ILjava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_5
    const-string/jumbo v3, "com.samsung.android.aod.IAlwaysOnDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    nop

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
