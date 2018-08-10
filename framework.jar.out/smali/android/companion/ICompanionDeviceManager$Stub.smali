.class public abstract Landroid/companion/ICompanionDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceManager.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceManager"

.field static final TRANSACTION_associate:I = 0x1

.field static final TRANSACTION_disassociate:I = 0x4

.field static final TRANSACTION_getAssociations:I = 0x3

.field static final TRANSACTION_hasNotificationAccess:I = 0x5

.field static final TRANSACTION_requestNotificationAccess:I = 0x6

.field static final TRANSACTION_stopScan:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.companion.ICompanionDeviceManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/companion/ICompanionDeviceManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/companion/ICompanionDeviceManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationRequest;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/companion/IFindDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IFindDeviceCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v4, v6}, Landroid/companion/ICompanionDeviceManager$Stub;->associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationRequest;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/companion/IFindDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IFindDeviceCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v4, v6}, Landroid/companion/ICompanionDeviceManager$Stub;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/companion/ICompanionDeviceManager$Stub;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v10, 0x1

    return v10

    :sswitch_4
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Landroid/companion/ICompanionDeviceManager$Stub;->disassociate(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_5
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_2
    invoke-virtual {p0, v1}, Landroid/companion/ICompanionDeviceManager$Stub;->hasNotificationAccess(Landroid/content/ComponentName;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :sswitch_6
    const-string/jumbo v10, "android.companion.ICompanionDeviceManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_4
    invoke-virtual {p0, v1}, Landroid/companion/ICompanionDeviceManager$Stub;->requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v10, 0x1

    return v10

    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

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
