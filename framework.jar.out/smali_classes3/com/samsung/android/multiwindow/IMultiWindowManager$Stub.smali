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

.field static final TRANSACTION_completeToggleSplitScreen:I = 0x23

.field static final TRANSACTION_enterFreeformTask:I = 0x28

.field static final TRANSACTION_exitMultiWindow:I = 0x2

.field static final TRANSACTION_getFreeformTasks:I = 0x1c

.field static final TRANSACTION_getImeTargetFreeformTaskId:I = 0x24

.field static final TRANSACTION_getMultiWindowModeStates:I = 0x25

.field static final TRANSACTION_getTopRunningTaskInfo:I = 0x2b

.field static final TRANSACTION_isExpandedDockedStack:I = 0x17

.field static final TRANSACTION_isForceResizable:I = 0x29

.field static final TRANSACTION_isSnapViewRunning:I = 0x20

.field static final TRANSACTION_makeGhostFreeform:I = 0x3

.field static final TRANSACTION_maximizeStackByDivider:I = 0x13

.field static final TRANSACTION_minimizeAllFreeform:I = 0x4

.field static final TRANSACTION_minimizeOhterFreeforms:I = 0x5

.field static final TRANSACTION_minimizeTask:I = 0x6

.field static final TRANSACTION_moveActivityTaskToBack:I = 0x7

.field static final TRANSACTION_moveMultiWindowTasksToFullScreen:I = 0x1b

.field static final TRANSACTION_registerMultiWindowDividerPanelListener:I = 0x9

.field static final TRANSACTION_registerMultiWindowEventListener:I = 0x16

.field static final TRANSACTION_registerMultiWindowFocusedFrameListener:I = 0x8

.field static final TRANSACTION_registerMultiWindowServiceCallback:I = 0xb

.field static final TRANSACTION_removeFreeformTasks:I = 0x1d

.field static final TRANSACTION_removeTaskIfNeeded:I = 0x12

.field static final TRANSACTION_reportMinimizeContainerBounds:I = 0x1e

.field static final TRANSACTION_setAutoResizingEnabled:I = 0x19

.field static final TRANSACTION_setDividerButtonsDimLayer:I = 0x14

.field static final TRANSACTION_setDockedStackDividerButtonsTouchRegion:I = 0x18

.field static final TRANSACTION_setLaunchBounds:I = 0xe

.field static final TRANSACTION_setMultiWindowEnabledForUser:I = 0x1a

.field static final TRANSACTION_setSlideMode:I = 0xd

.field static final TRANSACTION_setSnapView:I = 0x1f

.field static final TRANSACTION_shouldLaunchAsMultiInstance:I = 0x2a

.field static final TRANSACTION_showRecentApps:I = 0x22

.field static final TRANSACTION_slideFreeform:I = 0xf

.field static final TRANSACTION_slideOrUnslideAllFreeform:I = 0x10

.field static final TRANSACTION_startDividerDragging:I = 0x26

.field static final TRANSACTION_startResizingFreeformTask:I = 0x15

.field static final TRANSACTION_stopDividerDragging:I = 0x27

.field static final TRANSACTION_swapSnapTasks:I = 0x21

.field static final TRANSACTION_unregisterMultiWindowDividerPanelListener:I = 0xa

