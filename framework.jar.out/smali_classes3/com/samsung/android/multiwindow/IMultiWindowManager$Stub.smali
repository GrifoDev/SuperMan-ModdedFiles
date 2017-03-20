.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowManager.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowManager"

.field static final TRANSACTION_activityPaused:I = 0x1

.field static final TRANSACTION_changeFreeformMode:I = 0x11

.field static final TRANSACTION_completeToggleSplitScreen:I = 0x24

.field static final TRANSACTION_enterFreeformTask:I = 0x29

.field static final TRANSACTION_exitMultiWindow:I = 0x2

.field static final TRANSACTION_getFreeformTasks:I = 0x1d

.field static final TRANSACTION_getImeTargetFreeformTaskId:I = 0x25

.field static final TRANSACTION_getMultiWindowModeStates:I = 0x26

.field static final TRANSACTION_getTopRunningTaskInfo:I = 0x2c

.field static final TRANSACTION_hasDockedStack:I = 0x18

.field static final TRANSACTION_isExpandedDockedStack:I = 0x17

.field static final TRANSACTION_isForceResizable:I = 0x2a

.field static final TRANSACTION_isSnapViewRunning:I = 0x21

.field static final TRANSACTION_makeGhostFreeform:I = 0x3

.field static final TRANSACTION_maximizeStackByDivider:I = 0x13

.field static final TRANSACTION_minimizeAllFreeform:I = 0x4

.field static final TRANSACTION_minimizeOhterFreeforms:I = 0x5

.field static final TRANSACTION_minimizeTask:I = 0x6

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x7

.field static final TRANSACTION_moveMultiWindowTasksToFullScreen:I = 0x1c

.field static final TRANSACTION_registerMultiWindowDividerPanelListener:I = 0x9

.field static final TRANSACTION_registerMultiWindowEventListener:I = 0x16

.field static final TRANSACTION_registerMultiWindowFocusedFrameListener:I = 0x8

.field static final TRANSACTION_registerMultiWindowServiceCallback:I = 0xb

.field static final TRANSACTION_removeFreeformTasks:I = 0x1e

.field static final TRANSACTION_removeTaskIfNeeded:I = 0x12

.field static final TRANSACTION_reportMinimizeContainerBounds:I = 0x1f

.field static final TRANSACTION_setAutoResizingEnabled:I = 0x1a

.field static final TRANSACTION_setDividerButtonsDimLayer:I = 0x14

.field static final TRANSACTION_setDockedStackDividerButtonsTouchRegion:I = 0x19

.field static final TRANSACTION_setLaunchBounds:I = 0xe

.field static final TRANSACTION_setMultiWindowEnabledForUser:I = 0x1b

.field static final TRANSACTION_setSlideMode:I = 0xd

.field static final TRANSACTION_setSnapView:I = 0x20

.field static final TRANSACTION_shouldLaunchAsMultiInstance:I = 0x2b

.field static final TRANSACTION_showRecentApps:I = 0x23

.field static final TRANSACTION_slideFreeform:I = 0xf

.field static final TRANSACTION_slideOrUnslideAllFreeform:I = 0x10

.field static final TRANSACTION_startDividerDragging:I = 0x27

.field static final TRANSACTION_startResizingFreeformTask:I = 0x15

.field static final TRANSACTION_stopDividerDragging:I = 0x28

.field static final TRANSACTION_swapSnapTasks:I = 0x22

.field static final TRANSACTION_unregisterMultiWindowDividerPanelListener:I = 0xa

.field static final TRANSACTION_unregisterMultiWindowServiceCallback:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-result v26

    return v26

    :sswitch_0
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v26, 0x1

    return v26

    :sswitch_1
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_0

    sget-object v26, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_1

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_1
    const/16 v26, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->makeGhostFreeform(Landroid/os/IBinder;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_4
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeAllFreeform(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_5
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_6
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_7
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_2

    const/16 v19, 0x1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_3

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_4

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_2
    const/16 v19, 0x0

    goto :goto_2

    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    :cond_4
    const/16 v26, 0x0

    goto :goto_4

    :sswitch_8
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_9
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_c
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_d
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_5

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSlideMode(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :sswitch_e
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_6

    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setLaunchBounds(ILandroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    :sswitch_f
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideFreeform(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_10
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_7

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideOrUnslideAllFreeform(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    :sswitch_11
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->changeFreeformMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_12
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_8

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeTaskIfNeeded(Z)Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_9

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    const/16 v26, 0x0

    goto :goto_9

    :sswitch_13
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_a

    const/4 v13, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->maximizeStackByDivider(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_a
    const/4 v13, 0x0

    goto :goto_a

    :sswitch_14
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_b

    const/4 v13, 0x1

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v14, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDividerButtonsDimLayer(ZFI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_b
    const/4 v13, 0x0

    goto :goto_b

    :sswitch_15
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v15, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startResizingFreeformTask(Landroid/os/IBinder;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_16
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_17
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isExpandedDockedStack()Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_c

    const/16 v26, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_c
    const/16 v26, 0x0

    goto :goto_c

    :sswitch_18
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->hasDockedStack()Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_d

    const/16 v26, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_d
    const/16 v26, 0x0

    goto :goto_d

    :sswitch_19
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_e

    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    :sswitch_1a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_f

    const/4 v13, 0x1

    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setAutoResizingEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_f
    const/4 v13, 0x0

    goto :goto_f

    :sswitch_1b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_10

    const/16 v21, 0x1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_10
    const/16 v21, 0x0

    goto :goto_10

    :sswitch_1c
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveMultiWindowTasksToFullScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1d
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/16 v26, 0x1

    return v26

    :sswitch_1e
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeFreeformTasks(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_1f
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_11

    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_11
    const/4 v6, 0x0

    goto :goto_11

    :sswitch_20
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_12

    const/4 v13, 0x1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_13

    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSnapView(ZLandroid/graphics/Rect;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :cond_12
    const/4 v13, 0x0

    goto :goto_12

    :cond_13
    const/16 v16, 0x0

    goto :goto_13

    :sswitch_21
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapViewRunning()Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_14

    const/16 v26, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_14
    const/16 v26, 0x0

    goto :goto_14

    :sswitch_22
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapSnapTasks()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_23
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showRecentApps()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_24
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->completeToggleSplitScreen()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_25
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getImeTargetFreeformTaskId()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_26
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getMultiWindowModeStates(I)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :sswitch_27
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startDividerDragging()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_28
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->stopDividerDragging()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_29
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->enterFreeformTask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v26, 0x1

    return v26

    :sswitch_2a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_15

    sget-object v26, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_16

    const/16 v26, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_15
    const/4 v5, 0x0

    goto :goto_15

    :cond_16
    const/16 v26, 0x0

    goto :goto_16

    :sswitch_2b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_17

    sget-object v26, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_18

    const/16 v26, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v26, 0x1

    return v26

    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    :cond_18
    const/16 v26, 0x0

    goto :goto_18

    :sswitch_2c
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/16 v26, 0x1

    return v26

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
