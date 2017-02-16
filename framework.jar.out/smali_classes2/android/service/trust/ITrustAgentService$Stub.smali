.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final TRANSACTION_onConfigure:I = 0x5

.field static final TRANSACTION_onDeviceLocked:I = 0x3

.field static final TRANSACTION_onDeviceUnlocked:I = 0x4

.field static final TRANSACTION_onTrustTimeout:I = 0x2

.field static final TRANSACTION_onUnlockAttempt:I = 0x1

.field static final TRANSACTION_setCallback:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/service/trust/ITrustAgentService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    .line 54
    .local v2, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    .line 55
    return v4

    .line 59
    .end local v2    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    .line 61
    return v4

    .line 65
    :sswitch_3
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    .line 67
    return v4

    .line 71
    :sswitch_4
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    .line 73
    return v4

    .line 77
    :sswitch_5
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    sget-object v5, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 82
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v3}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 83
    return v4

    .line 87
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v5, "android.service.trust.ITrustAgentService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    invoke-virtual {p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 91
    return v4

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
