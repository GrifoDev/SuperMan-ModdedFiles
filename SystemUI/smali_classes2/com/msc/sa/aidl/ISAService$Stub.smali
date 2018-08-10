.class public abstract Lcom/msc/sa/aidl/ISAService$Stub;
.super Landroid/os/Binder;
.source "ISAService.java"

# interfaces
.implements Lcom/msc/sa/aidl/ISAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msc/sa/aidl/ISAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msc/sa/aidl/ISAService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p0, p0, v0}, Lcom/msc/sa/aidl/ISAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.msc.sa.aidl.ISAService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/msc/sa/aidl/ISAService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/msc/sa/aidl/ISAService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/msc/sa/aidl/ISACallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISACallback;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/msc/sa/aidl/ISAService$Stub;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_2
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/msc/sa/aidl/ISAService$Stub;->unregisterCallback(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_0

    move v8, v9

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :sswitch_3
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_0
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestChecklistValidation(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestDisclaimerAgreement(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :sswitch_6
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_3
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestAuthCode(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_7

    move v8, v9

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_7
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_4
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestSCloudAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :sswitch_8
    const-string/jumbo v10, "com.msc.sa.aidl.ISAService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c

    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/msc/sa/aidl/ISAService$Stub;->requestPasswordConfirmation(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_b

    move v8, v9

    :cond_b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
