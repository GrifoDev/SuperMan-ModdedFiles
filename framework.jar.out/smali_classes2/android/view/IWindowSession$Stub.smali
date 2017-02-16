.class public abstract Landroid/view/IWindowSession$Stub;
.super Landroid/os/Binder;
.source "IWindowSession.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSession"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_addToDisplay:I = 0x2

.field static final TRANSACTION_addToDisplayWithoutInputChannel:I = 0x4

.field static final TRANSACTION_addWithoutInputChannel:I = 0x3

.field static final TRANSACTION_cancelDragAndDrop:I = 0x16

.field static final TRANSACTION_dragRecipientEntered:I = 0x17

.field static final TRANSACTION_dragRecipientExited:I = 0x18

.field static final TRANSACTION_finishDrawing:I = 0xf

.field static final TRANSACTION_getCoverStateSwitch:I = 0x23

.field static final TRANSACTION_getDisplayFrame:I = 0xe

.field static final TRANSACTION_getInTouchMode:I = 0x11

.field static final TRANSACTION_getWindowId:I = 0x1f

.field static final TRANSACTION_onRectangleOnScreenRequested:I = 0x1e

.field static final TRANSACTION_outOfMemory:I = 0xb

.field static final TRANSACTION_performDeferredDestroy:I = 0xa

.field static final TRANSACTION_performDrag:I = 0x14

.field static final TRANSACTION_performHapticFeedback:I = 0x12

.field static final TRANSACTION_pokeDrawLock:I = 0x20

.field static final TRANSACTION_prepareDrag:I = 0x13

.field static final TRANSACTION_prepareToReplaceWindows:I = 0x9

.field static final TRANSACTION_relayout:I = 0x6

.field static final TRANSACTION_relayoutEx:I = 0x7

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_reportDropResult:I = 0x15

.field static final TRANSACTION_repositionChild:I = 0x8

.field static final TRANSACTION_sendWallpaperCommand:I = 0x1c

.field static final TRANSACTION_setBackgroundFixed:I = 0x25

.field static final TRANSACTION_setInTouchMode:I = 0x10

.field static final TRANSACTION_setInsets:I = 0xd

.field static final TRANSACTION_setTransparentRegion:I = 0xc

.field static final TRANSACTION_setTspDeadzone:I = 0x24

.field static final TRANSACTION_setWallpaperDisplayOffset:I = 0x1b

.field static final TRANSACTION_setWallpaperPosition:I = 0x19

.field static final TRANSACTION_startMovingTask:I = 0x21

.field static final TRANSACTION_updatePointerIcon:I = 0x22

.field static final TRANSACTION_wallpaperCommandComplete:I = 0x1d

