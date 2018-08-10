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

.field static final TRANSACTION_onAutoResizeStateChanged:I = 0x2

.field static final TRANSACTION_onDockedStackMinimizedChanged:I = 0x5

.field static final TRANSACTION_onFocusStackChanged:I = 0x1

.field static final TRANSACTION_onMultiWindowEnableChanged:I = 0x3

.field static final TRANSACTION_onScreenFreezeAnimationFinished:I = 0x4

.field static final TRANSACTION_onSnapWindowDismissed:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onFocusStackChanged(I)V

    return v9

    :sswitch_2
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v0, v3, v6, v7}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return v9

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :sswitch_3
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onMultiWindowEnableChanged(Z)V

    return v9

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_4
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onScreenFreezeAnimationFinished()V

    return v9

    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    :goto_6
    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V

    return v9

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    :sswitch_6
    const-string/jumbo v8, "com.samsung.android.multiwindow.IMultiWindowEventListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener$Stub;->onSnapWindowDismissed(Ljava/lang/String;)V

    return v9

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