.field static final TRANSACTION_unregisterMultiWindowServiceCallback:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.multiwindow.IMultiWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 490
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v26

    return v26

    .line 43
    :sswitch_0
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v26, 0x1

    return v26

    .line 48
    :sswitch_1
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 52
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_0

    .line 53
    sget-object v26, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    .line 58
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/16 v26, 0x1

    return v26

    .line 56
    :cond_0
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 64
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 67
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v25

    .line 68
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v25, :cond_1

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/16 v26, 0x1

    return v26

    .line 69
    :cond_1
    const/16 v26, 0x0

    goto :goto_1

    .line 74
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v25    # "_result":Z
    :sswitch_3
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 78
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 79
    .local v15, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->makeGhostFreeform(Landroid/os/IBinder;I)V

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/16 v26, 0x1

    return v26

    .line 85
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":I
    :sswitch_4
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeAllFreeform(I)V

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    const/16 v26, 0x1

    return v26

    .line 94
    .end local v4    # "_arg0":I
    :sswitch_5
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 97
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/16 v26, 0x1

    return v26

    .line 103
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->minimizeTask(I)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/16 v26, 0x1

    return v26

    .line 112
    .end local v4    # "_arg0":I
    :sswitch_7
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 116
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_2

    const/16 v19, 0x1

    .line 118
    .local v19, "_arg1":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_3

    const/16 v21, 0x1

    .line 119
    .local v21, "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v7, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    move-result v25

    .line 120
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v25, :cond_4

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/16 v26, 0x1

    return v26

    .line 116
    .end local v19    # "_arg1":Z
    .end local v21    # "_arg2":Z
    .end local v25    # "_result":Z
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Z
    goto :goto_2

    .line 118
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 121
    .restart local v21    # "_arg2":Z
    .restart local v25    # "_result":Z
    :cond_4
    const/16 v26, 0x0

    goto :goto_4

    .line 126
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Z
    .end local v21    # "_arg2":Z
    .end local v25    # "_result":Z
    :sswitch_8
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    move-result-object v11

    .line 129
    .local v11, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/16 v26, 0x1

    return v26

    .line 135
    .end local v11    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;
    :sswitch_9
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    .line 138
    .local v9, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/16 v26, 0x1

    return v26

    .line 144
    .end local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    :sswitch_a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    move-result-object v9

    .line 147
    .restart local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/16 v26, 0x1

    return v26

    .line 153
    .end local v9    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    :sswitch_b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    .line 156
    .local v8, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 157
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    const/16 v26, 0x1

    return v26

    .line 162
    .end local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :sswitch_c
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowCallback;

    move-result-object v8

    .line 165
    .restart local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/16 v26, 0x1

    return v26

    .line 171
    .end local v8    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :sswitch_d
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_5

    const/16 v19, 0x1

    .line 176
    .local v19, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSlideMode(IZ)V

    .line 177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    const/16 v26, 0x1

    return v26

    .line 175
    .end local v19    # "_arg1":Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    .line 182
    .end local v4    # "_arg0":I
    :sswitch_e
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_6

    .line 187
    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 192
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setLaunchBounds(ILandroid/graphics/Rect;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/16 v26, 0x1

    return v26

    .line 190
    :cond_6
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/graphics/Rect;
    goto :goto_6

    .line 198
    .end local v4    # "_arg0":I
    .end local v16    # "_arg1":Landroid/graphics/Rect;
    :sswitch_f
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 201
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideFreeform(Landroid/os/IBinder;)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/16 v26, 0x1

    return v26

    .line 207
    .end local v7    # "_arg0":Landroid/os/IBinder;
    :sswitch_10
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_7

    const/4 v13, 0x1

    .line 210
    .local v13, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->slideOrUnslideAllFreeform(Z)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    const/16 v26, 0x1

    return v26

    .line 209
    .end local v13    # "_arg0":Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    .line 216
    :sswitch_11
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->changeFreeformMode()V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/16 v26, 0x1

    return v26

    .line 223
    :sswitch_12
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_8

    const/4 v13, 0x1

    .line 226
    .restart local v13    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeTaskIfNeeded(Z)Z

    move-result v25

    .line 227
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v25, :cond_9

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v26, 0x1

    return v26

    .line 225
    .end local v13    # "_arg0":Z
    .end local v25    # "_result":Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_8

    .line 228
    .restart local v13    # "_arg0":Z
    .restart local v25    # "_result":Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_9

    .line 233
    .end local v13    # "_arg0":Z
    .end local v25    # "_result":Z
    :sswitch_13
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_a

    const/4 v13, 0x1

    .line 236
    .restart local v13    # "_arg0":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->maximizeStackByDivider(Z)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/16 v26, 0x1

    return v26

    .line 235
    .end local v13    # "_arg0":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_a

    .line 242
    :sswitch_14
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_b

    const/4 v13, 0x1

    .line 246
    .local v13, "_arg0":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 248
    .local v14, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 249
    .local v20, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v13, v14, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDividerButtonsDimLayer(ZFI)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/16 v26, 0x1

    return v26

    .line 244
    .end local v13    # "_arg0":Z
    .end local v14    # "_arg1":F
    .end local v20    # "_arg2":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Z
    goto :goto_b

    .line 255
    .end local v13    # "_arg0":Z
    :sswitch_15
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 259
    .restart local v7    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 261
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 262
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v15, v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startResizingFreeformTask(Landroid/os/IBinder;II)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/16 v26, 0x1

    return v26

    .line 268
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":I
    .end local v20    # "_arg2":I
    :sswitch_16
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    move-result-object v10

    .line 271
    .local v10, "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    const/16 v26, 0x1

    return v26

    .line 277
    .end local v10    # "_arg0":Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :sswitch_17
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isExpandedDockedStack()Z

    move-result v25

    .line 279
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v25, :cond_c

    const/16 v26, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/16 v26, 0x1

    return v26

    .line 280
    :cond_c
    const/16 v26, 0x0

    goto :goto_c

    .line 285
    .end local v25    # "_result":Z
    :sswitch_18
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_d

    .line 288
    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 293
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/16 v26, 0x1

    return v26

    .line 291
    :cond_d
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/graphics/Rect;
    goto :goto_d

    .line 299
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_19
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_e

    const/4 v13, 0x1

    .line 302
    .local v13, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setAutoResizingEnabled(Z)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/16 v26, 0x1

    return v26

    .line 301
    .end local v13    # "_arg0":Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_e

    .line 308
    :sswitch_1a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 312
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_f

    const/16 v21, 0x1

    .line 316
    .local v21, "_arg2":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 317
    .local v22, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/16 v26, 0x1

    return v26

    .line 314
    .end local v21    # "_arg2":Z
    .end local v22    # "_arg3":I
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "_arg2":Z
    goto :goto_f

    .line 323
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":Z
    :sswitch_1b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->moveMultiWindowTasksToFullScreen()V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/16 v26, 0x1

    return v26

    .line 330
    :sswitch_1c
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 333
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getFreeformTasks(I)Ljava/util/List;

    move-result-object v24

    .line 334
    .local v24, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 336
    const/16 v26, 0x1

    return v26

    .line 340
    .end local v4    # "_arg0":I
    .end local v24    # "_result":Ljava/util/List;
    :sswitch_1d
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 343
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->removeFreeformTasks(I)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/16 v26, 0x1

    return v26

    .line 349
    .end local v4    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_10

    .line 352
    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 357
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/16 v26, 0x1

    return v26

    .line 355
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/graphics/Rect;
    goto :goto_10

    .line 363
    .end local v6    # "_arg0":Landroid/graphics/Rect;
    :sswitch_1f
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_11

    const/4 v13, 0x1

    .line 367
    .local v13, "_arg0":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_12

    .line 368
    sget-object v26, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 374
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 375
    .restart local v20    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->setSnapView(ZLandroid/graphics/Rect;I)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/16 v26, 0x1

    return v26

    .line 365
    .end local v13    # "_arg0":Z
    .end local v20    # "_arg2":I
    :cond_11
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Z
    goto :goto_11

    .line 371
    :cond_12
    const/16 v16, 0x0

    .restart local v16    # "_arg1":Landroid/graphics/Rect;
    goto :goto_12

    .line 381
    .end local v13    # "_arg0":Z
    .end local v16    # "_arg1":Landroid/graphics/Rect;
    :sswitch_20
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isSnapViewRunning()Z

    move-result v25

    .line 383
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v25, :cond_13

    const/16 v26, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/16 v26, 0x1

    return v26

    .line 384
    :cond_13
    const/16 v26, 0x0

    goto :goto_13

    .line 389
    .end local v25    # "_result":Z
    :sswitch_21
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->swapSnapTasks()V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/16 v26, 0x1

    return v26

    .line 396
    :sswitch_22
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->showRecentApps()V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/16 v26, 0x1

    return v26

    .line 403
    :sswitch_23
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->completeToggleSplitScreen()V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/16 v26, 0x1

    return v26

    .line 410
    :sswitch_24
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getImeTargetFreeformTaskId()I

    move-result v23

    .line 412
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/16 v26, 0x1

    return v26

    .line 418
    .end local v23    # "_result":I
    :sswitch_25
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 421
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getMultiWindowModeStates(I)I

    move-result v23

    .line 422
    .restart local v23    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    const/16 v26, 0x1

    return v26

    .line 428
    .end local v4    # "_arg0":I
    .end local v23    # "_result":I
    :sswitch_26
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->startDividerDragging()V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/16 v26, 0x1

    return v26

    .line 435
    :sswitch_27
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->stopDividerDragging()V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/16 v26, 0x1

    return v26

    .line 442
    :sswitch_28
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 445
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->enterFreeformTask(I)V

    .line 446
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    const/16 v26, 0x1

    return v26

    .line 451
    .end local v4    # "_arg0":I
    :sswitch_29
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_14

    .line 454
    sget-object v26, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 459
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v25

    .line 460
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v25, :cond_15

    const/16 v26, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/16 v26, 0x1

    return v26

    .line 457
    .end local v25    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_14

    .line 461
    .end local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "_result":Z
    :cond_15
    const/16 v26, 0x0

    goto :goto_15

    .line 466
    .end local v25    # "_result":Z
    :sswitch_2a
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    if-eqz v26, :cond_16

    .line 469
    sget-object v26, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 474
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v25

    .line 475
    .restart local v25    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v25, :cond_17

    const/16 v26, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/16 v26, 0x1

    return v26

    .line 472
    .end local v25    # "_result":Z
    :cond_16
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    goto :goto_16

    .line 476
    .end local v5    # "_arg0":Landroid/content/pm/ActivityInfo;
    .restart local v25    # "_result":Z
    :cond_17
    const/16 v26, 0x0

    goto :goto_17

    .line 481
    .end local v25    # "_result":Z
    :sswitch_2b
    const-string/jumbo v26, "com.samsung.android.multiwindow.IMultiWindowManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 484
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/IMultiWindowManager$Stub;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v24

    .line 485
    .restart local v24    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 487
    const/16 v26, 0x1

    return v26

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
