.class public abstract Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;
.super Landroid/os/Binder;
.source "ISemDirectPenInputManager.java"

# interfaces
.implements Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.directpeninput.ISemDirectPenInputManager"

.field static final TRANSACTION_dismiss:I = 0x3

.field static final TRANSACTION_getImage:I = 0x6

.field static final TRANSACTION_isShowing:I = 0x7

.field static final TRANSACTION_show:I = 0x1

.field static final TRANSACTION_showPopup:I = 0x8

.field static final TRANSACTION_showTemplate:I = 0x2

.field static final TRANSACTION_updateDialog:I = 0x5

.field static final TRANSACTION_updatePosition:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;
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
    const-string/jumbo v1, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 33
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

    .line 249
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 45
    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    return v3

    .line 50
    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 54
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 56
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 58
    .local v6, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 60
    .local v7, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 67
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 74
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 81
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    sget-object v3, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/ExtractedText;

    .line 88
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/EditorInfo;

    .line 95
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 97
    .local v13, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v14, 0x1

    .local v14, "_arg10":Z
    :goto_5
    move-object/from16 v3, p0

    .line 98
    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->show(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;IZ)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v3, 0x1

    return v3

    .line 64
    .end local v13    # "_arg9":I
    .end local v14    # "_arg10":Z
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg4":Landroid/graphics/Rect;
    goto :goto_0

    .line 71
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg5":Landroid/graphics/Rect;
    goto :goto_1

    .line 78
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    .local v10, "_arg6":Landroid/graphics/Rect;
    goto :goto_2

    .line 85
    .end local v10    # "_arg6":Landroid/graphics/Rect;
    :cond_3
    const/4 v11, 0x0

    .local v11, "_arg7":Landroid/view/inputmethod/ExtractedText;
    goto :goto_3

    .line 92
    .end local v11    # "_arg7":Landroid/view/inputmethod/ExtractedText;
    :cond_4
    const/4 v12, 0x0

    .local v12, "_arg8":Landroid/view/inputmethod/EditorInfo;
    goto :goto_4

    .line 97
    .end local v12    # "_arg8":Landroid/view/inputmethod/EditorInfo;
    .restart local v13    # "_arg9":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 104
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_arg3":Landroid/os/IBinder;
    .end local v13    # "_arg9":I
    :sswitch_2
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 108
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 110
    .restart local v5    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 112
    .restart local v6    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 114
    .restart local v7    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 121
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 128
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 135
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 137
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    .line 138
    sget-object v3, Landroid/view/inputmethod/ExtractedText;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/inputmethod/ExtractedText;

    .line 144
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    .line 145
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/inputmethod/EditorInfo;

    .line 151
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg10":I
    move-object/from16 v15, p0

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    .line 152
    invoke-virtual/range {v15 .. v26}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->showTemplate(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/inputmethod/ExtractedText;Landroid/view/inputmethod/EditorInfo;I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v3, 0x1

    return v3

    .line 118
    .end local v23    # "_arg7":I
    .end local v26    # "_arg10":I
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Landroid/graphics/Rect;
    goto :goto_6

    .line 125
    .end local v8    # "_arg4":Landroid/graphics/Rect;
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "_arg5":Landroid/graphics/Rect;
    goto :goto_7

    .line 132
    .end local v9    # "_arg5":Landroid/graphics/Rect;
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "_arg6":Landroid/graphics/Rect;
    goto :goto_8

    .line 141
    .end local v10    # "_arg6":Landroid/graphics/Rect;
    .restart local v23    # "_arg7":I
    :cond_9
    const/16 v24, 0x0

    .local v24, "_arg8":Landroid/view/inputmethod/ExtractedText;
    goto :goto_9

    .line 148
    .end local v24    # "_arg8":Landroid/view/inputmethod/ExtractedText;
    :cond_a
    const/16 v25, 0x0

    .local v25, "_arg9":Landroid/view/inputmethod/EditorInfo;
    goto :goto_a

    .line 158
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/os/IBinder;
    .end local v7    # "_arg3":Landroid/os/IBinder;
    .end local v23    # "_arg7":I
    .end local v25    # "_arg9":Landroid/view/inputmethod/EditorInfo;
    :sswitch_3
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v29, 0x1

    .line 163
    .local v29, "_arg1":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->dismiss(IZ)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v3, 0x1

    return v3

    .line 162
    .end local v29    # "_arg1":Z
    :cond_b
    const/16 v29, 0x0

    goto :goto_b

    .line 169
    .end local v4    # "_arg0":I
    :sswitch_4
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 174
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/graphics/Rect;

    .line 180
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 181
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 186
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->updatePosition(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v3, 0x1

    return v3

    .line 177
    :cond_c
    const/16 v28, 0x0

    .local v28, "_arg1":Landroid/graphics/Rect;
    goto :goto_c

    .line 184
    .end local v28    # "_arg1":Landroid/graphics/Rect;
    :cond_d
    const/16 v30, 0x0

    .local v30, "_arg2":Landroid/graphics/Rect;
    goto :goto_d

    .line 192
    .end local v4    # "_arg0":I
    .end local v30    # "_arg2":Landroid/graphics/Rect;
    :sswitch_5
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 197
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/graphics/Rect;

    .line 203
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    .line 204
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/graphics/Rect;

    .line 209
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->updateDialog(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v3, 0x1

    return v3

    .line 200
    :cond_e
    const/16 v28, 0x0

    .restart local v28    # "_arg1":Landroid/graphics/Rect;
    goto :goto_e

    .line 207
    .end local v28    # "_arg1":Landroid/graphics/Rect;
    :cond_f
    const/16 v30, 0x0

    .restart local v30    # "_arg2":Landroid/graphics/Rect;
    goto :goto_f

    .line 215
    .end local v4    # "_arg0":I
    .end local v30    # "_arg2":Landroid/graphics/Rect;
    :sswitch_6
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->getImage(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v31

    .line 219
    .local v31, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v31, :cond_10

    .line 221
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 227
    :goto_10
    const/4 v3, 0x1

    return v3

    .line 225
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 231
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->isShowing()Z

    move-result v32

    .line 233
    .local v32, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v32, :cond_11

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    return v3

    .line 234
    :cond_11
    const/4 v3, 0x0

    goto :goto_11

    .line 239
    .end local v32    # "_result":Z
    :sswitch_8
    const-string/jumbo v3, "com.samsung.android.directpeninput.ISemDirectPenInputManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 243
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 244
    .local v27, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/directpeninput/ISemDirectPenInputManager$Stub;->showPopup(II)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v3, 0x1

    return v3

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
