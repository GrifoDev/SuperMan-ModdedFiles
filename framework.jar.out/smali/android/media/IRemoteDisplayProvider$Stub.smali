.class public abstract Landroid/media/IRemoteDisplayProvider$Stub;
.super Landroid/os/Binder;
.source "IRemoteDisplayProvider.java"

# interfaces
.implements Landroid/media/IRemoteDisplayProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteDisplayProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteDisplayProvider"

.field static final TRANSACTION_adjustVolume:I = 0x6

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setDiscoveryMode:I = 0x2

.field static final TRANSACTION_setVolume:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.IRemoteDisplayProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRemoteDisplayProvider;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IRemoteDisplayProvider;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRemoteDisplayProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRemoteDisplayProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v5, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IRemoteDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayCallback;

    move-result-object v1

    .line 53
    .local v1, "_arg0":Landroid/media/IRemoteDisplayCallback;
    invoke-virtual {p0, v1}, Landroid/media/IRemoteDisplayProvider$Stub;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 54
    return v5

    .line 58
    .end local v1    # "_arg0":Landroid/media/IRemoteDisplayCallback;
    :sswitch_2
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IRemoteDisplayProvider$Stub;->setDiscoveryMode(I)V

    .line 62
    return v5

    .line 66
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->connect(Ljava/lang/String;)V

    .line 70
    return v5

    .line 74
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/media/IRemoteDisplayProvider$Stub;->disconnect(Ljava/lang/String;)V

    .line 78
    return v5

    .line 82
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteDisplayProvider$Stub;->setVolume(Ljava/lang/String;I)V

    .line 88
    return v5

    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.media.IRemoteDisplayProvider"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/media/IRemoteDisplayProvider$Stub;->adjustVolume(Ljava/lang/String;I)V

    .line 98
    return v5

    .line 41
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
