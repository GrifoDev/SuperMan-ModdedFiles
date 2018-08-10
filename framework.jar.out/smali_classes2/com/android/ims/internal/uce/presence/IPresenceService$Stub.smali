.class public abstract Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.presence.IPresenceService"

.field static final TRANSACTION_addListener:I = 0x2

.field static final TRANSACTION_getContactCap:I = 0x6

.field static final TRANSACTION_getContactListCap:I = 0x7

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_publishMyCap:I = 0x5

.field static final TRANSACTION_reenableService:I = 0x4

.field static final TRANSACTION_removeListener:I = 0x3

.field static final TRANSACTION_setNewFeatureTag:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.presence.IPresenceService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/ims/internal/uce/presence/IPresenceService;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_0
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_0

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_1
    invoke-virtual {p0, v1, v4, v9}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->addListener(ILcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    if-eqz v9, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v13, 0x1

    return v13

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_3
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/UceLong;

    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_5

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v13, 0x1

    return v13

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_4
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->reenableService(II)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v13, 0x1

    return v13

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_5
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lcom/android/ims/internal/uce/presence/PresCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/internal/uce/presence/PresCapInfo;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v5, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->publishMyCap(ILcom/android/ims/internal/uce/presence/PresCapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_8

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v13, 0x1

    return v13

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_6
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v6, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_9

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v13, 0x1

    return v13

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_7
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_a

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v13, 0x1

    return v13

    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_8
    const-string/jumbo v13, "com.android.ims.internal.uce.presence.IPresenceService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_b

    sget-object v13, Lcom/android/ims/internal/uce/presence/PresServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/internal/uce/presence/PresServiceInfo;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {p0, v1, v6, v10, v11}, Lcom/android/ims/internal/uce/presence/IPresenceService$Stub;->setNewFeatureTag(ILjava/lang/String;Lcom/android/ims/internal/uce/presence/PresServiceInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_c

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lcom/android/ims/internal/uce/common/StatusCode;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/4 v13, 0x1

    return v13

    :cond_b
    const/4 v10, 0x0

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
