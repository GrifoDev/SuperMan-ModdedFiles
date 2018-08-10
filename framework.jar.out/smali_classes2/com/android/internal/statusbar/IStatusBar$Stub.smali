.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x1d

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandLockedShadePanel:I = 0x2a

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionFinished:I = 0x17

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x10

.field static final TRANSACTION_clickQsTile:I = 0x1f

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x12

.field static final TRANSACTION_handleSystemNavigationKey:I = 0x20

.field static final TRANSACTION_hideRecentApps:I = 0xc

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1a

.field static final TRANSACTION_preloadRecentApps:I = 0xf

.field static final TRANSACTION_prepareKnoxDesktopTaskBar:I = 0x21

.field static final TRANSACTION_remQsTile:I = 0x1e

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_sendKeyEventToKnoxDesktopTaskbar:I = 0x23

.field static final TRANSACTION_setForceImmersiveBtnVisibility:I = 0x25

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setIndicatorBgColor:I = 0x29

.field static final TRANSACTION_setKnoxDesktopTaskBar:I = 0x22

.field static final TRANSACTION_setNavigationBarShortcut:I = 0x24

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x18

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1c

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1b

.field static final TRANSACTION_showRecentApps:I = 0xb

.field static final TRANSACTION_showScreenPinningRequest:I = 0x11

.field static final TRANSACTION_showServiceBox:I = 0x26

.field static final TRANSACTION_showSnapWindowGuideView:I = 0x27

.field static final TRANSACTION_startAssist:I = 0x19

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x13

.field static final TRANSACTION_toggleNotificationPanel:I = 0x28

.field static final TRANSACTION_toggleRecentApps:I = 0xd

.field static final TRANSACTION_toggleSplitScreen:I = 0xe

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/statusbar/StatusBarIcon;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    const/4 v4, 0x1

    return v4

    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    const/4 v4, 0x1

    return v4

    :sswitch_5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    const/4 v4, 0x1

    return v4

    :sswitch_7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_2
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    const/4 v4, 0x1

    return v4

    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    :sswitch_9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v15, v6, v7, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    const/4 v4, 0x1

    return v4

    :cond_4
    const/16 v26, 0x0

    goto :goto_4

    :sswitch_a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v19, 0x1

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v25, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(ZZ)V

    const/4 v4, 0x1

    return v4

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    const/16 v25, 0x0

    goto :goto_6

    :sswitch_c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v19, 0x1

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v25, 0x1

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/16 v19, 0x0

    goto :goto_7

    :cond_8
    const/16 v25, 0x0

    goto :goto_8

    :sswitch_d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    const/4 v4, 0x1

    return v4

    :sswitch_f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_10
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_11
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_13
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_14
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    const/4 v4, 0x1

    return v4

    :sswitch_15
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    const/4 v4, 0x1

    return v4

    :sswitch_16
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_17
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    const/4 v4, 0x1

    return v4

    :sswitch_18
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    const/4 v4, 0x1

    return v4

    :sswitch_19
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    return v4

    :cond_9
    const/4 v14, 0x0

    goto :goto_9

    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_c
    const/4 v11, 0x0

    goto :goto_c

    :sswitch_20
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemNavigationKey(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_21
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v19, 0x1

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->prepareKnoxDesktopTaskBar(Z)V

    const/4 v4, 0x1

    return v4

    :cond_d
    const/16 v19, 0x0

    goto :goto_d

    :sswitch_22
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/16 v19, 0x1

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v25, 0x1

    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setKnoxDesktopTaskBar(ZZ)V

    const/4 v4, 0x1

    return v4

    :cond_e
    const/16 v19, 0x0

    goto :goto_e

    :cond_f
    const/16 v25, 0x0

    goto :goto_f

    :sswitch_23
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyEvent;

    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V

    const/4 v4, 0x1

    return v4

    :cond_10
    const/16 v17, 0x0

    goto :goto_10

    :sswitch_24
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/widget/RemoteViews;

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V

    const/4 v4, 0x1

    return v4

    :cond_11
    const/16 v22, 0x0

    goto :goto_11

    :sswitch_25
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v19, 0x1

    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setForceImmersiveBtnVisibility(Z)V

    const/4 v4, 0x1

    return v4

    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    :sswitch_26
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showServiceBox(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_27
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showSnapWindowGuideView(ILjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_28
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleNotificationPanel()V

    const/4 v4, 0x1

    return v4

    :sswitch_29
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIndicatorBgColor(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/service/notification/StatusBarNotification;

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V

    const/4 v4, 0x1

    return v4

    :cond_13
    const/16 v16, 0x0

    goto :goto_13

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
