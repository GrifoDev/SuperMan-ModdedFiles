.class public abstract Landroid/print/IPrintDocumentAdapterObserver$Stub;
.super Landroid/os/Binder;
.source "IPrintDocumentAdapterObserver.java"

# interfaces
.implements Landroid/print/IPrintDocumentAdapterObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/IPrintDocumentAdapterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintDocumentAdapterObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.print.IPrintDocumentAdapterObserver"

.field static final TRANSACTION_onDestroy:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.print.IPrintDocumentAdapterObserver"

    invoke-virtual {p0, p0, v0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/print/IPrintDocumentAdapterObserver;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.print.IPrintDocumentAdapterObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/print/IPrintDocumentAdapterObserver;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/print/IPrintDocumentAdapterObserver;

    return-object v0

    :cond_1
    new-instance v1, Landroid/print/IPrintDocumentAdapterObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/print/IPrintDocumentAdapterObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "android.print.IPrintDocumentAdapterObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    const-string/jumbo v0, "android.print.IPrintDocumentAdapterObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/print/IPrintDocumentAdapterObserver$Stub;->onDestroy()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
