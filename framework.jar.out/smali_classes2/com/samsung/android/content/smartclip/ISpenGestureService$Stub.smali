.class public abstract Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.super Landroid/os/Binder;
.source "ISpenGestureService.java"

# interfaces
.implements Lcom/samsung/android/content/smartclip/ISpenGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/smartclip/ISpenGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.content.smartclip.ISpenGestureService"

.field static final TRANSACTION_getScrollableAreaInfo:I = 0x4

.field static final TRANSACTION_getScrollableViewInfo:I = 0x5

.field static final TRANSACTION_getSmartClipDataByScreenRect:I = 0x1

.field static final TRANSACTION_injectInputEvent:I = 0x3

.field static final TRANSACTION_registerHoverListener:I = 0x8

.field static final TRANSACTION_sendSmartClipRemoteRequestResult:I = 0x2

.field static final TRANSACTION_setHoverStayDetectEnabled:I = 0x6

.field static final TRANSACTION_setHoverStayValues:I = 0x7

.field static final TRANSACTION_unregisterHoverListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.content.smartclip.ISpenGestureService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/content/smartclip/ISpenGestureService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/content/smartclip/ISpenGestureService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 193
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :sswitch_0
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    return v1

    .line 50
    :sswitch_1
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 61
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 62
    .local v12, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11, v12}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v15

    .line 63
    .local v15, "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v15, :cond_1

    .line 65
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 56
    .end local v11    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_arg2":I
    .end local v15    # "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :cond_0
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/graphics/Rect;
    goto :goto_0

    .line 69
    .end local v7    # "_arg0":Landroid/graphics/Rect;
    .restart local v11    # "_arg1":Landroid/os/IBinder;
    .restart local v12    # "_arg2":I
    .restart local v15    # "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v11    # "_arg1":Landroid/os/IBinder;
    .end local v12    # "_arg2":I
    .end local v15    # "_result":Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    :sswitch_2
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 83
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v1, 0x1

    return v1

    .line 81
    :cond_2
    const/4 v9, 0x0

    .local v9, "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    goto :goto_2

    .line 89
    .end local v9    # "_arg0":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    :sswitch_3
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .local v3, "_arg1":I
    sget-object v1, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/InputEvent;

    .line 97
    .local v4, "_arg2":[Landroid/view/InputEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x1

    .line 99
    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .local v6, "_arg4":Landroid/os/IBinder;
    move-object/from16 v1, p0

    .line 100
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v5    # "_arg3":Z
    .end local v6    # "_arg4":Landroid/os/IBinder;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "_arg3":Z
    goto :goto_3

    .line 106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Landroid/view/InputEvent;
    .end local v5    # "_arg3":Z
    :sswitch_4
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 115
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 116
    .restart local v11    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v14

    .line 117
    .local v14, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v14, :cond_5

    .line 119
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_5
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v11    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/graphics/Rect;
    goto :goto_4

    .line 123
    .end local v7    # "_arg0":Landroid/graphics/Rect;
    .restart local v11    # "_arg1":Landroid/os/IBinder;
    .restart local v14    # "_result":Landroid/os/Bundle;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 129
    .end local v11    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 138
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 140
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 141
    .local v13, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v13}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v14

    .line 142
    .restart local v14    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v14, :cond_7

    .line 144
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    :goto_7
    const/4 v1, 0x1

    return v1

    .line 135
    .end local v3    # "_arg1":I
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_result":Landroid/os/Bundle;
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/graphics/Rect;
    goto :goto_6

    .line 148
    .end local v7    # "_arg0":Landroid/graphics/Rect;
    .restart local v3    # "_arg1":I
    .restart local v13    # "_arg2":Landroid/os/IBinder;
    .restart local v14    # "_result":Landroid/os/Bundle;
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 154
    .end local v3    # "_arg1":I
    .end local v13    # "_arg2":Landroid/os/IBinder;
    .end local v14    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v10, 0x1

    .line 157
    .local v10, "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setHoverStayDetectEnabled(Z)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v1, 0x1

    return v1

    .line 156
    .end local v10    # "_arg0":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_8

    .line 163
    :sswitch_7
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 170
    .restart local v12    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v12}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->setHoverStayValues(III)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v1, 0x1

    return v1

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_arg2":I
    :sswitch_8
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    move-result-object v8

    .line 179
    .local v8, "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v1, 0x1

    return v1

    .line 185
    .end local v8    # "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    :sswitch_9
    const-string/jumbo v1, "com.samsung.android.content.smartclip.ISpenGestureService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    move-result-object v8

    .line 188
    .restart local v8    # "_arg0":Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;->unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v1, 0x1

    return v1

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
