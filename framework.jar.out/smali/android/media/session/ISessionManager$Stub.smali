.class public abstract Landroid/media/session/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionManager"

.field static final TRANSACTION_addSessionsListener:I = 0x6

.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_dispatchAdjustVolume:I = 0x5

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x3

.field static final TRANSACTION_dispatchVolumeKeyEvent:I = 0x4

.field static final TRANSACTION_getSessions:I = 0x2

.field static final TRANSACTION_isGlobalPriorityActive:I = 0x9

.field static final TRANSACTION_removeSessionsListener:I = 0x7

.field static final TRANSACTION_setCallback:I = 0xa

.field static final TRANSACTION_setOnMediaKeyListener:I = 0xc

.field static final TRANSACTION_setOnVolumeKeyLongPressListener:I = 0xb

.field static final TRANSACTION_setRemoteVolumeController:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISessionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/session/ISessionManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/session/ISessionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v23

    return v23

    :sswitch_0
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v23, 0x1

    return v23

    :sswitch_1
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/media/session/ISessionManager$Stub;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/media/session/ISession;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v23, 0x1

    return v23

    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_1

    sget-object v23, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/media/session/ISessionManager$Stub;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    const/16 v23, 0x1

    return v23

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_2

    sget-object v23, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_3

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_4

    sget-object v23, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_5

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v12, v1}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    :sswitch_5
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v12, v1}, Landroid/media/session/ISessionManager$Stub;->dispatchAdjustVolume(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_6
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    if-eqz v23, :cond_6

    sget-object v23, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v13, v1}, Landroid/media/session/ISessionManager$Stub;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/session/ISessionManager$Stub;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_8
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/IRemoteVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeController;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISessionManager$Stub;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_9
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionManager$Stub;->isGlobalPriorityActive()Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_7

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v23, 0x1

    return v23

    :cond_7
    const/16 v23, 0x0

    goto :goto_7

    :sswitch_a
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ICallback;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/session/ISessionManager$Stub;->setCallback(Landroid/media/session/ICallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_b
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/media/session/ISessionManager$Stub;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

    :sswitch_c
    const-string/jumbo v23, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/session/IOnMediaKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionManager$Stub;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v23, 0x1

    return v23

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
