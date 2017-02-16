.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final TRANSACTION_UpdateEthDevInfo:I = 0xa

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_getEthernetServiceMessenger:I = 0xb

.field static final TRANSACTION_getSavedEthConfig:I = 0x9

.field static final TRANSACTION_getUserDisabled:I = 0x7

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_isEthConnected:I = 0x8

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_setConfiguration:I = 0x2

.field static final TRANSACTION_setUserDisabled:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IEthernetManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IEthernetManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IEthernetManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 47
    :sswitch_0
    const-string/jumbo v8, "android.net.IEthernetManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v9

    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConfiguration()Landroid/net/IpConfiguration;

    move-result-object v5

    .line 54
    .local v5, "_result":Landroid/net/IpConfiguration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {v5, p3, v9}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    return v9

    .line 60
    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v5    # "_result":Landroid/net/IpConfiguration;
    :sswitch_2
    const-string/jumbo v8, "android.net.IEthernetManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    sget-object v8, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    .line 74
    :goto_1
    invoke-virtual {p0, v2}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Landroid/net/IpConfiguration;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v9

    .line 72
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/net/IpConfiguration;
    goto :goto_1

    .line 80
    .end local v2    # "_arg0":Landroid/net/IpConfiguration;
    :sswitch_3
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isAvailable()Z

    move-result v7

    .line 82
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v9

    .line 88
    .end local v7    # "_result":Z
    :sswitch_4
    const-string/jumbo v8, "android.net.IEthernetManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v1

    .line 91
    .local v1, "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v1}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v9

    .line 97
    .end local v1    # "_arg0":Landroid/net/IEthernetServiceListener;
    :sswitch_5
    const-string/jumbo v8, "android.net.IEthernetManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v1

    .line 100
    .restart local v1    # "_arg0":Landroid/net/IEthernetServiceListener;
    invoke-virtual {p0, v1}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v9

    .line 106
    .end local v1    # "_arg0":Landroid/net/IEthernetServiceListener;
    :sswitch_6
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v3, v9

    .line 109
    .local v3, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v3}, Landroid/net/IEthernetManager$Stub;->setUserDisabled(Z)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v9

    .end local v3    # "_arg0":Z
    :cond_3
    move v3, v8

    .line 108
    goto :goto_2

    .line 115
    :sswitch_7
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getUserDisabled()Z

    move-result v7

    .line 117
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v7, :cond_4

    move v8, v9

    :cond_4
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v9

    .line 123
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isEthConnected()Z

    move-result v7

    .line 125
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return v9

    .line 131
    .end local v7    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getSavedEthConfig()Landroid/net/EthernetDevInfo;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/net/EthernetDevInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_6

    .line 135
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v4, p3, v9}, Landroid/net/EthernetDevInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_3
    return v9

    .line 139
    :cond_6
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 145
    .end local v4    # "_result":Landroid/net/EthernetDevInfo;
    :sswitch_a
    const-string/jumbo v8, "android.net.IEthernetManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_7

    .line 148
    sget-object v8, Landroid/net/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/EthernetDevInfo;

    .line 153
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->UpdateEthDevInfo(Landroid/net/EthernetDevInfo;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v9

    .line 151
    :cond_7
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/net/EthernetDevInfo;
    goto :goto_4

    .line 159
    .end local v0    # "_arg0":Landroid/net/EthernetDevInfo;
    :sswitch_b
    const-string/jumbo v10, "android.net.IEthernetManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getEthernetServiceMessenger()Landroid/os/Messenger;

    move-result-object v6

    .line 161
    .local v6, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v6, :cond_8

    .line 163
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v6, p3, v9}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    :goto_5
    return v9

    .line 167
    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 43
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
