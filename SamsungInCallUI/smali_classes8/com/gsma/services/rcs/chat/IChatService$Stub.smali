.class public abstract Lcom/gsma/services/rcs/chat/IChatService$Stub;
.super Landroid/os/Binder;
.source "IChatService.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IChatService"

.field static final TRANSACTION_addEventListener:I = 0x2

.field static final TRANSACTION_addGroupChatEventListener:I = 0x11

.field static final TRANSACTION_addOneToOneChatEventListener:I = 0x13

.field static final TRANSACTION_canInitiateGroupChat:I = 0x7

.field static final TRANSACTION_clearMessageDeliveryExpiration:I = 0x18

.field static final TRANSACTION_deleteGroupChat:I = 0xe

.field static final TRANSACTION_deleteGroupChats:I = 0xc

.field static final TRANSACTION_deleteMessage:I = 0xf

.field static final TRANSACTION_deleteOneToOneChat:I = 0xd

.field static final TRANSACTION_deleteOneToOneChats:I = 0xb

.field static final TRANSACTION_getChatMessage:I = 0x10

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getGroupChat:I = 0x9

.field static final TRANSACTION_getOneToOneChat:I = 0x5

.field static final TRANSACTION_getServiceVersion:I = 0x19

.field static final TRANSACTION_getUndeliveredMessages:I = 0x16

.field static final TRANSACTION_initiateGroupChat:I = 0x8

.field static final TRANSACTION_isAllowedToInitiateGroupChat:I = 0x6

.field static final TRANSACTION_isServiceRegistered:I = 0x1

.field static final TRANSACTION_markMessageAsRead:I = 0xa

.field static final TRANSACTION_markUndeliveredMessagesAsProcessed:I = 0x17

.field static final TRANSACTION_removeEventListener:I = 0x3

.field static final TRANSACTION_removeGroupChatEventListener:I = 0x12

.field static final TRANSACTION_removeOneToOneChatEventListener:I = 0x14

.field static final TRANSACTION_setRespondToDisplayReports:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.chat.IChatService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/chat/IChatService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    :sswitch_0
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isServiceRegistered()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getConfiguration()Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    move-object v6, v8

    goto :goto_1

    :sswitch_5
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/chat/IOneToOneChat;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/gsma/services/rcs/chat/IOneToOneChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_2
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_6
    const-string v8, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->isAllowedToInitiateGroupChat()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->canInitiateGroupChat(Lcom/gsma/services/rcs/contact/ContactId;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :sswitch_8
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->initiateGroupChat(Ljava/util/List;Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/gsma/services/rcs/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_7
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getGroupChat(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IGroupChat;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lcom/gsma/services/rcs/chat/IGroupChat;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markMessageAsRead(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChats()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChats()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_4
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteOneToOneChat(Lcom/gsma/services/rcs/contact/ContactId;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :sswitch_e
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteGroupChat(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->deleteMessage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getChatMessage(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/IChatMessage;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_a

    invoke-interface {v4}, Lcom/gsma/services/rcs/chat/IChatMessage;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_a
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/chat/IGroupChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IGroupChatListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeGroupChatEventListener(Lcom/gsma/services/rcs/chat/IGroupChatListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->addOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/gsma/services/rcs/chat/IOneToOneChatListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IOneToOneChatListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->removeOneToOneChatEventListener(Lcom/gsma/services/rcs/chat/IOneToOneChatListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_15
    const-string v8, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    :goto_5
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->setRespondToDisplayReports(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move v0, v6

    goto :goto_5

    :sswitch_16
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getUndeliveredMessages(Lcom/gsma/services/rcs/contact/ContactId;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :sswitch_17
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->markUndeliveredMessagesAsProcessed(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->clearMessageDeliveryExpiration(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "com.gsma.services.rcs.chat.IChatService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatService$Stub;->getServiceVersion()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
