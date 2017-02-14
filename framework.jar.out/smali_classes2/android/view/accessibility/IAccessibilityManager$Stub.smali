.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final TRANSACTION_OnStartGestureWakeup:I = 0x27

.field static final TRANSACTION_OnStopGestureWakeup:I = 0x28

.field static final TRANSACTION_addAccessibilityInteractionConnection:I = 0x6

.field static final TRANSACTION_addClient:I = 0x1

.field static final TRANSACTION_disableAccessibilityService:I = 0xd

.field static final TRANSACTION_enableAccessibilityService:I = 0xc

.field static final TRANSACTION_getEnabledAccessibilityServiceList:I = 0x4

.field static final TRANSACTION_getInstalledAccessibilityServiceList:I = 0x3

.field static final TRANSACTION_getWindowToken:I = 0xb

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_isTopActivityInKnoxMode:I = 0x22

.field static final TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x20

.field static final TRANSACTION_reboot:I = 0x19

.field static final TRANSACTION_registerUiTestAutomationService:I = 0x8

.field static final TRANSACTION_removeAccessibilityInteractionConnection:I = 0x7

.field static final TRANSACTION_semCheckMdnieColorBlind:I = 0xf

.field static final TRANSACTION_semDisableMagnifier:I = 0x1d

.field static final TRANSACTION_semEnableMagnifier:I = 0x1b

.field static final TRANSACTION_semEnableMagnifierByDisplayID:I = 0x1c

.field static final TRANSACTION_semIsAccessibilityServiceEnabled:I = 0x23

.field static final TRANSACTION_semIsDarkScreenMode:I = 0x14

.field static final TRANSACTION_semLockNow:I = 0x21

.field static final TRANSACTION_semOnLightNotification:I = 0x26

.field static final TRANSACTION_semOpenDeviceOptions:I = 0x1a

.field static final TRANSACTION_semRegisterAssistantMenu:I = 0x17

.field static final TRANSACTION_semSetColorBlind:I = 0xe

.field static final TRANSACTION_semSetMagnificationSpec:I = 0x1e

.field static final TRANSACTION_semSetMdnieAccessibilityMode:I = 0x12

.field static final TRANSACTION_semSetMdnieColorBlind:I = 0x10

.field static final TRANSACTION_semSetMdnieNegative:I = 0x11

.field static final TRANSACTION_semSetTwoFingerGestureRecognitionEnabled:I = 0x1f

.field static final TRANSACTION_semToggleDarkScreenMode:I = 0x15

.field static final TRANSACTION_semTurnOffAccessibilityService:I = 0x24

.field static final TRANSACTION_semTurnOnAccessibilityService:I = 0x25

.field static final TRANSACTION_semUpdateAssitantMenu:I = 0x16

.field static final TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final TRANSACTION_setTalkbackMode:I = 0x13

.field static final TRANSACTION_shutdown:I = 0x18

.field static final TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xa

.field static final TRANSACTION_unregisterUiTestAutomationService:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v30

    return v30

    :sswitch_0
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v30, 0x1

    return v30

    :sswitch_1
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :sswitch_2
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_0

    sget-object v30, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityEvent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_1

    const/16 v30, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v30, 0x1

    return v30

    :sswitch_4
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v30, 0x1

    return v30

    :sswitch_5
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_6
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :sswitch_7
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_8
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_2

    sget-object v30, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/accessibilityservice/AccessibilityServiceInfo;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    :sswitch_9
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_a
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_3

    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_4

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    :sswitch_b
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v30, 0x1

    return v30

    :sswitch_c
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_5

    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableAccessibilityService(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :sswitch_d
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_6

    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disableAccessibilityService(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :sswitch_e
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_7

    const/4 v14, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetColorBlind(ZF)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_8

    const/16 v30, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    :cond_8
    const/16 v30, 0x0

    goto :goto_8

    :sswitch_f
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semCheckMdnieColorBlind([I)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_9

    const/16 v30, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_9
    const/16 v30, 0x0

    goto :goto_9

    :sswitch_10
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_a

    const/4 v14, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieColorBlind(Z[I)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_b

    const/16 v30, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_a
    const/4 v14, 0x0

    goto :goto_a

    :cond_b
    const/16 v30, 0x0

    goto :goto_b

    :sswitch_11
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_c

    const/4 v14, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieNegative(Z)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_d

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_c
    const/4 v14, 0x0

    goto :goto_c

    :cond_d
    const/16 v30, 0x0

    goto :goto_d

    :sswitch_12
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_e

    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_f

    const/16 v30, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_e
    const/16 v20, 0x0

    goto :goto_e

    :cond_f
    const/16 v30, 0x0

    goto :goto_f

    :sswitch_13
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_14
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_10

    const/16 v30, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_10
    const/16 v30, 0x0

    goto :goto_10

    :sswitch_15
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_16
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_11

    sget-object v30, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_11
    const/4 v7, 0x0

    goto :goto_11

    :sswitch_17
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_18
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_12

    const/4 v14, 0x1

    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->shutdown(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_12
    const/4 v14, 0x0

    goto :goto_12

    :sswitch_19
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_13

    const/4 v14, 0x1

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->reboot(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_13
    const/4 v14, 0x0

    goto :goto_13

    :sswitch_1a
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOpenDeviceOptions()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_1b
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMagnifier(IIF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_1c
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMagnifierByDisplayID(IIFI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_1d
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMagnifier()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_1e
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_14

    sget-object v30, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MagnificationSpec;

    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMagnificationSpec(Landroid/view/MagnificationSpec;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_14
    const/4 v10, 0x0

    goto :goto_14

    :sswitch_1f
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_15

    const/4 v14, 0x1

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetTwoFingerGestureRecognitionEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :cond_15
    const/4 v14, 0x0

    goto :goto_15

    :sswitch_20
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_16

    const/16 v30, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_16
    const/16 v30, 0x0

    goto :goto_16

    :sswitch_21
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semLockNow()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_22
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTopActivityInKnoxMode()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_17

    const/16 v30, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_17
    const/16 v30, 0x0

    goto :goto_17

    :sswitch_23
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityServiceEnabled(I)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_18

    const/16 v30, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_18
    const/16 v30, 0x0

    goto :goto_18

    :sswitch_24
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOffAccessibilityService(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_25
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOnAccessibilityService(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v30, 0x1

    return v30

    :sswitch_26
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOnLightNotification(Ljava/lang/String;)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_19

    const/16 v30, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_19
    const/16 v30, 0x0

    goto :goto_19

    :sswitch_27
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_1a

    const/16 v30, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_1a
    const/16 v30, 0x0

    goto :goto_1a

    :sswitch_28
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_1b

    const/16 v30, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v30, 0x1

    return v30

    :cond_1b
    const/16 v30, 0x0

    goto :goto_1b

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
