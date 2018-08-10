.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x40

.field static final TRANSACTION_bindApplication:I = 0xc

.field static final TRANSACTION_clearDnsCache:I = 0x25

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x21

.field static final TRANSACTION_dumpActivity:I = 0x24

.field static final TRANSACTION_dumpDbInfo:I = 0x2f

.field static final TRANSACTION_dumpGfxInfo:I = 0x2d

.field static final TRANSACTION_dumpHeap:I = 0x23

.field static final TRANSACTION_dumpMemInfo:I = 0x2c

.field static final TRANSACTION_dumpProvider:I = 0x2e

.field static final TRANSACTION_dumpService:I = 0x14

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x3f

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x39

.field static final TRANSACTION_processInBackground:I = 0x11

.field static final TRANSACTION_profilerControl:I = 0x1b

.field static final TRANSACTION_requestAssistContextExtras:I = 0x31

.field static final TRANSACTION_scheduleActivityConfigurationChanged:I = 0x17

.field static final TRANSACTION_scheduleActivityMovedToDisplay:I = 0x18

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x41

.field static final TRANSACTION_scheduleBackgroundVisibleBehindChanged:I = 0x37

.field static final TRANSACTION_scheduleBindService:I = 0x12

.field static final TRANSACTION_scheduleCancelVisibleBehind:I = 0x36

.field static final TRANSACTION_scheduleConfigurationChanged:I = 0xe

.field static final TRANSACTION_scheduleCrash:I = 0x22

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x1d

.field static final TRANSACTION_scheduleCreateService:I = 0xa

.field static final TRANSACTION_scheduleDestroyActivity:I = 0x8

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x1e

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x38

.field static final TRANSACTION_scheduleExit:I = 0xd

.field static final TRANSACTION_scheduleInstallProvider:I = 0x34

.field static final TRANSACTION_scheduleLaunchActivity:I = 0x6

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x3e

.field static final TRANSACTION_scheduleLowMemory:I = 0x16

.field static final TRANSACTION_scheduleMultiWindowFeaturesChanged:I = 0x43

.field static final TRANSACTION_scheduleMultiWindowModeChanged:I = 0x3c

.field static final TRANSACTION_scheduleNewIntent:I = 0x7

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x1f

.field static final TRANSACTION_schedulePauseActivity:I = 0x1

.field static final TRANSACTION_schedulePictureInPictureModeChanged:I = 0x3d

.field static final TRANSACTION_scheduleReceiver:I = 0x9

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0x15

.field static final TRANSACTION_scheduleRelaunchActivity:I = 0x19

.field static final TRANSACTION_scheduleResumeActivity:I = 0x4

.field static final TRANSACTION_scheduleSendResult:I = 0x5

.field static final TRANSACTION_scheduleServiceArgs:I = 0xf

.field static final TRANSACTION_scheduleSleeping:I = 0x1a

.field static final TRANSACTION_scheduleStopActivity:I = 0x2

.field static final TRANSACTION_scheduleStopService:I = 0xb

.field static final TRANSACTION_scheduleSuicide:I = 0x20

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x32

.field static final TRANSACTION_scheduleTrimMemory:I = 0x2b

.field static final TRANSACTION_scheduleUnbindService:I = 0x13

.field static final TRANSACTION_scheduleWindowVisibility:I = 0x3

.field static final TRANSACTION_setCoreSettings:I = 0x29

.field static final TRANSACTION_setHttpProxy:I = 0x26

.field static final TRANSACTION_setHttpProxyEx:I = 0x27

.field static final TRANSACTION_setHttpProxyInfo:I = 0x28

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x42

.field static final TRANSACTION_setProcessState:I = 0x33

.field static final TRANSACTION_setSchedulingGroup:I = 0x1c

.field static final TRANSACTION_startBinderTracking:I = 0x3a

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x3b

.field static final TRANSACTION_unstableProviderDied:I = 0x30

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x2a

.field static final TRANSACTION_updateTimePrefs:I = 0x35

