.class public abstract Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IFileTransferServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

.field static final TRANSACTION_getImageResizeOption:I = 0xa

.field static final TRANSACTION_getMaxAudioMessageLength:I = 0x3

.field static final TRANSACTION_getMaxFileTransfers:I = 0x9

.field static final TRANSACTION_getMaxSize:I = 0x2

.field static final TRANSACTION_getWarnSize:I = 0x1

.field static final TRANSACTION_isAutoAcceptEnabled:I = 0x4

.field static final TRANSACTION_isAutoAcceptInRoamingEnabled:I = 0x6

.field static final TRANSACTION_isAutoAcceptModeChangeable:I = 0x8

.field static final TRANSACTION_isGroupFileTransferSupported:I = 0xc

.field static final TRANSACTION_setAutoAccept:I = 0x5

.field static final TRANSACTION_setAutoAcceptInRoaming:I = 0x7

.field static final TRANSACTION_setImageResizeOption:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getWarnSize()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxSize()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxAudioMessageLength()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :sswitch_4
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAccept(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptInRoamingEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v1, v4

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setAutoAcceptInRoaming(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :sswitch_8
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isAutoAcceptModeChangeable()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getMaxFileTransfers()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->getImageResizeOption()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->setImageResizeOption(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "com.gsma.services.rcs.filetransfer.IFileTransferServiceConfiguration"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;->isGroupFileTransferSupported()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
