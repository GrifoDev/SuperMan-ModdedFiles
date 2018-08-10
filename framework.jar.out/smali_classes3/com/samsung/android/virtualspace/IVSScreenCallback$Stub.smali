.class public abstract Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;
.super Landroid/os/Binder;
.source "IVSScreenCallback.java"

# interfaces
.implements Lcom/samsung/android/virtualspace/IVSScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/IVSScreenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.virtualspace.IVSScreenCallback"

.field static final TRANSACTION_onAppOrientationChanged:I = 0x7

.field static final TRANSACTION_onBoundsChanged:I = 0x4

.field static final TRANSACTION_onClosed:I = 0x6

.field static final TRANSACTION_onContentChanged:I = 0x2

.field static final TRANSACTION_onIMETargetChanged:I = 0x8

.field static final TRANSACTION_onLost:I = 0x3

.field static final TRANSACTION_onOrientationChanged:I = 0x1

.field static final TRANSACTION_onReady:I = 0x5

.field static final TRANSACTION_onTopTaskUpdated:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreenCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/virtualspace/IVSScreenCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v5

    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onContentChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    return v5

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onLost(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v5

    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onBoundsChanged(Lcom/samsung/android/virtualspace/IVSScreen;Landroid/graphics/Rect;)V

    return v5

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onReady(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v5

    :sswitch_6
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onClosed(Lcom/samsung/android/virtualspace/IVSScreen;)V

    return v5

    :sswitch_7
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onAppOrientationChanged(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v5

    :sswitch_8
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onIMETargetChanged(Lcom/samsung/android/virtualspace/IVSScreen;Z)V

    return v5

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :sswitch_9
    const-string/jumbo v4, "com.samsung.android.virtualspace.IVSScreenCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/virtualspace/IVSScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/virtualspace/IVSScreenCallback$Stub;->onTopTaskUpdated(Lcom/samsung/android/virtualspace/IVSScreen;I)V

    return v5

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
