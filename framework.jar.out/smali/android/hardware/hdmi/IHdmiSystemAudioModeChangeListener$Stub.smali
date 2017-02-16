.class public abstract Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiSystemAudioModeChangeListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiSystemAudioModeChangeListener"

.field static final TRANSACTION_onStatusChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiSystemAudioModeChangeListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.hardware.hdmi.IHdmiSystemAudioModeChangeListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 48
    :sswitch_0
    const-string/jumbo v2, "android.hardware.hdmi.IHdmiSystemAudioModeChangeListener"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v1

    .line 53
    :sswitch_1
    const-string/jumbo v2, "android.hardware.hdmi.IHdmiSystemAudioModeChangeListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 56
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;->onStatusChanged(Z)V

    .line 57
    return v1

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
