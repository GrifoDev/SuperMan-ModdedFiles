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

.field static final TRANSACTION_getVrModeState:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.service.vr.IVrManager"

    invoke-virtual {p0, p0, v0}, Landroid/service/vr/IVrManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.service.vr.IVrManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/service/vr/IVrManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/vr/IVrManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/vr/IVrManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 43
    :sswitch_0
    const-string/jumbo v2, "android.service.vr.IVrManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v3

    .line 48
    :sswitch_1
    const-string/jumbo v2, "android.service.vr.IVrManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p0, v0}, Landroid/service/vr/IVrManager$Stub;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v3

    .line 57
    .end local v0    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :sswitch_2
    const-string/jumbo v2, "android.service.vr.IVrManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrStateCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    invoke-virtual {p0, v0}, Landroid/service/vr/IVrManager$Stub;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v3

    .line 66
    .end local v0    # "_arg0":Landroid/service/vr/IVrStateCallbacks;
    :sswitch_3
    const-string/jumbo v2, "android.service.vr.IVrManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/service/vr/IVrManager$Stub;->getVrModeState()Z

    move-result v1

    .line 68
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v3

    .line 69
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
