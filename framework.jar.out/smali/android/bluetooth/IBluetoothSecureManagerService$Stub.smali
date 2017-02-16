.class public abstract Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSecureManagerService.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSecureManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSecureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSecureManagerService"

.field static final TRANSACTION_addWhiteList:I = 0x7

.field static final TRANSACTION_enableSecureMode:I = 0x1

.field static final TRANSACTION_enableWhiteList:I = 0x5

.field static final TRANSACTION_getSecureModeSetting:I = 0x3

.field static final TRANSACTION_getWhiteListCod:I = 0xc

.field static final TRANSACTION_getWhiteListFirstIndex:I = 0x9

.field static final TRANSACTION_getWhiteListName:I = 0xb

.field static final TRANSACTION_getWhiteListNextIndex:I = 0xa

.field static final TRANSACTION_getWhiteListUuids:I = 0xd

.field static final TRANSACTION_isSecureModeEnabled:I = 0x2

.field static final TRANSACTION_isWhiteListEnabled:I = 0x6

.field static final TRANSACTION_removeWhiteList:I = 0x8

.field static final TRANSACTION_setSecureModeSetting:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothSecureManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 47
    :sswitch_0
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v9, 0x1

    return v9

    .line 52
    :sswitch_1
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    .line 55
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableSecureMode(Z)Z

    move-result v7

    .line 56
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v7, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v9, 0x1

    return v9

    .line 54
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 57
    .restart local v2    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 62
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isSecureModeEnabled()Z

    move-result v7

    .line 64
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v7, :cond_2

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v9, 0x1

    return v9

    .line 65
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 70
    .end local v7    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v5

    .line 74
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v9, 0x1

    return v9

    .line 80
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_4
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 85
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v7

    .line 86
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v7, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v9, 0x1

    return v9

    .line 87
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 92
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_5
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    .line 95
    .restart local v2    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->enableWhiteList(Z)Z

    move-result v7

    .line 96
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v7, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v9, 0x1

    return v9

    .line 94
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 97
    .restart local v2    # "_arg0":Z
    .restart local v7    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 102
    .end local v2    # "_arg0":Z
    .end local v7    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->isWhiteListEnabled()Z

    move-result v7

    .line 104
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v7, :cond_6

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v9, 0x1

    return v9

    .line 105
    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    .line 110
    .end local v7    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v7

    .line 118
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v7, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v9, 0x1

    return v9

    .line 119
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Ljava/lang/String;
    .end local v7    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v7

    .line 130
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v7, :cond_8

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v9, 0x1

    return v9

    .line 131
    :cond_8
    const/4 v9, 0x0

    goto :goto_8

    .line 136
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListFirstIndex()I

    move-result v5

    .line 138
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v9, 0x1

    return v9

    .line 144
    .end local v5    # "_result":I
    :sswitch_a
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 147
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListNextIndex(I)I

    move-result v5

    .line 148
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v9, 0x1

    return v9

    .line 154
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_b
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    const/4 v9, 0x1

    return v9

    .line 164
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListCod(I)I

    move-result v5

    .line 168
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v9, 0x1

    return v9

    .line 174
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_d
    const-string/jumbo v9, "android.bluetooth.IBluetoothSecureManagerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 180
    const/4 v9, 0x1

    return v9

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
