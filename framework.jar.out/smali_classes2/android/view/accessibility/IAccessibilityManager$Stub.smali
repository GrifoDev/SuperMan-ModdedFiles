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

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/accessibility/IAccessibilityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 485
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v30

    return v30

    .line 48
    :sswitch_0
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/16 v30, 0x1

    return v30

    .line 53
    :sswitch_1
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v12

    .line 57
    .local v12, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 58
    .local v17, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v26

    .line 59
    .local v26, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/16 v30, 0x1

    return v30

    .line 65
    .end local v12    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v17    # "_arg1":I
    .end local v26    # "_result":I
    :sswitch_2
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_0

    .line 68
    sget-object v30, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityEvent;

    .line 74
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 75
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v29

    .line 76
    .local v29, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v29, :cond_1

    const/16 v30, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/16 v30, 0x1

    return v30

    .line 71
    .end local v17    # "_arg1":I
    .end local v29    # "_result":Z
    :cond_0
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 77
    .end local v11    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v17    # "_arg1":I
    .restart local v29    # "_result":Z
    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    .line 82
    .end local v17    # "_arg1":I
    .end local v29    # "_result":Z
    :sswitch_3
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v28

    .line 86
    .local v28, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    const/16 v30, 0x1

    return v30

    .line 92
    .end local v4    # "_arg0":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_4
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 96
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 97
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v28

    .line 98
    .restart local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 100
    const/16 v30, 0x1

    return v30

    .line 104
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v28    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :sswitch_5
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 107
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/16 v30, 0x1

    return v30

    .line 113
    .end local v4    # "_arg0":I
    :sswitch_6
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 117
    .local v9, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v19

    .line 119
    .local v19, "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 120
    .local v23, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v9, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I

    move-result v26

    .line 121
    .restart local v26    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/16 v30, 0x1

    return v30

    .line 127
    .end local v9    # "_arg0":Landroid/view/IWindow;
    .end local v19    # "_arg1":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v23    # "_arg2":I
    .end local v26    # "_result":I
    :sswitch_7
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v9

    .line 130
    .restart local v9    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/16 v30, 0x1

    return v30

    .line 136
    .end local v9    # "_arg0":Landroid/view/IWindow;
    :sswitch_8
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 140
    .local v8, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v18

    .line 142
    .local v18, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_2

    .line 143
    sget-object v30, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 149
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 150
    .local v25, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/16 v30, 0x1

    return v30

    .line 146
    .end local v25    # "_arg3":I
    :cond_2
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_2

    .line 156
    .end local v8    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v24    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :sswitch_9
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v5

    .line 159
    .local v5, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/16 v30, 0x1

    return v30

    .line 165
    .end local v5    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :sswitch_a
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_3

    .line 168
    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 174
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_4

    const/16 v20, 0x1

    .line 175
    .local v20, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/16 v30, 0x1

    return v30

    .line 171
    .end local v20    # "_arg1":Z
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 174
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    :cond_4
    const/16 v20, 0x0

    goto :goto_4

    .line 181
    :sswitch_b
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 185
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 186
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v27

    .line 187
    .local v27, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 189
    const/16 v30, 0x1

    return v30

    .line 193
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v27    # "_result":Landroid/os/IBinder;
    :sswitch_c
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_5

    .line 196
    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 202
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 203
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->enableAccessibilityService(Landroid/content/ComponentName;I)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/16 v30, 0x1

    return v30

    .line 199
    .end local v17    # "_arg1":I
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5

    .line 209
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_6

    .line 212
    sget-object v30, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 218
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 219
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disableAccessibilityService(Landroid/content/ComponentName;I)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/16 v30, 0x1

    return v30

    .line 215
    .end local v17    # "_arg1":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 225
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_7

    const/4 v14, 0x1

    .line 229
    .local v14, "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 230
    .local v16, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetColorBlind(ZF)Z

    move-result v29

    .line 231
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v29, :cond_8

    const/16 v30, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/16 v30, 0x1

    return v30

    .line 227
    .end local v14    # "_arg0":Z
    .end local v16    # "_arg1":F
    .end local v29    # "_result":Z
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_7

    .line 232
    .restart local v16    # "_arg1":F
    .restart local v29    # "_result":Z
    :cond_8
    const/16 v30, 0x0

    goto :goto_8

    .line 237
    .end local v14    # "_arg0":Z
    .end local v16    # "_arg1":F
    .end local v29    # "_result":Z
    :sswitch_f
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 240
    .local v15, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semCheckMdnieColorBlind([I)Z

    move-result v29

    .line 241
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v29, :cond_9

    const/16 v30, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/16 v30, 0x1

    return v30

    .line 242
    :cond_9
    const/16 v30, 0x0

    goto :goto_9

    .line 247
    .end local v15    # "_arg0":[I
    .end local v29    # "_result":Z
    :sswitch_10
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_a

    const/4 v14, 0x1

    .line 251
    .restart local v14    # "_arg0":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 252
    .local v21, "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieColorBlind(Z[I)Z

    move-result v29

    .line 253
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v29, :cond_b

    const/16 v30, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/16 v30, 0x1

    return v30

    .line 249
    .end local v14    # "_arg0":Z
    .end local v21    # "_arg1":[I
    .end local v29    # "_result":Z
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_a

    .line 254
    .restart local v21    # "_arg1":[I
    .restart local v29    # "_result":Z
    :cond_b
    const/16 v30, 0x0

    goto :goto_b

    .line 259
    .end local v14    # "_arg0":Z
    .end local v21    # "_arg1":[I
    .end local v29    # "_result":Z
    :sswitch_11
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_c

    const/4 v14, 0x1

    .line 262
    .local v14, "_arg0":Z
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieNegative(Z)Z

    move-result v29

    .line 263
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v29, :cond_d

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/16 v30, 0x1

    return v30

    .line 261
    .end local v14    # "_arg0":Z
    .end local v29    # "_result":Z
    :cond_c
    const/4 v14, 0x0

    goto :goto_c

    .line 264
    .restart local v14    # "_arg0":Z
    .restart local v29    # "_result":Z
    :cond_d
    const/16 v30, 0x0

    goto :goto_d

    .line 269
    .end local v14    # "_arg0":Z
    .end local v29    # "_result":Z
    :sswitch_12
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 273
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_e

    const/16 v20, 0x1

    .line 274
    .restart local v20    # "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v29

    .line 275
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v29, :cond_f

    const/16 v30, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/16 v30, 0x1

    return v30

    .line 273
    .end local v20    # "_arg1":Z
    .end local v29    # "_result":Z
    :cond_e
    const/16 v20, 0x0

    goto :goto_e

    .line 276
    .restart local v20    # "_arg1":Z
    .restart local v29    # "_result":Z
    :cond_f
    const/16 v30, 0x0

    goto :goto_f

    .line 281
    .end local v4    # "_arg0":I
    .end local v20    # "_arg1":Z
    .end local v29    # "_result":Z
    :sswitch_13
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/16 v30, 0x1

    return v30

    .line 288
    :sswitch_14
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode()Z

    move-result v29

    .line 290
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    if-eqz v29, :cond_10

    const/16 v30, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/16 v30, 0x1

    return v30

    .line 291
    :cond_10
    const/16 v30, 0x0

    goto :goto_10

    .line 296
    .end local v29    # "_result":Z
    :sswitch_15
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode()V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/16 v30, 0x1

    return v30

    .line 303
    :sswitch_16
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_11

    .line 306
    sget-object v30, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 311
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    const/16 v30, 0x1

    return v30

    .line 309
    :cond_11
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/os/Bundle;
    goto :goto_11

    .line 317
    .end local v7    # "_arg0":Landroid/os/Bundle;
    :sswitch_17
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 320
    .restart local v8    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v30, 0x1

    return v30

    .line 326
    .end local v8    # "_arg0":Landroid/os/IBinder;
    :sswitch_18
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_12

    const/4 v14, 0x1

    .line 329
    .restart local v14    # "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->shutdown(Z)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/16 v30, 0x1

    return v30

    .line 328
    .end local v14    # "_arg0":Z
    :cond_12
    const/4 v14, 0x0

    goto :goto_12

    .line 335
    :sswitch_19
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_13

    const/4 v14, 0x1

    .line 338
    .restart local v14    # "_arg0":Z
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->reboot(Z)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/16 v30, 0x1

    return v30

    .line 337
    .end local v14    # "_arg0":Z
    :cond_13
    const/4 v14, 0x0

    goto :goto_13

    .line 344
    :sswitch_1a
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOpenDeviceOptions()V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/16 v30, 0x1

    return v30

    .line 351
    :sswitch_1b
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 355
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 357
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 358
    .local v22, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMagnifier(IIF)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/16 v30, 0x1

    return v30

    .line 364
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v22    # "_arg2":F
    :sswitch_1c
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 368
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 370
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    .line 372
    .restart local v22    # "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 373
    .restart local v25    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v25

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMagnifierByDisplayID(IIFI)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    const/16 v30, 0x1

    return v30

    .line 379
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v22    # "_arg2":F
    .end local v25    # "_arg3":I
    :sswitch_1d
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMagnifier()V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/16 v30, 0x1

    return v30

    .line 386
    :sswitch_1e
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_14

    .line 389
    sget-object v30, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MagnificationSpec;

    .line 394
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/16 v30, 0x1

    return v30

    .line 392
    :cond_14
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/view/MagnificationSpec;
    goto :goto_14

    .line 400
    .end local v10    # "_arg0":Landroid/view/MagnificationSpec;
    :sswitch_1f
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    if-eqz v30, :cond_15

    const/4 v14, 0x1

    .line 403
    .restart local v14    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetTwoFingerGestureRecognitionEnabled(Z)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/16 v30, 0x1

    return v30

    .line 402
    .end local v14    # "_arg0":Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_15

    .line 409
    :sswitch_20
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v29

    .line 411
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    if-eqz v29, :cond_16

    const/16 v30, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/16 v30, 0x1

    return v30

    .line 412
    :cond_16
    const/16 v30, 0x0

    goto :goto_16

    .line 417
    .end local v29    # "_result":Z
    :sswitch_21
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semLockNow()V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/16 v30, 0x1

    return v30

    .line 424
    :sswitch_22
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTopActivityInKnoxMode()Z

    move-result v29

    .line 426
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v29, :cond_17

    const/16 v30, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/16 v30, 0x1

    return v30

    .line 427
    :cond_17
    const/16 v30, 0x0

    goto :goto_17

    .line 432
    .end local v29    # "_result":Z
    :sswitch_23
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityServiceEnabled(I)Z

    move-result v29

    .line 436
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v29, :cond_18

    const/16 v30, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    const/16 v30, 0x1

    return v30

    .line 437
    :cond_18
    const/16 v30, 0x0

    goto :goto_18

    .line 442
    .end local v4    # "_arg0":I
    .end local v29    # "_result":Z
    :sswitch_24
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 445
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOffAccessibilityService(I)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/16 v30, 0x1

    return v30

    .line 451
    .end local v4    # "_arg0":I
    :sswitch_25
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 454
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOnAccessibilityService(I)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    const/16 v30, 0x1

    return v30

    .line 460
    .end local v4    # "_arg0":I
    :sswitch_26
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 463
    .local v13, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOnLightNotification(Ljava/lang/String;)Z

    move-result v29

    .line 464
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v29, :cond_19

    const/16 v30, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/16 v30, 0x1

    return v30

    .line 465
    :cond_19
    const/16 v30, 0x0

    goto :goto_19

    .line 470
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Z
    :sswitch_27
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v29

    .line 472
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v29, :cond_1a

    const/16 v30, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/16 v30, 0x1

    return v30

    .line 473
    :cond_1a
    const/16 v30, 0x0

    goto :goto_1a

    .line 478
    .end local v29    # "_result":Z
    :sswitch_28
    const-string/jumbo v30, "android.view.accessibility.IAccessibilityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v29

    .line 480
    .restart local v29    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v29, :cond_1b

    const/16 v30, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/16 v30, 0x1

    return v30

    .line 481
    :cond_1b
    const/16 v30, 0x0

    goto :goto_1b

    .line 44
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
