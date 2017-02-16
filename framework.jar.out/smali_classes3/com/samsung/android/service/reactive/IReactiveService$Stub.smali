.class public abstract Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.super Landroid/os/Binder;
.source "IReactiveService.java"

# interfaces
.implements Lcom/samsung/android/service/reactive/IReactiveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/reactive/IReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.reactive.IReactiveService"

.field static final TRANSACTION_getErrorCode:I = 0x9

.field static final TRANSACTION_getFlag:I = 0x2

.field static final TRANSACTION_getRandom:I = 0xb

.field static final TRANSACTION_getServiceSupport:I = 0x1

.field static final TRANSACTION_getString:I = 0x4

.field static final TRANSACTION_removeString:I = 0x6

.field static final TRANSACTION_sessionAccept:I = 0x7

.field static final TRANSACTION_sessionComplete:I = 0x8

.field static final TRANSACTION_setFlag:I = 0x3

.field static final TRANSACTION_setString:I = 0x5

.field static final TRANSACTION_verify:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;
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
    const-string/jumbo v1, "com.samsung.android.service.reactive.IReactiveService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/service/reactive/IReactiveService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    .line 46
    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v9

    .line 51
    :sswitch_1
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getServiceSupport()I

    move-result v5

    .line 53
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return v9

    .line 59
    .end local v5    # "_result":I
    :sswitch_2
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getFlag(I)I

    move-result v5

    .line 63
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return v9

    .line 69
    .end local v0    # "_arg0":I
    .end local v5    # "_result":I
    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v3, v4}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setFlag(IILjava/lang/String;)I

    move-result v5

    .line 77
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v9

    .line 83
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_4
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getString()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v9

    .line 91
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->setString(Ljava/lang/String;)I

    move-result v5

    .line 95
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v9

    .line 101
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_6
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->removeString()I

    move-result v5

    .line 103
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v9

    .line 109
    .end local v5    # "_result":I
    :sswitch_7
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 112
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionAccept([B)[B

    move-result-object v7

    .line 113
    .local v7, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 115
    return v9

    .line 119
    .end local v2    # "_arg0":[B
    .end local v7    # "_result":[B
    :sswitch_8
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 122
    .restart local v2    # "_arg0":[B
    invoke-virtual {p0, v2}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->sessionComplete([B)I

    move-result v5

    .line 123
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v9

    .line 129
    .end local v2    # "_arg0":[B
    .end local v5    # "_result":I
    :sswitch_9
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getErrorCode()I

    move-result v5

    .line 131
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v9

    .line 137
    .end local v5    # "_result":I
    :sswitch_a
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->verify(Ljava/lang/String;I)I

    move-result v5

    .line 143
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v9

    .line 149
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_b
    const-string/jumbo v8, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->getRandom()[B

    move-result-object v7

    .line 151
    .restart local v7    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 153
    return v9

    .line 42
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
