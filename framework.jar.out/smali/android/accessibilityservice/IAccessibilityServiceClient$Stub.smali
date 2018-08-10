.class public abstract Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityServiceClient.java"

# interfaces
.implements Landroid/accessibilityservice/IAccessibilityServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/IAccessibilityServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accessibilityservice.IAccessibilityServiceClient"

.field static final TRANSACTION_clearAccessibilityCache:I = 0x5

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_onAccessibilityButtonAvailabilityChanged:I = 0xd

.field static final TRANSACTION_onAccessibilityButtonClicked:I = 0xc

.field static final TRANSACTION_onAccessibilityEvent:I = 0x2

.field static final TRANSACTION_onFingerprintCapturingGesturesChanged:I = 0xa

.field static final TRANSACTION_onFingerprintGesture:I = 0xb

.field static final TRANSACTION_onGesture:I = 0x4

.field static final TRANSACTION_onInterrupt:I = 0x3

.field static final TRANSACTION_onKeyEvent:I = 0x6

.field static final TRANSACTION_onMagnificationChanged:I = 0x7

.field static final TRANSACTION_onPerformGestureResult:I = 0x9

.field static final TRANSACTION_onSoftKeyboardShowModeChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-virtual {p0, p0, v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.accessibilityservice.IAccessibilityServiceClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v0

    :cond_1
    new-instance v1, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {p0, v2, v8, v11}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    const/4 v13, 0x1

    return v13

    :sswitch_2
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    sget-object v13, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityEvent;

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {p0, v5, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Z)V

    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onInterrupt()V

    const/4 v13, 0x1

    return v13

    :sswitch_4
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onGesture(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_5
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->clearAccessibilityCache()V

    const/4 v13, 0x1

    return v13

    :sswitch_6
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v4, v8}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onKeyEvent(Landroid/view/KeyEvent;I)V

    const/4 v13, 0x1

    return v13

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :sswitch_7
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Region;

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    invoke-virtual {p0, v3, v7, v10, v12}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    const/4 v13, 0x1

    return v13

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :sswitch_8
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onSoftKeyboardShowModeChanged(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_9
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {p0, v1, v9}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onPerformGestureResult(IZ)V

    const/4 v13, 0x1

    return v13

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :sswitch_a
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintCapturingGesturesChanged(Z)V

    const/4 v13, 0x1

    return v13

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :sswitch_b
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onFingerprintGesture(I)V

    const/4 v13, 0x1

    return v13

    :sswitch_c
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonClicked()V

    const/4 v13, 0x1

    return v13

    :sswitch_d
    const-string/jumbo v13, "android.accessibilityservice.IAccessibilityServiceClient"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v6, 0x1

    :goto_6
    invoke-virtual {p0, v6}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->onAccessibilityButtonAvailabilityChanged(Z)V

    const/4 v13, 0x1

    return v13

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
