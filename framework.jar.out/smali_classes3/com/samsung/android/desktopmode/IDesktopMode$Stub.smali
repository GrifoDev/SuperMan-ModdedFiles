.class public abstract Lcom/samsung/android/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "IDesktopMode.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/IDesktopMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/IDesktopMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IDesktopMode"

.field static final TRANSACTION_commandDesktopModeService:I = 0x1a

.field static final TRANSACTION_getDesktopModeKillPolicy:I = 0xe

.field static final TRANSACTION_getDesktopModeState:I = 0x3

.field static final TRANSACTION_getLaunchPolicyForPackage:I = 0xc

.field static final TRANSACTION_getLaunchPolicyRunnable:I = 0xd

.field static final TRANSACTION_isAllowed:I = 0xb

.field static final TRANSACTION_isDefaultDisplayBlocked:I = 0x14

.field static final TRANSACTION_isDesktopDockConnected:I = 0x1

.field static final TRANSACTION_isDesktopDockConnectedOrForced:I = 0xa

.field static final TRANSACTION_isDesktopMode:I = 0x2

.field static final TRANSACTION_isDesktopModeAvailable:I = 0xf

.field static final TRANSACTION_isDesktopModeAvailableEx:I = 0x10

.field static final TRANSACTION_isDesktopModeEnablingOrEnabled:I = 0x11

.field static final TRANSACTION_isDesktopModeForPreparing:I = 0x12

.field static final TRANSACTION_isDesktopModeLoadingScreenShowing:I = 0x13

.field static final TRANSACTION_isExternalDisplayConnected:I = 0x16

.field static final TRANSACTION_isForcedInternalScreenModeEnabled:I = 0x17

.field static final TRANSACTION_isModeChangePending:I = 0x15

.field static final TRANSACTION_registerBlocker:I = 0x6

.field static final TRANSACTION_registerDesktopLauncher:I = 0x19

.field static final TRANSACTION_registerDesktopModeListener:I = 0x5

.field static final TRANSACTION_registerEventListener:I = 0x4

.field static final TRANSACTION_setHdmiSettings:I = 0x18

.field static final TRANSACTION_unregisterBlocker:I = 0x9

.field static final TRANSACTION_unregisterDesktopModeListener:I = 0x8

.field static final TRANSACTION_unregisterEventListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopMode;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.desktopmode.IDesktopMode"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/desktopmode/IDesktopMode;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    :sswitch_0
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v17, 0x1

    return v17

    :sswitch_1
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopDockConnected()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_0

    const/16 v17, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopMode()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v17, 0x1

    return v17

    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_4
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IEventListener;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerEventListener(Lcom/samsung/android/desktopmode/IEventListener;Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_3

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    :sswitch_5
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeListener;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_4

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_4
    const/16 v17, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_5

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    :sswitch_7
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IEventListener;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterEventListener(Lcom/samsung/android/desktopmode/IEventListener;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_6

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_6
    const/16 v17, 0x0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IDesktopModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterDesktopModeListener(Lcom/samsung/android/desktopmode/IDesktopModeListener;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7

    const/16 v17, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    :sswitch_9
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->unregisterBlocker(Lcom/samsung/android/desktopmode/IDesktopModeBlocker;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_8

    const/16 v17, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    :sswitch_a
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopDockConnectedOrForced()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_9

    const/16 v17, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_9
    const/16 v17, 0x0

    goto :goto_9

    :sswitch_b
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_a

    const/4 v8, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_b

    const/4 v12, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isAllowed(ZZ)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_c

    const/16 v17, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_a
    const/4 v8, 0x0

    goto :goto_a

    :cond_b
    const/4 v12, 0x0

    goto :goto_b

    :cond_c
    const/16 v17, 0x0

    goto :goto_c

    :sswitch_c
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_d

    sget-object v17, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_e

    sget-object v17, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ActivityInfo;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    :cond_e
    const/4 v10, 0x0

    goto :goto_e

    :sswitch_d
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_f

    sget-object v17, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getLaunchPolicyRunnable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_10

    const/16 v17, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    :cond_10
    const/16 v17, 0x0

    goto :goto_10

    :sswitch_e
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->getDesktopModeKillPolicy()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_11

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/16 v17, 0x1

    return v17

    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_f
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopModeAvailable()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_12

    const/16 v17, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_12
    const/16 v17, 0x0

    goto :goto_12

    :sswitch_10
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_13

    const/4 v8, 0x1

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_14

    const/4 v12, 0x1

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopModeAvailableEx(ZZ)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_15

    const/16 v17, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_13
    const/4 v8, 0x0

    goto :goto_13

    :cond_14
    const/4 v12, 0x0

    goto :goto_14

    :cond_15
    const/16 v17, 0x0

    goto :goto_15

    :sswitch_11
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopModeEnablingOrEnabled()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_16

    const/16 v17, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_16
    const/16 v17, 0x0

    goto :goto_16

    :sswitch_12
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopModeForPreparing()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_17

    const/16 v17, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_17
    const/16 v17, 0x0

    goto :goto_17

    :sswitch_13
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDesktopModeLoadingScreenShowing()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_18

    const/16 v17, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_18
    const/16 v17, 0x0

    goto :goto_18

    :sswitch_14
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isDefaultDisplayBlocked()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_19

    const/16 v17, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_19
    const/16 v17, 0x0

    goto :goto_19

    :sswitch_15
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isModeChangePending()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1a

    const/16 v17, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1a
    const/16 v17, 0x0

    goto :goto_1a

    :sswitch_16
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isExternalDisplayConnected()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1b

    const/16 v17, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1b
    const/16 v17, 0x0

    goto :goto_1b

    :sswitch_17
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->isForcedInternalScreenModeEnabled()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1c

    const/16 v17, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1c
    const/16 v17, 0x0

    goto :goto_1c

    :sswitch_18
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1d

    const/4 v8, 0x1

    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->setHdmiSettings(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :cond_1d
    const/4 v8, 0x0

    goto :goto_1d

    :sswitch_19
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/desktopmode/IDesktopModeLauncher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/desktopmode/IDesktopModeLauncher;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->registerDesktopLauncher(Lcom/samsung/android/desktopmode/IDesktopModeLauncher;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v17, 0x1

    return v17

    :sswitch_1a
    const-string/jumbo v17, "com.samsung.android.desktopmode.IDesktopMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/samsung/android/desktopmode/IDesktopMode$Stub;->commandDesktopModeService(II)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1e

    const/16 v17, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v17, 0x1

    return v17

    :cond_1e
    const/16 v17, 0x0

    goto :goto_1e

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
        0x1a -> :sswitch_1a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
