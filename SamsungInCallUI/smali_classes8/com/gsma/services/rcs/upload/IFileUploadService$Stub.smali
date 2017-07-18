.class public abstract Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;
.super Landroid/os/Binder;
.source "IFileUploadService.java"

# interfaces
.implements Lcom/gsma/services/rcs/upload/IFileUploadService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/upload/IFileUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.upload.IFileUploadService"

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addFileUploadEventListener:I = 0xa

.field static final TRANSACTION_canUploadFile:I = 0x6

.field static final TRANSACTION_getConfiguration:I = 0x5

.field static final TRANSACTION_getFileUpload:I = 0x8

.field static final TRANSACTION_getFileUploads:I = 0x7

.field static final TRANSACTION_getServiceVersion:I = 0x4

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeFileUploadEventListener:I = 0xb

.field static final TRANSACTION_uploadFile:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
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

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->isServiceRegistered()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getServiceVersion()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v6, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v6, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->canUploadFile()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUploads()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/gsma/services/rcs/upload/IFileUpload;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_3
    move-object v4, v6

    goto :goto_1

    :sswitch_9
    const-string v7, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    move v1, v5

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/gsma/services/rcs/upload/IFileUpload;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3

    :sswitch_a
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "com.gsma.services.rcs.upload.IFileUploadService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/gsma/services/rcs/upload/IFileUploadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;->removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
