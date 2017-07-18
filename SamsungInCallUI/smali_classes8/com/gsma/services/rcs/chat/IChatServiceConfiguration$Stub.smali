.class public abstract Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.super Landroid/os/Binder;
.source "IChatServiceConfiguration.java"

# interfaces
.implements Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.gsma.services.rcs.chat.IChatServiceConfiguration"

.field static final TRANSACTION_getChatTimeout:I = 0x3

.field static final TRANSACTION_getGeolocExpirationTime:I = 0xe

.field static final TRANSACTION_getGeolocLabelMaxLength:I = 0xd

.field static final TRANSACTION_getGroupChatMaxParticipants:I = 0x4

.field static final TRANSACTION_getGroupChatMessageMaxLength:I = 0x7

.field static final TRANSACTION_getGroupChatMinParticipants:I = 0x5

.field static final TRANSACTION_getGroupChatSubjectMaxLength:I = 0x8

.field static final TRANSACTION_getIsComposingTimeout:I = 0xc

.field static final TRANSACTION_getOneToOneChatMessageMaxLength:I = 0x6

.field static final TRANSACTION_isChatSf:I = 0x1

.field static final TRANSACTION_isChatWarnSF:I = 0x2

.field static final TRANSACTION_isGroupChatSupported:I = 0xf

.field static final TRANSACTION_isRespondToDisplayReportsEnabled:I = 0xa

.field static final TRANSACTION_isSmsFallback:I = 0x9

.field static final TRANSACTION_setRespondToDisplayReports:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatSf()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isChatWarnSF()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getChatTimeout()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMaxParticipants()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMinParticipants()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getOneToOneChatMessageMaxLength()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatMessageMaxLength()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_8
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGroupChatSubjectMaxLength()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isSmsFallback()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isRespondToDisplayReportsEnabled()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->setRespondToDisplayReports(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_c
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getIsComposingTimeout()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocLabelMaxLength()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->getGeolocExpirationTime()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "com.gsma.services.rcs.chat.IChatServiceConfiguration"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;->isGroupChatSupported()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
