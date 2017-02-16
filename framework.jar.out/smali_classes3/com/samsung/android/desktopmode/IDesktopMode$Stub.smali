.class public abstract Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "IDesktopMode.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopMode"

.field static final TRANSACTION_isDefaultDisplayBlocked:I = 0x5

.field static final TRANSACTION_isDesktopDockConnected:I = 0x1

.field static final TRANSACTION_isDesktopMode:I = 0x2

.field static final TRANSACTION_isExternalDisplayConnected:I = 0x7

.field static final TRANSACTION_isModeChangePending:I = 0x6

.field static final TRANSACTION_onConfigurationChanged:I = 0xd

.field static final TRANSACTION_readDataFromDock:I = 0x9

.field static final TRANSACTION_registerStateCallback:I = 0xa

.field static final TRANSACTION_setDefaultDisplayOn:I = 0x4

.field static final TRANSACTION_setDefaultDisplayPowerMode:I = 0xc

.field static final TRANSACTION_setTouchScreenOn:I = 0x3

.field static final TRANSACTION_unregisterStateCallback:I = 0xb

.field static final TRANSACTION_writeDataToDock:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopMode;
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
    const-string/jumbo v1, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 43
    :sswitch_0
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v8

    .line 48
    :sswitch_1
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopDockConnected()Z

    move-result v6

    .line 50
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v6, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v8

    .line 56
    .end local v6    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopMode()Z

    move-result v6

    .line 58
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v6, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v8

    .line 64
    .end local v6    # "_result":Z
    :sswitch_3
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    .line 68
    .local v3, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v8

    .line 66
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_0

    .line 75
    .end local v3    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    .line 79
    .restart local v3    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 80
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setDefaultDisplayOn(ZLjava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v8

    .line 77
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_1

    .line 86
    .end local v3    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDefaultDisplayBlocked()Z

    move-result v6

    .line 88
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v6, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v8

    .line 94
    .end local v6    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isModeChangePending()Z

    move-result v6

    .line 96
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v6, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v8

    .line 102
    .end local v6    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isExternalDisplayConnected()Z

    move-result v6

    .line 104
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v6, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v8

    .line 110
    .end local v6    # "_result":Z
    :sswitch_8
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->writeDataToDock(I)Z

    move-result v6

    .line 114
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v6, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v8

    .line 120
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_9
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->readDataFromDock()B

    move-result v5

    .line 122
    .local v5, "_result":B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    return v8

    .line 128
    .end local v5    # "_result":B
    :sswitch_a
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    move-result-object v2

    .line 131
    .local v2, "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    move-result v6

    .line 132
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v6, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v8

    .line 138
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    .end local v6    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/desktopmode/IDesktopModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeCallback;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterStateCallback(Lcom/samsung/android/desktopmode/IDesktopModeCallback;)Z

    move-result v6

    .line 142
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v6, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v8

    .line 148
    .end local v2    # "_arg0":Lcom/samsung/android/desktopmode/IDesktopModeCallback;
    .end local v6    # "_result":Z
    :sswitch_c
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setDefaultDisplayPowerMode(I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v8

    .line 157
    .end local v0    # "_arg0":I
    :sswitch_d
    const-string/jumbo v7, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    .line 160
    sget-object v7, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 165
    :goto_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    return v8

    .line 163
    :cond_a
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/content/res/Configuration;
    goto :goto_2

    .line 39
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
