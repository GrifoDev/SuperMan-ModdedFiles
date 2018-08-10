.class public abstract Landroid/app/ITaskStackListener$Stub;
.super Landroid/os/Binder;
.source "ITaskStackListener.java"

# interfaces
.implements Landroid/app/ITaskStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITaskStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedStack:I = 0x8

.field static final TRANSACTION_onActivityForcedResizable:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x9

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xe

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onPinnedActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onPinnedStackAnimationEnded:I = 0x6

.field static final TRANSACTION_onPinnedStackAnimationStarted:I = 0x5

.field static final TRANSACTION_onTaskCreated:I = 0xa

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xd

.field static final TRANSACTION_onTaskMovedToFront:I = 0xc

.field static final TRANSACTION_onTaskProfileLocked:I = 0x10

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xf

.field static final TRANSACTION_onTaskRemoved:I = 0xb

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x11

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITaskStackListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.ITaskStackListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ITaskStackListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/ITaskStackListener;

    return-object v0

    :cond_1
    new-instance v1, Landroid/app/ITaskStackListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITaskStackListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onTaskStackChanged()V

    return v9

    :sswitch_2
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityPinned(Ljava/lang/String;I)V

    return v9

    :sswitch_3
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityUnpinned()V

    return v9

    :sswitch_4
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/ITaskStackListener$Stub;->onPinnedActivityRestartAttempt(Z)V

    return v9

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_5
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationStarted()V

    return v9

    :sswitch_6
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onPinnedStackAnimationEnded()V

    return v9

    :sswitch_7
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v3, v7}, Landroid/app/ITaskStackListener$Stub;->onActivityForcedResizable(Ljava/lang/String;II)V

    return v9

    :sswitch_8
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityDismissingDockedStack()V

    return v9

    :sswitch_9
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ITaskStackListener$Stub;->onActivityLaunchOnSecondaryDisplayFailed()V

    return v9

    :sswitch_a
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    :goto_1
    invoke-virtual {p0, v0, v6}, Landroid/app/ITaskStackListener$Stub;->onTaskCreated(ILandroid/content/ComponentName;)V

    return v9

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :sswitch_b
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemoved(I)V

    return v9

    :sswitch_c
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskMovedToFront(I)V

    return v9

    :sswitch_d
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$TaskDescription;

    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/ITaskStackListener$Stub;->onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V

    return v9

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :sswitch_e
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onActivityRequestedOrientationChanged(II)V

    return v9

    :sswitch_f
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ITaskStackListener$Stub;->onTaskRemovalStarted(I)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/app/ITaskStackListener$Stub;->onTaskProfileLocked(II)V

    return v9

    :sswitch_11
    const-string/jumbo v8, "android.app.ITaskStackListener"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroid/app/ActivityManager$TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    :goto_3
    invoke-virtual {p0, v0, v5}, Landroid/app/ITaskStackListener$Stub;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    return v9

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
