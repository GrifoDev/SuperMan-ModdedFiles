.class public abstract Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;
.super Landroid/os/Binder;
.source "IContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextAwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/IContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.contextaware.manager.IContextAwareService"

.field static final TRANSACTION_getContextInfo:I = 0x8

.field static final TRANSACTION_getVersion:I = 0xf

.field static final TRANSACTION_initializeAutoTest:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_registerWatcher:I = 0x3

.field static final TRANSACTION_resetCAService:I = 0x5

.field static final TRANSACTION_setCALogger:I = 0x7

.field static final TRANSACTION_setCAProperty:I = 0x6

.field static final TRANSACTION_setScenarioForDebugging:I = 0xd

.field static final TRANSACTION_setScenarioForTest:I = 0xc

.field static final TRANSACTION_setVersion:I = 0xe

.field static final TRANSACTION_startAutoTest:I = 0xa

.field static final TRANSACTION_stopAutoTest:I = 0xb

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unregisterWatcher:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/contextaware/manager/IContextAwareService;
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
    const-string/jumbo v1, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/contextaware/manager/IContextAwareService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/contextaware/manager/IContextAwareService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 214
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 46
    :sswitch_0
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v11, 0x1

    return v11

    .line 51
    :sswitch_1
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 55
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->registerCallback(Landroid/os/IBinder;I)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v11, 0x1

    return v11

    .line 62
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_2
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 66
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v10

    .line 68
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v10, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v11, 0x1

    return v11

    .line 69
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 74
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 78
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->registerWatcher(Landroid/os/IBinder;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v11, 0x1

    return v11

    .line 85
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_4
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 89
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 90
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->unregisterWatcher(Landroid/os/IBinder;I)Z

    move-result v10

    .line 91
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v10, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v11, 0x1

    return v11

    .line 92
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 97
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_5
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->resetCAService(I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v11, 0x1

    return v11

    .line 106
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 113
    sget-object v11, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 118
    :goto_2
    invoke-virtual {p0, v0, v3, v6}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z

    move-result v10

    .line 119
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v10, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v11, 0x1

    return v11

    .line 116
    .end local v10    # "_result":Z
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    goto :goto_2

    .line 120
    .end local v6    # "_arg2":Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 125
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_7
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v2, 0x1

    .line 129
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    .line 131
    .local v4, "_arg1":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 133
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x1

    .line 134
    .local v8, "_arg3":Z
    :goto_6
    invoke-virtual {p0, v2, v4, v5, v8}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setCALogger(ZZIZ)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v11, 0x1

    return v11

    .line 127
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    .end local v8    # "_arg3":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_4

    .line 129
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Z
    goto :goto_5

    .line 133
    .restart local v5    # "_arg2":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    .line 140
    .end local v2    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg2":I
    :sswitch_8
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->getContextInfo(Landroid/os/IBinder;I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v11, 0x1

    return v11

    .line 151
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :sswitch_9
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->initializeAutoTest()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v11, 0x1

    return v11

    .line 158
    :sswitch_a
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->startAutoTest()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/4 v11, 0x1

    return v11

    .line 165
    :sswitch_b
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->stopAutoTest()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v11, 0x1

    return v11

    .line 172
    :sswitch_c
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setScenarioForTest(II)Z

    move-result v10

    .line 178
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v10, :cond_7

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v11, 0x1

    return v11

    .line 179
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    .line 184
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_d
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 190
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 191
    .local v7, "_arg2":[B
    invoke-virtual {p0, v0, v3, v7}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setScenarioForDebugging(II[B)Z

    move-result v10

    .line 192
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v10, :cond_8

    const/4 v11, 0x1

    :goto_8
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v11, 0x1

    return v11

    .line 193
    :cond_8
    const/4 v11, 0x0

    goto :goto_8

    .line 198
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":[B
    .end local v10    # "_result":Z
    :sswitch_e
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->setVersion(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v11, 0x1

    return v11

    .line 207
    .end local v0    # "_arg0":I
    :sswitch_f
    const-string/jumbo v11, "com.samsung.android.contextaware.manager.IContextAwareService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/IContextAwareService$Stub;->getVersion()I

    move-result v9

    .line 209
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v11, 0x1

    return v11

    .line 42
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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