.field static final TRANSACTION_wallpaperOffsetsComplete:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowSession"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSession;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowSession;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowSession;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 81
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 929
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 56
    .local v5, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 67
    .local v8, "_arg3":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v9, "_arg4":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v10, "_arg5":Landroid/graphics/Rect;
    new-instance v11, Landroid/view/InputChannel;

    invoke-direct {v11}, Landroid/view/InputChannel;-><init>()V

    .local v11, "_arg6":Landroid/view/InputChannel;
    move-object/from16 v4, p0

    .line 72
    invoke-virtual/range {v4 .. v11}, Landroid/view/IWindowSession$Stub;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v76

    .line 73
    .local v76, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    if-eqz v9, :cond_1

    .line 76
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    :goto_1
    if-eqz v10, :cond_2

    .line 83
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    :goto_2
    if-eqz v11, :cond_3

    .line 90
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v0, v4}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 96
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 62
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v11    # "_arg6":Landroid/view/InputChannel;
    .end local v76    # "_result":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 80
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v11    # "_arg6":Landroid/view/InputChannel;
    .restart local v76    # "_result":I
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 87
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 94
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 100
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v11    # "_arg6":Landroid/view/InputChannel;
    .end local v76    # "_result":I
    :sswitch_2
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 104
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 106
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 113
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 115
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 117
    .local v17, "_arg4":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 121
    .local v19, "_arg6":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 123
    .local v20, "_arg7":Landroid/graphics/Rect;
    new-instance v21, Landroid/view/InputChannel;

    invoke-direct/range {v21 .. v21}, Landroid/view/InputChannel;-><init>()V

    .local v21, "_arg8":Landroid/view/InputChannel;
    move-object/from16 v12, p0

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v16, v8

    move-object/from16 v18, v10

    .line 124
    invoke-virtual/range {v12 .. v21}, Landroid/view/IWindowSession$Stub;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v76

    .line 125
    .restart local v76    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    if-eqz v10, :cond_5

    .line 128
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_5
    if-eqz v19, :cond_6

    .line 135
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_6
    if-eqz v20, :cond_7

    .line 142
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_7
    if-eqz v21, :cond_8

    .line 149
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_8
    const/4 v4, 0x1

    return v4

    .line 110
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v21    # "_arg8":Landroid/view/InputChannel;
    .end local v76    # "_result":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_4

    .line 132
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v17    # "_arg4":I
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    .restart local v21    # "_arg8":Landroid/view/InputChannel;
    .restart local v76    # "_result":I
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 139
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 146
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 153
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 159
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v21    # "_arg8":Landroid/view/InputChannel;
    .end local v76    # "_result":I
    :sswitch_3
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 163
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 165
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 166
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 172
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 174
    .restart local v8    # "_arg3":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 176
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    move-object/from16 v4, p0

    .line 177
    invoke-virtual/range {v4 .. v10}, Landroid/view/IWindowSession$Stub;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v76

    .line 178
    .restart local v76    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    if-eqz v9, :cond_a

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_a
    if-eqz v10, :cond_b

    .line 188
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_b
    const/4 v4, 0x1

    return v4

    .line 169
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v76    # "_result":I
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .line 185
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":Landroid/graphics/Rect;
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v76    # "_result":I
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 192
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 198
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v76    # "_result":I
    :sswitch_4
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 202
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 204
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 205
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 211
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 213
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 215
    .restart local v17    # "_arg4":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v12, p0

    move-object v13, v5

    move v14, v6

    move-object v15, v7

    move/from16 v16, v8

    move-object/from16 v18, v10

    .line 218
    invoke-virtual/range {v12 .. v19}, Landroid/view/IWindowSession$Stub;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v76

    .line 219
    .restart local v76    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz v10, :cond_d

    .line 222
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_d
    if-eqz v19, :cond_e

    .line 229
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    :goto_e
    const/4 v4, 0x1

    return v4

    .line 208
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v76    # "_result":I
    :cond_c
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 226
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v10    # "_arg5":Landroid/graphics/Rect;
    .restart local v17    # "_arg4":I
    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    .restart local v76    # "_result":I
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 233
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 239
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v76    # "_result":I
    :sswitch_5
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 242
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->remove(Landroid/view/IWindow;)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v4, 0x1

    return v4

    .line 248
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_6
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 252
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 254
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 255
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 261
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 263
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 265
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 267
    .local v28, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 269
    .local v29, "_arg6":I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 271
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v31, "_arg8":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v32, "_arg9":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v33, "_arg10":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v34, "_arg11":Landroid/graphics/Rect;
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 281
    .local v35, "_arg12":Landroid/graphics/Rect;
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v36, "_arg13":Landroid/graphics/Rect;
    new-instance v37, Landroid/content/res/Configuration;

    invoke-direct/range {v37 .. v37}, Landroid/content/res/Configuration;-><init>()V

    .line 285
    .local v37, "_arg14":Landroid/content/res/Configuration;
    new-instance v38, Landroid/view/Surface;

    invoke-direct/range {v38 .. v38}, Landroid/view/Surface;-><init>()V

    .line 287
    .local v38, "_arg15":Landroid/view/Surface;
    new-instance v39, Landroid/graphics/PointF;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/PointF;-><init>()V

    .local v39, "_arg16":Landroid/graphics/PointF;
    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v17

    move-object/from16 v30, v20

    .line 288
    invoke-virtual/range {v22 .. v39}, Landroid/view/IWindowSession$Stub;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;)I

    move-result v76

    .line 289
    .restart local v76    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    if-eqz v20, :cond_10

    .line 292
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_10
    if-eqz v31, :cond_11

    .line 299
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    :goto_11
    if-eqz v32, :cond_12

    .line 306
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 312
    :goto_12
    if-eqz v33, :cond_13

    .line 313
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    :goto_13
    if-eqz v34, :cond_14

    .line 320
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v4, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    :goto_14
    if-eqz v35, :cond_15

    .line 327
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    :goto_15
    if-eqz v36, :cond_16

    .line 334
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    :goto_16
    if-eqz v37, :cond_17

    .line 341
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    :goto_17
    if-eqz v38, :cond_18

    .line 348
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 354
    :goto_18
    if-eqz v39, :cond_19

    .line 355
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 361
    :goto_19
    const/4 v4, 0x1

    return v4

    .line 258
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v39    # "_arg16":Landroid/graphics/PointF;
    .end local v76    # "_result":I
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_f

    .line 296
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v17    # "_arg4":I
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    .restart local v28    # "_arg5":I
    .restart local v29    # "_arg6":I
    .restart local v31    # "_arg8":Landroid/graphics/Rect;
    .restart local v32    # "_arg9":Landroid/graphics/Rect;
    .restart local v33    # "_arg10":Landroid/graphics/Rect;
    .restart local v34    # "_arg11":Landroid/graphics/Rect;
    .restart local v35    # "_arg12":Landroid/graphics/Rect;
    .restart local v36    # "_arg13":Landroid/graphics/Rect;
    .restart local v37    # "_arg14":Landroid/content/res/Configuration;
    .restart local v38    # "_arg15":Landroid/view/Surface;
    .restart local v39    # "_arg16":Landroid/graphics/PointF;
    .restart local v76    # "_result":I
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    .line 303
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_11

    .line 310
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_12

    .line 317
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_13

    .line 324
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 331
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 338
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 345
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 352
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 359
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 365
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v39    # "_arg16":Landroid/graphics/PointF;
    .end local v76    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 369
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 371
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 372
    sget-object v4, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 378
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 380
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 382
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 384
    .restart local v28    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 386
    .restart local v29    # "_arg6":I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 388
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    .line 390
    .restart local v31    # "_arg8":Landroid/graphics/Rect;
    new-instance v32, Landroid/graphics/Rect;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .restart local v32    # "_arg9":Landroid/graphics/Rect;
    new-instance v33, Landroid/graphics/Rect;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .restart local v33    # "_arg10":Landroid/graphics/Rect;
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 396
    .restart local v34    # "_arg11":Landroid/graphics/Rect;
    new-instance v35, Landroid/graphics/Rect;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .restart local v35    # "_arg12":Landroid/graphics/Rect;
    new-instance v36, Landroid/graphics/Rect;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/Rect;-><init>()V

    .line 400
    .restart local v36    # "_arg13":Landroid/graphics/Rect;
    new-instance v37, Landroid/content/res/Configuration;

    invoke-direct/range {v37 .. v37}, Landroid/content/res/Configuration;-><init>()V

    .line 402
    .restart local v37    # "_arg14":Landroid/content/res/Configuration;
    new-instance v38, Landroid/view/Surface;

    invoke-direct/range {v38 .. v38}, Landroid/view/Surface;-><init>()V

    .line 404
    .restart local v38    # "_arg15":Landroid/view/Surface;
    new-instance v39, Landroid/graphics/PointF;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/PointF;-><init>()V

    .line 406
    .restart local v39    # "_arg16":Landroid/graphics/PointF;
    new-instance v40, Landroid/view/Surface;

    invoke-direct/range {v40 .. v40}, Landroid/view/Surface;-><init>()V

    .local v40, "_arg17":Landroid/view/Surface;
    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v17

    move-object/from16 v30, v20

    .line 407
    invoke-virtual/range {v22 .. v40}, Landroid/view/IWindowSession$Stub;->relayoutEx(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/view/Surface;)I

    move-result v76

    .line 408
    .restart local v76    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    if-eqz v20, :cond_1b

    .line 411
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    :goto_1b
    if-eqz v31, :cond_1c

    .line 418
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 424
    :goto_1c
    if-eqz v32, :cond_1d

    .line 425
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 431
    :goto_1d
    if-eqz v33, :cond_1e

    .line 432
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    :goto_1e
    if-eqz v34, :cond_1f

    .line 439
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v4, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 445
    :goto_1f
    if-eqz v35, :cond_20

    .line 446
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v4, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 452
    :goto_20
    if-eqz v36, :cond_21

    .line 453
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v4, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 459
    :goto_21
    if-eqz v37, :cond_22

    .line 460
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    :goto_22
    if-eqz v38, :cond_23

    .line 467
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/4 v4, 0x1

    move-object/from16 v0, v38

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 473
    :goto_23
    if-eqz v39, :cond_24

    .line 474
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 480
    :goto_24
    if-eqz v40, :cond_25

    .line 481
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v4, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 487
    :goto_25
    const/4 v4, 0x1

    return v4

    .line 375
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v39    # "_arg16":Landroid/graphics/PointF;
    .end local v40    # "_arg17":Landroid/view/Surface;
    .end local v76    # "_result":I
    :cond_1a
    const/4 v7, 0x0

    .restart local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_1a

    .line 415
    .end local v7    # "_arg2":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "_arg3":I
    .restart local v17    # "_arg4":I
    .restart local v20    # "_arg7":Landroid/graphics/Rect;
    .restart local v28    # "_arg5":I
    .restart local v29    # "_arg6":I
    .restart local v31    # "_arg8":Landroid/graphics/Rect;
    .restart local v32    # "_arg9":Landroid/graphics/Rect;
    .restart local v33    # "_arg10":Landroid/graphics/Rect;
    .restart local v34    # "_arg11":Landroid/graphics/Rect;
    .restart local v35    # "_arg12":Landroid/graphics/Rect;
    .restart local v36    # "_arg13":Landroid/graphics/Rect;
    .restart local v37    # "_arg14":Landroid/content/res/Configuration;
    .restart local v38    # "_arg15":Landroid/view/Surface;
    .restart local v39    # "_arg16":Landroid/graphics/PointF;
    .restart local v40    # "_arg17":Landroid/view/Surface;
    .restart local v76    # "_result":I
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1b

    .line 422
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1c

    .line 429
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1d

    .line 436
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1e

    .line 443
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1f

    .line 450
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_20

    .line 457
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 464
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 471
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_23

    .line 478
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 485
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 491
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v20    # "_arg7":Landroid/graphics/Rect;
    .end local v28    # "_arg5":I
    .end local v29    # "_arg6":I
    .end local v31    # "_arg8":Landroid/graphics/Rect;
    .end local v32    # "_arg9":Landroid/graphics/Rect;
    .end local v33    # "_arg10":Landroid/graphics/Rect;
    .end local v34    # "_arg11":Landroid/graphics/Rect;
    .end local v35    # "_arg12":Landroid/graphics/Rect;
    .end local v36    # "_arg13":Landroid/graphics/Rect;
    .end local v37    # "_arg14":Landroid/content/res/Configuration;
    .end local v38    # "_arg15":Landroid/view/Surface;
    .end local v39    # "_arg16":Landroid/graphics/PointF;
    .end local v40    # "_arg17":Landroid/view/Surface;
    .end local v76    # "_result":I
    :sswitch_8
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 495
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 499
    .local v45, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 501
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 503
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    .line 505
    .local v48, "_arg5":J
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .restart local v19    # "_arg6":Landroid/graphics/Rect;
    move-object/from16 v42, p0

    move-object/from16 v43, v5

    move/from16 v44, v6

    move/from16 v46, v8

    move/from16 v47, v17

    move-object/from16 v50, v19

    .line 506
    invoke-virtual/range {v42 .. v50}, Landroid/view/IWindowSession$Stub;->repositionChild(Landroid/view/IWindow;IIIIJLandroid/graphics/Rect;)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v19, :cond_26

    .line 509
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 515
    :goto_26
    const/4 v4, 0x1

    return v4

    .line 513
    :cond_26
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 519
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v19    # "_arg6":Landroid/graphics/Rect;
    .end local v45    # "_arg2":I
    .end local v48    # "_arg5":J
    :sswitch_9
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 523
    .local v60, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/16 v74, 0x1

    .line 524
    .local v74, "_arg1":Z
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v74

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->prepareToReplaceWindows(Landroid/os/IBinder;Z)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v4, 0x1

    return v4

    .line 523
    .end local v74    # "_arg1":Z
    :cond_27
    const/16 v74, 0x0

    goto :goto_27

    .line 530
    .end local v60    # "_arg0":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 533
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v4, 0x1

    return v4

    .line 539
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_b
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 542
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v80

    .line 543
    .local v80, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v80, :cond_28

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v4, 0x1

    return v4

    .line 544
    :cond_28
    const/4 v4, 0x0

    goto :goto_28

    .line 549
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v80    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 553
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 554
    sget-object v4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/graphics/Region;

    .line 559
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v4, 0x1

    return v4

    .line 557
    :cond_29
    const/16 v72, 0x0

    .local v72, "_arg1":Landroid/graphics/Region;
    goto :goto_29

    .line 565
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v72    # "_arg1":Landroid/graphics/Region;
    :sswitch_d
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 569
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 571
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 572
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    .line 578
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b

    .line 579
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 585
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    .line 586
    sget-object v4, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Region;

    :goto_2c
    move-object/from16 v22, p0

    move-object/from16 v23, v5

    move/from16 v24, v6

    .line 591
    invoke-virtual/range {v22 .. v27}, Landroid/view/IWindowSession$Stub;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    const/4 v4, 0x1

    return v4

    .line 575
    :cond_2a
    const/16 v25, 0x0

    .local v25, "_arg2":Landroid/graphics/Rect;
    goto :goto_2a

    .line 582
    .end local v25    # "_arg2":Landroid/graphics/Rect;
    :cond_2b
    const/16 v26, 0x0

    .local v26, "_arg3":Landroid/graphics/Rect;
    goto :goto_2b

    .line 589
    .end local v26    # "_arg3":Landroid/graphics/Rect;
    :cond_2c
    const/16 v27, 0x0

    .local v27, "_arg4":Landroid/graphics/Region;
    goto :goto_2c

    .line 597
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v27    # "_arg4":Landroid/graphics/Region;
    :sswitch_e
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 601
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    new-instance v71, Landroid/graphics/Rect;

    invoke-direct/range {v71 .. v71}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v71, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    if-eqz v71, :cond_2d

    .line 605
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v4, 0x1

    move-object/from16 v0, v71

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 611
    :goto_2d
    const/4 v4, 0x1

    return v4

    .line 609
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 615
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v71    # "_arg1":Landroid/graphics/Rect;
    :sswitch_f
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 618
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->finishDrawing(Landroid/view/IWindow;)V

    .line 619
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    const/4 v4, 0x1

    return v4

    .line 624
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_10
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v41, 0x1

    .line 627
    .local v41, "_arg0":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->setInTouchMode(Z)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v4, 0x1

    return v4

    .line 626
    .end local v41    # "_arg0":Z
    :cond_2e
    const/16 v41, 0x0

    goto :goto_2e

    .line 633
    :sswitch_11
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getInTouchMode()Z

    move-result v80

    .line 635
    .restart local v80    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v80, :cond_2f

    const/4 v4, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v4, 0x1

    return v4

    .line 636
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2f

    .line 641
    .end local v80    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 645
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 647
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    const/16 v75, 0x1

    .line 648
    .local v75, "_arg2":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v75

    invoke-virtual {v0, v5, v6, v1}, Landroid/view/IWindowSession$Stub;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v80

    .line 649
    .restart local v80    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    if-eqz v80, :cond_31

    const/4 v4, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/4 v4, 0x1

    return v4

    .line 647
    .end local v75    # "_arg2":Z
    .end local v80    # "_result":Z
    :cond_30
    const/16 v75, 0x0

    goto :goto_30

    .line 650
    .restart local v75    # "_arg2":Z
    .restart local v80    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    goto :goto_31

    .line 655
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v75    # "_arg2":Z
    .end local v80    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 659
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 661
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 663
    .restart local v45    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 665
    .restart local v8    # "_arg3":I
    new-instance v47, Landroid/view/Surface;

    invoke-direct/range {v47 .. v47}, Landroid/view/Surface;-><init>()V

    .local v47, "_arg4":Landroid/view/Surface;
    move-object/from16 v42, p0

    move-object/from16 v43, v5

    move/from16 v44, v6

    move/from16 v46, v8

    .line 666
    invoke-virtual/range {v42 .. v47}, Landroid/view/IWindowSession$Stub;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v78

    .line 667
    .local v78, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    move-object/from16 v0, p3

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 669
    if-eqz v47, :cond_32

    .line 670
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    .line 676
    :goto_32
    const/4 v4, 0x1

    return v4

    .line 674
    :cond_32
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 680
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v6    # "_arg1":I
    .end local v8    # "_arg3":I
    .end local v45    # "_arg2":I
    .end local v47    # "_arg4":Landroid/view/Surface;
    .end local v78    # "_result":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 684
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 686
    .local v52, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 688
    .restart local v45    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v54

    .line 690
    .local v54, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v55

    .line 692
    .local v55, "_arg4":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v56

    .line 694
    .local v56, "_arg5":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v57

    .line 696
    .local v57, "_arg6":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    .line 697
    sget-object v4, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/ClipData;

    :goto_33
    move-object/from16 v50, p0

    move-object/from16 v51, v5

    move/from16 v53, v45

    .line 702
    invoke-virtual/range {v50 .. v58}, Landroid/view/IWindowSession$Stub;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v80

    .line 703
    .restart local v80    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v80, :cond_34

    const/4 v4, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    const/4 v4, 0x1

    return v4

    .line 700
    .end local v80    # "_result":Z
    :cond_33
    const/16 v58, 0x0

    .local v58, "_arg7":Landroid/content/ClipData;
    goto :goto_33

    .line 704
    .end local v58    # "_arg7":Landroid/content/ClipData;
    .restart local v80    # "_result":Z
    :cond_34
    const/4 v4, 0x0

    goto :goto_34

    .line 709
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v45    # "_arg2":I
    .end local v52    # "_arg1":Landroid/os/IBinder;
    .end local v54    # "_arg3":F
    .end local v55    # "_arg4":F
    .end local v56    # "_arg5":F
    .end local v57    # "_arg6":F
    .end local v80    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 713
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v74, 0x1

    .line 714
    .restart local v74    # "_arg1":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v4, 0x1

    return v4

    .line 713
    .end local v74    # "_arg1":Z
    :cond_35
    const/16 v74, 0x0

    goto :goto_35

    .line 720
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_16
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 723
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v4, 0x1

    return v4

    .line 729
    .end local v60    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 732
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 733
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    const/4 v4, 0x1

    return v4

    .line 738
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_18
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 741
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/4 v4, 0x1

    return v4

    .line 747
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_19
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 751
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v61

    .line 753
    .local v61, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v62

    .line 755
    .local v62, "_arg2":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v54

    .line 757
    .restart local v54    # "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v55

    .restart local v55    # "_arg4":F
    move-object/from16 v59, p0

    move/from16 v63, v54

    move/from16 v64, v55

    .line 758
    invoke-virtual/range {v59 .. v64}, Landroid/view/IWindowSession$Stub;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v4, 0x1

    return v4

    .line 764
    .end local v54    # "_arg3":F
    .end local v55    # "_arg4":F
    .end local v60    # "_arg0":Landroid/os/IBinder;
    .end local v61    # "_arg1":F
    .end local v62    # "_arg2":F
    :sswitch_1a
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 767
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v4, 0x1

    return v4

    .line 773
    .end local v60    # "_arg0":Landroid/os/IBinder;
    :sswitch_1b
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 777
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 779
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 780
    .restart local v45    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v45

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/IWindowSession$Stub;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    const/4 v4, 0x1

    return v4

    .line 786
    .end local v6    # "_arg1":I
    .end local v45    # "_arg2":I
    .end local v60    # "_arg0":Landroid/os/IBinder;
    :sswitch_1c
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 790
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 792
    .local v65, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 794
    .restart local v45    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 796
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 798
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 799
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Landroid/os/Bundle;

    .line 805
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    const/16 v70, 0x1

    .local v70, "_arg6":Z
    :goto_37
    move-object/from16 v63, p0

    move-object/from16 v64, v60

    move/from16 v66, v45

    move/from16 v67, v8

    move/from16 v68, v17

    .line 806
    invoke-virtual/range {v63 .. v70}, Landroid/view/IWindowSession$Stub;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v77

    .line 807
    .local v77, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    if-eqz v77, :cond_38

    .line 809
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v4, 0x1

    move-object/from16 v0, v77

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 815
    :goto_38
    const/4 v4, 0x1

    return v4

    .line 802
    .end local v70    # "_arg6":Z
    .end local v77    # "_result":Landroid/os/Bundle;
    :cond_36
    const/16 v69, 0x0

    .local v69, "_arg5":Landroid/os/Bundle;
    goto :goto_36

    .line 805
    .end local v69    # "_arg5":Landroid/os/Bundle;
    :cond_37
    const/16 v70, 0x0

    goto :goto_37

    .line 813
    .restart local v70    # "_arg6":Z
    .restart local v77    # "_result":Landroid/os/Bundle;
    :cond_38
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 819
    .end local v8    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v45    # "_arg2":I
    .end local v60    # "_arg0":Landroid/os/IBinder;
    .end local v65    # "_arg1":Ljava/lang/String;
    .end local v70    # "_arg6":Z
    .end local v77    # "_result":Landroid/os/Bundle;
    :sswitch_1d
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 823
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 824
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Bundle;

    .line 829
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v4, 0x1

    return v4

    .line 827
    :cond_39
    const/16 v73, 0x0

    .local v73, "_arg1":Landroid/os/Bundle;
    goto :goto_39

    .line 835
    .end local v60    # "_arg0":Landroid/os/IBinder;
    .end local v73    # "_arg1":Landroid/os/Bundle;
    :sswitch_1e
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 839
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    .line 840
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Landroid/graphics/Rect;

    .line 845
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowSession$Stub;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v4, 0x1

    return v4

    .line 843
    :cond_3a
    const/16 v71, 0x0

    .local v71, "_arg1":Landroid/graphics/Rect;
    goto :goto_3a

    .line 851
    .end local v60    # "_arg0":Landroid/os/IBinder;
    .end local v71    # "_arg1":Landroid/graphics/Rect;
    :sswitch_1f
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 854
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v79

    .line 855
    .local v79, "_result":Landroid/view/IWindowId;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    if-eqz v79, :cond_3b

    invoke-interface/range {v79 .. v79}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 857
    const/4 v4, 0x1

    return v4

    .line 856
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 861
    .end local v60    # "_arg0":Landroid/os/IBinder;
    .end local v79    # "_result":Landroid/view/IWindowId;
    :sswitch_20
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 864
    .restart local v60    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/view/IWindowSession$Stub;->pokeDrawLock(Landroid/os/IBinder;)V

    .line 865
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v4, 0x1

    return v4

    .line 870
    .end local v60    # "_arg0":Landroid/os/IBinder;
    :sswitch_21
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 874
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v61

    .line 876
    .restart local v61    # "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v62

    .line 877
    .restart local v62    # "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v61

    move/from16 v2, v62

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/IWindowSession$Stub;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v80

    .line 878
    .restart local v80    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    if-eqz v80, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    const/4 v4, 0x1

    return v4

    .line 879
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    .line 884
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v61    # "_arg1":F
    .end local v62    # "_arg2":F
    .end local v80    # "_result":Z
    :sswitch_22
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 887
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowSession$Stub;->updatePointerIcon(Landroid/view/IWindow;)V

    .line 888
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    const/4 v4, 0x1

    return v4

    .line 893
    .end local v5    # "_arg0":Landroid/view/IWindow;
    :sswitch_23
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowSession$Stub;->getCoverStateSwitch()Z

    move-result v80

    .line 895
    .restart local v80    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v80, :cond_3d

    const/4 v4, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v4, 0x1

    return v4

    .line 896
    :cond_3d
    const/4 v4, 0x0

    goto :goto_3d

    .line 901
    .end local v80    # "_result":Z
    :sswitch_24
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 905
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 906
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Bundle;

    .line 911
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowSession$Stub;->setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V

    .line 912
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 913
    const/4 v4, 0x1

    return v4

    .line 909
    :cond_3e
    const/16 v73, 0x0

    .restart local v73    # "_arg1":Landroid/os/Bundle;
    goto :goto_3e

    .line 917
    .end local v5    # "_arg0":Landroid/view/IWindow;
    .end local v73    # "_arg1":Landroid/os/Bundle;
    :sswitch_25
    const-string/jumbo v4, "android.view.IWindowSession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v5

    .line 921
    .restart local v5    # "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v74, 0x1

    .line 923
    .local v74, "_arg1":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 924
    .restart local v45    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v74

    move/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Landroid/view/IWindowSession$Stub;->setBackgroundFixed(Landroid/view/IWindow;ZI)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v4, 0x1

    return v4

    .line 921
    .end local v45    # "_arg2":I
    .end local v74    # "_arg1":Z
    :cond_3f
    const/16 v74, 0x0

    .restart local v74    # "_arg1":Z
    goto :goto_3f

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
