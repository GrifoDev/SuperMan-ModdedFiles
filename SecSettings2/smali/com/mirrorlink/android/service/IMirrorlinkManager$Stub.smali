.class public abstract Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;
.super Landroid/os/Binder;
.source "IMirrorlinkManager.java"

# interfaces
.implements Lcom/mirrorlink/android/service/IMirrorlinkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mirrorlink/android/service/IMirrorlinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p0, p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mirrorlink/android/service/IMirrorlinkManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_2
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mirrorlink/android/service/IMirrorlinkListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_3
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getAllAppList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v6

    :sswitch_4
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocationCheck(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_5
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->performRevocation()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_6
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->getApplicationElements(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v6

    :cond_1
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->setDevMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_8
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    :cond_2
    invoke-virtual {p0, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->writeTerminalVersion(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_9
    const-string/jumbo v7, "com.mirrorlink.android.service.IMirrorlinkManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->readTerminalVersion()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    move v2, v6

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v6

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