.field static final TRANSACTION_updateTimeZone:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IApplicationThread;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 125
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/app/IApplicationThread$Stub;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    const/4 v6, 0x1

    return v6

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :sswitch_4
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v122

    check-cast v122, Landroid/os/Bundle;

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v122

    invoke-virtual {v0, v7, v1, v9, v2}, Landroid/app/IApplicationThread$Stub;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    const/16 v122, 0x0

    goto :goto_6

    :sswitch_5
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v69

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_6
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ActivityInfo;

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Configuration;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PersistableBundle;

    :goto_d
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v28, 0x1

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ProfilerInfo;

    :goto_10
    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v29}, Landroid/app/IApplicationThread$Stub;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    :cond_c
    const/16 v23, 0x0

    goto :goto_c

    :cond_d
    const/16 v24, 0x0

    goto :goto_d

    :cond_e
    const/16 v27, 0x0

    goto :goto_e

    :cond_f
    const/16 v28, 0x0

    goto :goto_f

    :cond_10
    const/16 v29, 0x0

    goto :goto_10

    :sswitch_7
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v106

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/4 v9, 0x1

    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1, v14, v9}, Landroid/app/IApplicationThread$Stub;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_11
    const/4 v9, 0x0

    goto :goto_11

    :sswitch_8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/4 v8, 0x1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_12
    const/4 v8, 0x0

    goto :goto_12

    :sswitch_9
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ActivityInfo;

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v37, 0x1

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move-object/from16 v30, p0

    move-object/from16 v31, v13

    move/from16 v34, v10

    invoke-virtual/range {v30 .. v39}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v6, 0x1

    return v6

    :cond_13
    const/4 v13, 0x0

    goto :goto_13

    :cond_14
    const/16 v32, 0x0

    goto :goto_14

    :cond_15
    const/16 v33, 0x0

    goto :goto_15

    :cond_16
    const/16 v36, 0x0

    goto :goto_16

    :cond_17
    const/16 v37, 0x0

    goto :goto_17

    :sswitch_a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    sget-object v6, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/content/pm/ServiceInfo;

    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v33

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_18
    const/16 v112, 0x0

    goto :goto_18

    :cond_19
    const/16 v33, 0x0

    goto :goto_19

    :sswitch_b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/ApplicationInfo;

    :goto_1a
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/ComponentName;

    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/ProfilerInfo;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v47

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v48

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v50, 0x1

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v51, 0x1

    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v52, 0x1

    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v53, 0x1

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/res/Configuration;

    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    :goto_23
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v124

    move-object/from16 v0, p2

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/os/Bundle;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v58

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    move-object/from16 v40, p0

    move-object/from16 v46, v36

    move/from16 v49, v39

    invoke-virtual/range {v40 .. v59}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;FLjava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_1a
    const/16 v42, 0x0

    goto/16 :goto_1a

    :cond_1b
    const/16 v44, 0x0

    goto/16 :goto_1b

    :cond_1c
    const/16 v45, 0x0

    goto/16 :goto_1c

    :cond_1d
    const/16 v36, 0x0

    goto/16 :goto_1d

    :cond_1e
    const/16 v50, 0x0

    goto :goto_1e

    :cond_1f
    const/16 v51, 0x0

    goto :goto_1f

    :cond_20
    const/16 v52, 0x0

    goto :goto_20

    :cond_21
    const/16 v53, 0x0

    goto :goto_21

    :cond_22
    const/16 v54, 0x0

    goto :goto_22

    :cond_23
    const/16 v55, 0x0

    goto :goto_23

    :cond_24
    const/16 v57, 0x0

    goto :goto_24

    :sswitch_d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    const/4 v6, 0x1

    return v6

    :sswitch_e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/content/res/Configuration;

    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_25
    const/16 v103, 0x0

    goto :goto_25

    :sswitch_f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26

    sget-object v6, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/content/pm/ParceledListSlice;

    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    const/4 v6, 0x1

    return v6

    :cond_26
    const/16 v111, 0x0

    goto :goto_26

    :sswitch_10
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    const/4 v6, 0x1

    return v6

    :sswitch_11
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    const/4 v6, 0x1

    return v6

    :sswitch_12
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/Intent;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    const/4 v9, 0x1

    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_27
    const/16 v62, 0x0

    goto :goto_27

    :cond_28
    const/4 v9, 0x0

    goto :goto_28

    :sswitch_13
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/Intent;

    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 v6, 0x1

    return v6

    :cond_29
    const/16 v62, 0x0

    goto :goto_29

    :sswitch_14
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v120

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_2a
    const/16 v84, 0x0

    goto :goto_2a

    :sswitch_15
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v61

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/Intent;

    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/os/Bundle;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v66, 0x1

    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v37, 0x1

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move-object/from16 v60, p0

    move/from16 v63, v15

    move/from16 v67, v37

    move/from16 v68, v38

    move/from16 v69, v39

    invoke-virtual/range {v60 .. v69}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    const/4 v6, 0x1

    return v6

    :cond_2b
    const/16 v62, 0x0

    goto :goto_2b

    :cond_2c
    const/16 v65, 0x0

    goto :goto_2c

    :cond_2d
    const/16 v66, 0x0

    goto :goto_2d

    :cond_2e
    const/16 v37, 0x0

    goto :goto_2e

    :sswitch_16
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    const/4 v6, 0x1

    return v6

    :sswitch_17
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2f

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/res/Configuration;

    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_2f
    const/16 v114, 0x0

    goto :goto_2f

    :sswitch_18
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/content/res/Configuration;

    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v109

    move-object/from16 v2, v118

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleActivityMovedToDisplay(Landroid/os/IBinder;ILandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_30
    const/16 v118, 0x0

    goto :goto_30

    :sswitch_19
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v69

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v70

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/4 v11, 0x1

    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/content/res/Configuration;

    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v75, 0x1

    :goto_34
    move-object/from16 v67, p0

    move-object/from16 v68, v7

    move/from16 v71, v10

    move/from16 v72, v11

    move-object/from16 v73, v18

    invoke-virtual/range {v67 .. v75}, Landroid/app/IApplicationThread$Stub;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    const/4 v6, 0x1

    return v6

    :cond_31
    const/4 v11, 0x0

    goto :goto_31

    :cond_32
    const/16 v18, 0x0

    goto :goto_32

    :cond_33
    const/16 v74, 0x0

    goto :goto_33

    :cond_34
    const/16 v75, 0x0

    goto :goto_34

    :sswitch_1a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/4 v8, 0x1

    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleSleeping(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_35
    const/4 v8, 0x0

    goto :goto_35

    :sswitch_1b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v107, 0x1

    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/app/ProfilerInfo;

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v107

    move-object/from16 v2, v110

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_36
    const/16 v107, 0x0

    goto :goto_36

    :cond_37
    const/16 v110, 0x0

    goto :goto_37

    :sswitch_1c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_1d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/content/pm/ApplicationInfo;

    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/res/CompatibilityInfo;

    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_38
    const/16 v99, 0x0

    goto :goto_38

    :cond_39
    const/16 v113, 0x0

    goto :goto_39

    :sswitch_1e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/content/pm/ApplicationInfo;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/res/CompatibilityInfo;

    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_3a
    const/16 v99, 0x0

    goto :goto_3a

    :cond_3b
    const/16 v113, 0x0

    goto :goto_3b

    :sswitch_1f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/os/Bundle;

    :goto_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_3c
    const/16 v115, 0x0

    goto :goto_3c

    :sswitch_20
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    const/4 v6, 0x1

    return v6

    :sswitch_21
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    move-object/from16 v0, p0

    move/from16 v1, v98

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_22
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_23
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v107, 0x1

    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/os/ParcelFileDescriptor;

    :goto_3e
    move-object/from16 v0, p0

    move/from16 v1, v107

    move-object/from16 v2, v78

    move-object/from16 v3, v119

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v6, 0x1

    return v6

    :cond_3d
    const/16 v107, 0x0

    goto :goto_3d

    :cond_3e
    const/16 v119, 0x0

    goto :goto_3e

    :sswitch_24
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v123

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v79

    move-object/from16 v3, v123

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_3f
    const/16 v84, 0x0

    goto :goto_3f

    :sswitch_25
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    const/4 v6, 0x1

    return v6

    :sswitch_26
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v121

    check-cast v121, Landroid/net/Uri;

    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v78

    move-object/from16 v3, v79

    move-object/from16 v4, v121

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x1

    return v6

    :cond_40
    const/16 v121, 0x0

    goto :goto_40

    :sswitch_27
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/net/Uri;

    :goto_41
    move-object/from16 v76, p0

    move-object/from16 v77, v41

    move-object/from16 v80, v64

    move-object/from16 v81, v35

    invoke-virtual/range {v76 .. v82}, Landroid/app/IApplicationThread$Stub;->setHttpProxyEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x1

    return v6

    :cond_41
    const/16 v82, 0x0

    goto :goto_41

    :sswitch_28
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    sget-object v6, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/net/ProxyInfo;

    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setHttpProxyInfo(Landroid/net/ProxyInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_42
    const/16 v104, 0x0

    goto :goto_42

    :sswitch_29
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_43
    const/16 v105, 0x0

    goto :goto_43

    :sswitch_2a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/content/res/CompatibilityInfo;

    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_44
    const/16 v113, 0x0

    goto :goto_44

    :sswitch_2b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_2c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/os/Debug$MemoryInfo;

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/4 v9, 0x1

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v87, 0x1

    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/4 v11, 0x1

    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v66, 0x1

    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v37, 0x1

    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v91

    move-object/from16 v83, p0

    move/from16 v86, v9

    move/from16 v88, v11

    move/from16 v89, v66

    move/from16 v90, v37

    invoke-virtual/range {v83 .. v91}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_45
    const/16 v84, 0x0

    goto :goto_45

    :cond_46
    const/16 v85, 0x0

    goto :goto_46

    :cond_47
    const/4 v9, 0x0

    goto :goto_47

    :cond_48
    const/16 v87, 0x0

    goto :goto_48

    :cond_49
    const/4 v11, 0x0

    goto :goto_49

    :cond_4a
    const/16 v66, 0x0

    goto :goto_4a

    :cond_4b
    const/16 v37, 0x0

    goto :goto_4b

    :sswitch_2d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_4c
    const/16 v84, 0x0

    goto :goto_4c

    :sswitch_2e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v120

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_4d
    const/16 v84, 0x0

    goto :goto_4d

    :sswitch_2f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_4e
    const/16 v84, 0x0

    goto :goto_4e

    :sswitch_30
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_31
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    move-object/from16 v92, p0

    move-object/from16 v93, v7

    move-object/from16 v94, v14

    move/from16 v95, v15

    move/from16 v96, v10

    invoke-virtual/range {v92 .. v97}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    const/4 v6, 0x1

    return v6

    :sswitch_32
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/4 v8, 0x1

    :goto_4f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_4f
    const/4 v8, 0x0

    goto :goto_4f

    :sswitch_33
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_34
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/pm/ProviderInfo;

    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_50
    const/16 v102, 0x0

    goto :goto_50

    :sswitch_35
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_36
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_37
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v8, 0x1

    :goto_51
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_51
    const/4 v8, 0x0

    goto :goto_51

    :sswitch_38
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_39
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v108

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_3a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    const/4 v6, 0x1

    return v6

    :sswitch_3b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/os/ParcelFileDescriptor;

    :goto_52
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    const/4 v6, 0x1

    return v6

    :cond_52
    const/16 v84, 0x0

    goto :goto_52

    :sswitch_3c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/4 v8, 0x1

    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/content/res/Configuration;

    :goto_54
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_53
    const/4 v8, 0x0

    goto :goto_53

    :cond_54
    const/16 v118, 0x0

    goto :goto_54

    :sswitch_3d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/4 v8, 0x1

    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/content/res/Configuration;

    :goto_56
    move-object/from16 v0, p0

    move-object/from16 v1, v118

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_55
    const/4 v8, 0x0

    goto :goto_55

    :cond_56
    const/16 v118, 0x0

    goto :goto_56

    :sswitch_3e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v116

    move-object/from16 v0, p0

    move-object/from16 v1, v116

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    const/4 v6, 0x1

    return v6

    :sswitch_3f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    const/4 v6, 0x1

    return v6

    :sswitch_40
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_41
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/content/pm/ApplicationInfo;

    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_57
    const/16 v99, 0x0

    goto :goto_57

    :sswitch_42
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v100

    move-object/from16 v0, p0

    move-wide/from16 v1, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    const/4 v6, 0x1

    return v6

    :sswitch_43
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/os/Bundle;

    :goto_58
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleMultiWindowFeaturesChanged(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_58
    const/16 v105, 0x0

    goto :goto_58

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
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
