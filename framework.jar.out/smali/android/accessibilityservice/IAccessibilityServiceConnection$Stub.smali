.class public abstract Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceConnection.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceConnection"

.field static final TRANSACTION_disableSelf:I = 0xc

.field static final TRANSACTION_findAccessibilityNodeInfoByAccessibilityId:I = 0x2

.field static final TRANSACTION_findAccessibilityNodeInfosByText:I = 0x3

.field static final TRANSACTION_findAccessibilityNodeInfosByViewId:I = 0x4

.field static final TRANSACTION_findFocus:I = 0x5

.field static final TRANSACTION_focusSearch:I = 0x6

.field static final TRANSACTION_getFragmentBoundsOnTopActivityByAccessibilityId:I = 0x1a

.field static final TRANSACTION_getMagnificationCenterX:I = 0xf

.field static final TRANSACTION_getMagnificationCenterY:I = 0x10

.field static final TRANSACTION_getMagnificationRegion:I = 0x11

.field static final TRANSACTION_getMagnificationScale:I = 0xe

.field static final TRANSACTION_getServiceInfo:I = 0xa

.field static final TRANSACTION_getWindow:I = 0x8

.field static final TRANSACTION_getWindows:I = 0x9

.field static final TRANSACTION_isAccessibilityButtonAvailable:I = 0x17

.field static final TRANSACTION_isFingerprintGestureDetectionAvailable:I = 0x19

.field static final TRANSACTION_isTopActivityCoveredByAccessibilityId:I = 0x1b

.field static final TRANSACTION_performAccessibilityAction:I = 0x7

.field static final TRANSACTION_performGlobalAction:I = 0xb

.field static final TRANSACTION_resetMagnification:I = 0x12

.field static final TRANSACTION_sendGesture:I = 0x18

.field static final TRANSACTION_setMagnificationCallbackEnabled:I = 0x14

.field static final TRANSACTION_setMagnificationScaleAndCenter:I = 0x13

.field static final TRANSACTION_setOnKeyEventResult:I = 0xd

.field static final TRANSACTION_setServiceInfo:I = 0x1

.field static final TRANSACTION_setSoftKeyboardCallbackEnabled:I = 0x16

.field static final TRANSACTION_setSoftKeyboardShowMode:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-object v0

    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 53
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
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/accessibilityservice/AccessibilityServiceInfo;

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_0
    const/16 v41, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    :goto_1
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object/from16 v16, p0

    move/from16 v17, v7

    move-wide/from16 v18, v8

    move-wide/from16 v23, v13

    invoke-virtual/range {v16 .. v24}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_3

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object/from16 v16, p0

    move/from16 v17, v7

    move-wide/from16 v18, v8

    move-wide/from16 v23, v13

    invoke-virtual/range {v16 .. v24}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :sswitch_5
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object/from16 v24, p0

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move/from16 v29, v21

    move-object/from16 v30, v22

    move-wide/from16 v31, v13

    invoke-virtual/range {v24 .. v32}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_5

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :sswitch_6
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    move-object/from16 v24, p0

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move/from16 v29, v21

    move-object/from16 v30, v22

    move-wide/from16 v31, v13

    invoke-virtual/range {v24 .. v32}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :sswitch_7
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    move-object/from16 v24, p0

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move/from16 v30, v12

    invoke-virtual/range {v24 .. v33}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_8

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_7
    const/16 v29, 0x0

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    :sswitch_8
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v50

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v50, :cond_9

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    const/4 v6, 0x1

    return v6

    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_9
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getWindows()Ljava/util/List;

    move-result-object v51

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_a
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v48

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_a

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v6, 0x1

    return v6

    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_b
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->performGlobalAction(I)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_b

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b
    const/4 v6, 0x0

    goto :goto_b

    :sswitch_c
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->disableSelf()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    const/16 v42, 0x1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setOnKeyEventResult(ZI)V

    const/4 v6, 0x1

    return v6

    :cond_c
    const/16 v42, 0x0

    goto :goto_c

    :sswitch_e
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationScale()F

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v6, 0x1

    return v6

    :sswitch_f
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterX()F

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v6, 0x1

    return v6

    :sswitch_10
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationCenterY()F

    move-result v47

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v6, 0x1

    return v6

    :sswitch_11
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getMagnificationRegion()Landroid/graphics/Region;

    move-result-object v49

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v49, :cond_d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    const/4 v6, 0x1

    return v6

    :cond_d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :sswitch_12
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v42, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->resetMagnification(Z)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_e
    const/16 v42, 0x0

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    :sswitch_13
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    const/16 v46, 0x1

    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v43

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationScaleAndCenter(FFFZ)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_11

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_10
    const/16 v46, 0x0

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    goto :goto_11

    :sswitch_14
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v42, 0x1

    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setMagnificationCallbackEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_12
    const/16 v42, 0x0

    goto :goto_12

    :sswitch_15
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardShowMode(I)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_13

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    :sswitch_16
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v42, 0x1

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->setSoftKeyboardCallbackEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_14
    const/16 v42, 0x0

    goto :goto_14

    :sswitch_17
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isAccessibilityButtonAvailable()Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    :sswitch_18
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    sget-object v6, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/pm/ParceledListSlice;

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_16
    const/16 v44, 0x0

    goto :goto_16

    :sswitch_19
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isFingerprintGestureDetectionAvailable()Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_17

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_17
    const/4 v6, 0x0

    goto :goto_17

    :sswitch_1a
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    move-object/from16 v34, p0

    move/from16 v35, v7

    invoke-virtual/range {v34 .. v39}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->getFragmentBoundsOnTopActivityByAccessibilityId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    :sswitch_1b
    const-string/jumbo v6, "android.accessibilityservice.IAccessibilityServiceConnection"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    move-result-object v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    move-object/from16 v34, p0

    move/from16 v35, v7

    invoke-virtual/range {v34 .. v39}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->isTopActivityCoveredByAccessibilityId(IILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v52

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v52, :cond_19

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_19
    const/4 v6, 0x0

    goto :goto_19

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
