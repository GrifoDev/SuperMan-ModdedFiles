.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IFileTransferService.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IFileTransferService"

.field static final TRANSACTION_addEventListener:I = 0x3

.field static final TRANSACTION_addGroupFileTransferListener:I = 0x10

.field static final TRANSACTION_addOneToOneFileTransferListener:I = 0xe

.field static final TRANSACTION_canTransferFileToGroupChat:I = 0xb

.field static final TRANSACTION_clearFileTransferDeliveryExpiration:I = 0x1c

.field static final TRANSACTION_deleteFileTransfer:I = 0x16

.field static final TRANSACTION_deleteGroupFileTransfers:I = 0x13

.field static final TRANSACTION_deleteGroupFileTransfersByChatId:I = 0x15

.field static final TRANSACTION_deleteOneToOneFileTransfers:I = 0x12

.field static final TRANSACTION_deleteOneToOneFileTransfersByContactId:I = 0x14

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileTransfer:I = 0x7

.field static final TRANSACTION_getFileTransfers:I = 0x6

.field static final TRANSACTION_getServiceVersion:I = 0x2

.field static final TRANSACTION_getUndeliveredFileTransfers:I = 0x1a

.field static final TRANSACTION_isAllowedToTransferFile:I = 0x1d

.field static final TRANSACTION_isAllowedTotransferFile:I = 0xa

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markFileTransferAsRead:I = 0xd

.field static final TRANSACTION_markUndeliveredFileTransfersAsProcessed:I = 0x1b

.field static final TRANSACTION_removeEventListener:I = 0x4

.field static final TRANSACTION_removeGroupFileTransferListener:I = 0x11

.field static final TRANSACTION_removeOneToOneFileTransferListener:I = 0xf

.field static final TRANSACTION_setAutoAccept:I = 0x17

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x18

.field static final TRANSACTION_setImageResizeOption:I = 0x19

.field static final TRANSACTION_transferAudioMessage:I = 0x9

.field static final TRANSACTION_transferFile:I = 0x8

.field static final TRANSACTION_transferFileToGroupChat:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
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

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isServiceRegistered()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getServiceVersion()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getConfiguration()Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    move-object v7, v9

    goto :goto_1

    :sswitch_6
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_7
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getFileTransfer(Ljava/lang/String;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v10, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v3, v8

    :goto_4
    invoke-virtual {p0, v0, v2, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFile(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    move v3, v7

    goto :goto_4

    :sswitch_9
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferAudioMessage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :sswitch_a
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedTotransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :sswitch_b
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->canTransferFileToGroupChat(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v10, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_f

    move v3, v8

    :goto_9
    invoke-virtual {p0, v0, v2, v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->transferFileToGroupChat(Ljava/lang/String;Landroid/net/Uri;Z)Lcom/gsma/services/rcs/filetransfer/IFileTransfer;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_d

    invoke-interface {v4}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    :cond_d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    :cond_f
    move v3, v7

    goto :goto_9

    :sswitch_d
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markFileTransferAsRead(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeOneToOneFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IOneToOneFileTransferListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->addGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_11
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->removeGroupFileTransferListener(Lcom/gsma/services/rcs/filetransfer/IGroupFileTransferListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfers()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfers()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_a
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteOneToOneFileTransfersByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_15
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteGroupFileTransfersByChatId(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->deleteFileTransfer(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11

    move v0, v8

    :goto_b
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAccept(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_11
    move v0, v7

    goto :goto_b

    :sswitch_18
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    move v0, v8

    :goto_c
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setAutoAcceptInRoaming(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_12
    move v0, v7

    goto :goto_c

    :sswitch_19
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->setImageResizeOption(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1a
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    sget-object v7, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_d
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->getUndeliveredFileTransfers(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    :sswitch_1b
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->markUndeliveredFileTransfersAsProcessed(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v7, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->clearFileTransferDeliveryExpiration(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v9, "com.gsma.services.rcs.filetransfer.IFileTransferService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    sget-object v9, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_e
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferService$Stub;->isAllowedToTransferFile(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_14

    move v7, v8

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
