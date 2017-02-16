.class public abstract Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;
.super Landroid/os/Binder;
.source "ICodecSolutionManagerService.java"

# interfaces
.implements Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.codecsolution.ICodecSolutionManagerService"

.field static final TRANSACTION_debug:I = 0x9

.field static final TRANSACTION_getSmartFittingMode:I = 0x8

.field static final TRANSACTION_setMhdrEnable:I = 0x3

.field static final TRANSACTION_setMhdrMetaData:I = 0x4

.field static final TRANSACTION_setSmartFittingMode:I = 0x7

.field static final TRANSACTION_startMhdrService:I = 0x1

.field static final TRANSACTION_startSmartFittingService:I = 0x5

.field static final TRANSACTION_stopMhdrService:I = 0x2

.field static final TRANSACTION_stopSmartFittingService:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;
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
    const-string/jumbo v1, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->startMhdrService(ILjava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v7

    .line 59
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->stopMhdrService()V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v7

    .line 66
    :sswitch_3
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setMhdrEnable(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v7

    .line 75
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 81
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 84
    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setMhdrMetaData(IIII)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v7

    .line 90
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->startSmartFittingService(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v7

    .line 99
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->stopSmartFittingService()V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v7

    .line 106
    :sswitch_7
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->setSmartFittingMode(I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v7

    .line 115
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->getSmartFittingMode()I

    move-result v5

    .line 117
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v7

    .line 123
    .end local v5    # "_result":I
    :sswitch_9
    const-string/jumbo v6, "com.samsung.android.codecsolution.ICodecSolutionManagerService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/codecsolution/ICodecSolutionManagerService$Stub;->debug()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    return v7

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
