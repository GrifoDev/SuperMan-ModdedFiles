.class public abstract Landroid/content/pm/IOtaDexopt$Stub;
.super Landroid/os/Binder;
.source "IOtaDexopt.java"

# interfaces
.implements Landroid/content/pm/IOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOtaDexopt"

.field static final TRANSACTION_cleanup:I = 0x2

.field static final TRANSACTION_dexoptNextPackage:I = 0x5

.field static final TRANSACTION_getProgress:I = 0x4

.field static final TRANSACTION_isDone:I = 0x3

.field static final TRANSACTION_nextDexoptCommand:I = 0x6

.field static final TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IOtaDexopt"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOtaDexopt;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.pm.IOtaDexopt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IOtaDexopt;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IOtaDexopt;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/pm/IOtaDexopt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->prepare()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_2
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->cleanup()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_3
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->isDone()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->getProgress()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return v4

    :sswitch_5
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->dexoptNextPackage()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_6
    const-string/jumbo v3, "android.content.pm.IOtaDexopt"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    nop

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
