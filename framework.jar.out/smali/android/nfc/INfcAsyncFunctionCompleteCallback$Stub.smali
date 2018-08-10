.class public abstract Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;
.super Landroid/os/Binder;
.source "INfcAsyncFunctionCompleteCallback.java"

# interfaces
.implements Landroid/nfc/INfcAsyncFunctionCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAsyncFunctionCompleteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAsyncFunctionCompleteCallback"

.field static final TRANSACTION_onFunctionComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.nfc.INfcAsyncFunctionCompleteCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAsyncFunctionCompleteCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.nfc.INfcAsyncFunctionCompleteCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcAsyncFunctionCompleteCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/nfc/INfcAsyncFunctionCompleteCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_0
    const-string/jumbo v2, "android.nfc.INfcAsyncFunctionCompleteCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_1
    const-string/jumbo v2, "android.nfc.INfcAsyncFunctionCompleteCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/nfc/INfcAsyncFunctionCompleteCallback$Stub;->onFunctionComplete(IZ)V

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
