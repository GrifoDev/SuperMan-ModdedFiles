.class public abstract Lcom/samsung/android/smartface/ISmartFaceService$Stub;
.super Landroid/os/Binder;
.source "ISmartFaceService.java"

# interfaces
.implements Lcom/samsung/android/smartface/ISmartFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/ISmartFaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.smartface.ISmartFaceService"

.field static final TRANSACTION_getSupportedServices:I = 0x6

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_registerAsync:I = 0x3

.field static final TRANSACTION_setValue:I = 0x5

.field static final TRANSACTION_unregister:I = 0x2

.field static final TRANSACTION_unregisterAsync:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;
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
    const-string/jumbo v1, "com.samsung.android.smartface.ISmartFaceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/smartface/ISmartFaceService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z

    move-result v5

    .line 54
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v5, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return v7

    .line 55
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 60
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v7

    .line 69
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :sswitch_3
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V

    .line 75
    return v7

    .line 79
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v1    # "_arg1":I
    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V

    .line 83
    return v7

    .line 87
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceClient;

    move-result-object v0

    .line 91
    .restart local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v7

    .line 100
    .end local v0    # "_arg0":Lcom/samsung/android/smartface/ISmartFaceClient;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.samsung.android.smartface.ISmartFaceService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->getSupportedServices()I

    move-result v4

    .line 102
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
