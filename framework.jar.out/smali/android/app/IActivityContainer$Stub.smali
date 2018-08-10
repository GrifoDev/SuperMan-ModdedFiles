.class public abstract Landroid/app/IActivityContainer$Stub;
.super Landroid/os/Binder;
.source "IActivityContainer.java"

# interfaces
.implements Landroid/app/IActivityContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityContainer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityContainer"

.field static final TRANSACTION_addToDisplay:I = 0x1

.field static final TRANSACTION_getDisplayId:I = 0x5

.field static final TRANSACTION_getStackId:I = 0x6

.field static final TRANSACTION_injectEvent:I = 0x7

.field static final TRANSACTION_release:I = 0x8

.field static final TRANSACTION_setSurface:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityIntentSender:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IActivityContainer"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityContainer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.IActivityContainer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityContainer;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IActivityContainer;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/IActivityContainer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityContainer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_0
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_1
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/IActivityContainer$Stub;->addToDisplay(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :sswitch_2
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/app/IActivityContainer$Stub;->setSurface(Landroid/view/Surface;III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/IActivityContainer$Stub;->startActivity(Landroid/content/Intent;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/IActivityContainer$Stub;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_5
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getDisplayId()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_6
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getStackId()I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_7
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputEvent;

    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/IActivityContainer$Stub;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    :sswitch_8
    const-string/jumbo v10, "android.app.IActivityContainer"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->release()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v10, 0x1

    return v10

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
