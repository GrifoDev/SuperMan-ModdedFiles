.class public abstract Landroid/media/midi/IMidiDeviceServer$Stub;
.super Landroid/os/Binder;
.source "IMidiDeviceServer.java"

# interfaces
.implements Landroid/media/midi/IMidiDeviceServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/IMidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.midi.IMidiDeviceServer"

.field static final TRANSACTION_closeDevice:I = 0x4

.field static final TRANSACTION_closePort:I = 0x3

.field static final TRANSACTION_connectPorts:I = 0x5

.field static final TRANSACTION_getDeviceInfo:I = 0x6

.field static final TRANSACTION_openInputPort:I = 0x1

.field static final TRANSACTION_openOutputPort:I = 0x2

.field static final TRANSACTION_setDeviceInfo:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p0, p0, v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.midi.IMidiDeviceServer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/midi/IMidiDeviceServer;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/midi/IMidiDeviceServer;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/midi/IMidiDeviceServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    return v9

    :sswitch_2
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    return v9

    :sswitch_3
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/midi/IMidiDeviceServer$Stub;->closePort(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_4
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->closeDevice()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_5
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/media/midi/IMidiDeviceServer$Stub;->connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_6
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, p3, v9}, Landroid/media/midi/MidiDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string/jumbo v8, "android.media.midi.IMidiDeviceServer"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiDeviceInfo;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/media/midi/IMidiDeviceServer$Stub;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
