.class public abstract Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowEventListener.java"

# interfaces
.implements Lcom/samsung/android/multiwindow/IMultiWindowEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.multiwindow.IMultiWindowEventListener"

.field static final TRANSACTION_onMultiWindowAppTransitionFinished:I = 0x3

.field static final TRANSACTION_onMultiWindowDockedMinimizedChanged:I = 0x5

.field static final TRANSACTION_onMultiWindowFocusChanged:I = 0x1

.field static final TRANSACTION_onMultiWindowScreenFreezeAnimationFinished:I = 0x4

.field static final TRANSACTION_onMultiWindowSettingChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
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
    const-string/jumbo v1, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v10

    .line 52
    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 68
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 70
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_2
    move-object v0, p0

    .line 80
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowFocusChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 81
    return v10

    .line 58
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/graphics/Rect;
    goto :goto_0

    .line 65
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/graphics/Rect;
    goto :goto_1

    .line 78
    .end local v2    # "_arg1":Landroid/graphics/Rect;
    .restart local v3    # "_arg2":I
    .restart local v4    # "_arg3":I
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg5":Landroid/os/Bundle;
    goto :goto_2

    .line 85
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v7, v10

    .line 88
    .local v7, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v7}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowSettingChanged(Z)V

    .line 89
    return v10

    .line 93
    .end local v7    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowAppTransitionFinished()V

    .line 95
    return v10

    .line 99
    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowScreenFreezeAnimationFinished()V

    .line 101
    return v10

    .line 105
    :sswitch_5
    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v7, 0x1

    .line 109
    .local v7, "_arg0":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    .line 111
    .local v8, "_arg1":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 118
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v7, v8, v9, v4}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowDockedMinimizedChanged(ZZLandroid/content/ComponentName;I)V

    .line 120
    return v10

    .line 107
    .end local v4    # "_arg3":I
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_3

    .line 109
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_4

    .line 115
    :cond_6
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/content/ComponentName;
    goto :goto_5

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
