.class public abstract Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;
.super Landroid/os/Binder;
.source "IImageSharingService.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/image/IImageSharingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/image/IImageSharingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.sharing.image.IImageSharingService"

.field static final TRANSACTION_addEventListener:I = 0x9

.field static final TRANSACTION_addServiceRegistrationListener:I = 0x2

.field static final TRANSACTION_deleteAllImageSharings:I = 0xb

.field static final TRANSACTION_deleteImageSharing:I = 0xd

.field static final TRANSACTION_deleteImageSharings:I = 0xc

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getImageSharing:I = 0x7

.field static final TRANSACTION_getImageSharings:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0xa

.field static final TRANSACTION_removeServiceRegistrationListener:I = 0x3

.field static final TRANSACTION_shareImage:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->isServiceRegistered()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->addServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->removeServiceRegistrationListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getServiceVersion()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v6, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getImageSharings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_7
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_2
    move-object v4, v6

    goto :goto_1

    :sswitch_8
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/image/IImageSharing;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_9
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteAllImageSharings()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_d
    const-string v4, "com.gsma.services.rcs.sharing.image.IImageSharingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService$Stub;->deleteImageSharing(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
