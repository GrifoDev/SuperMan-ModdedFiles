.class public abstract Landroid/print/IPrinterDiscoveryObserver$Stub;
.super Landroid/os/Binder;
.source "IPrinterDiscoveryObserver.java"

# interfaces
.implements Landroid/print/IPrinterDiscoveryObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrinterDiscoveryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrinterDiscoveryObserver"

.field static final TRANSACTION_onPrintersAdded:I = 0x1

.field static final TRANSACTION_onPrintersRemoved:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;
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
    const-string/jumbo v1, "android.print.IPrinterDiscoveryObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrinterDiscoveryObserver;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/print/IPrinterDiscoveryObserver;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrinterDiscoveryObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 3
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 47
    :sswitch_0
    const-string/jumbo v1, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v2

    .line 52
    :sswitch_1
    const-string/jumbo v1, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 60
    :goto_0
    invoke-virtual {p0, v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    .line 61
    return v2

    .line 58
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_0

    .line 65
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string/jumbo v1, "android.print.IPrinterDiscoveryObserver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 73
    :goto_1
    invoke-virtual {p0, v0}, Landroid/print/IPrinterDiscoveryObserver$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    .line 74
    return v2

    .line 71
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_1

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
