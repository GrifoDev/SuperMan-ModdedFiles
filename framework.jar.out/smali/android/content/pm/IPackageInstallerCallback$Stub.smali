.class public abstract Landroid/content/pm/IPackageInstallerCallback$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerCallback.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerCallback"

.field static final TRANSACTION_onSessionActiveChanged:I = 0x3

.field static final TRANSACTION_onSessionBadgingChanged:I = 0x2

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionFinished:I = 0x5

.field static final TRANSACTION_onSessionProgressChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageInstallerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionCreated(I)V

    return v3

    :sswitch_2
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionBadgingChanged(I)V

    return v3

    :sswitch_3
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionActiveChanged(IZ)V

    return v3

    :sswitch_4
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionProgressChanged(IF)V

    return v3

    :sswitch_5
    const-string/jumbo v4, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionFinished(IZ)V

    return v3

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
