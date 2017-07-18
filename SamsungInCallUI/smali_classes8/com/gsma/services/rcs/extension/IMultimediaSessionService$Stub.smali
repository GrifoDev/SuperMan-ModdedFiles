.class public abstract Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;
.super Landroid/os/Binder;
.source "IMultimediaSessionService.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.extension.IMultimediaSessionService"

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addEventListener2:I = 0xb

.field static final TRANSACTION_addEventListener3:I = 0xd

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getMessagingSession:I = 0x6

.field static final TRANSACTION_getMessagingSessions:I = 0x5

.field static final TRANSACTION_getStreamingSession:I = 0x9

.field static final TRANSACTION_getStreamingSessions:I = 0x8

.field static final TRANSACTION_initiateMessagingSession:I = 0x7

.field static final TRANSACTION_initiateStreamingSession:I = 0xa

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeEventListener2:I = 0xc

.field static final TRANSACTION_removeEventListener3:I = 0xe

.field static final TRANSACTION_sendInstantMultimediaMessage:I = 0xf

.field static final TRANSACTION_setInactivityTimeout:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaSessionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    :sswitch_0
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->isServiceRegistered()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_0

    move v7, v8

    :goto_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :sswitch_2
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v9, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :sswitch_5
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getMessagingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_6
    const-string v9, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v9, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_8
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getStreamingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_b
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :sswitch_10
    const-string v7, "com.gsma.services.rcs.extension.IMultimediaSessionService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Stub;->setInactivityTimeout(J)V

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
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
