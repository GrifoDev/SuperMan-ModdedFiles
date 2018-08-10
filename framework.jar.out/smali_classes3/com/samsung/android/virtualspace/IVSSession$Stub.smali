.class public abstract Lcom/samsung/android/virtualspace/IVSSession$Stub;
.super Landroid/os/Binder;
.source "IVSSession.java"

# interfaces
.implements Lcom/samsung/android/virtualspace/IVSSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/virtualspace/IVSSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/virtualspace/IVSSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.virtualspace.IVSSession"

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_createScreen:I = 0x3

.field static final TRANSACTION_createScreenDefault:I = 0x2

.field static final TRANSACTION_dispatchKeyEvent:I = 0x4

.field static final TRANSACTION_setMouseCursorVisibility:I = 0x6

.field static final TRANSACTION_setVirtualKeyboardMode:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/virtualspace/IVSSession;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.virtualspace.IVSSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/virtualspace/IVSSession;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/virtualspace/IVSSession;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/virtualspace/IVSSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/virtualspace/IVSSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_0
    const-string/jumbo v8, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->createScreenDefault(I)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/samsung/android/virtualspace/IVSScreen;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->createScreen(IIII)Lcom/samsung/android/virtualspace/IVSScreen;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/samsung/android/virtualspace/IVSScreen;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    :cond_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v9

    :sswitch_4
    const-string/jumbo v8, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_3

    move v8, v9

    :goto_1
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v8, v10

    goto :goto_1

    :sswitch_5
    const-string/jumbo v8, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->setVirtualKeyboardMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_6
    const-string/jumbo v8, "com.samsung.android.virtualspace.IVSSession"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/virtualspace/IVSSession$Stub;->setMouseCursorVisibility(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

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
