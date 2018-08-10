.class public abstract Landroid/service/vr/IVrManager$Stub;
.super Landroid/os/Binder;
.source "IVrManager.java"

# interfaces
.implements Landroid/service/vr/IVrManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/vr/IVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.vr.IVrManager"

.field static final TRANSACTION_getVr2dDisplayId:I = 0x8

.field static final TRANSACTION_getVrModeState:I = 0x5

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerPersistentVrStateListener:I = 0x3

.field static final TRANSACTION_setPersistentVrModeEnabled:I = 0x6

.field static final TRANSACTION_setVr2dDisplayProperties:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_unregisterPersistentVrStateListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.vr.IVrManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/vr/IVrManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.service.vr.IVrManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/vr/IVrManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/service/vr/IVrManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/vr/IVrManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_2
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/service/vr/IVrManager$Stub;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/vr/IVrManager$Stub;->registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_4
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IPersistentVrStateCallbacks;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/service/vr/IVrManager$Stub;->unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_5
    const-string/jumbo v8, "android.service.vr.IVrManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVrModeState()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_6
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/service/vr/IVrManager$Stub;->setPersistentVrModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_7
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Vr2dDisplayProperties;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/service/vr/IVrManager$Stub;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "android.service.vr.IVrManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVr2dDisplayId()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
