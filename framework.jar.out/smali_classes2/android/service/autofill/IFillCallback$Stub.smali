.class public abstract Landroid/service/autofill/IFillCallback$Stub;
.super Landroid/os/Binder;
.source "IFillCallback.java"

# interfaces
.implements Landroid/service/autofill/IFillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IFillCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IFillCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IFillCallback"

.field static final TRANSACTION_onCancellable:I = 0x1

.field static final TRANSACTION_onFailure:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.autofill.IFillCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IFillCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IFillCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.service.autofill.IFillCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/autofill/IFillCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/service/autofill/IFillCallback;

    return-object v0

    :cond_1
    new-instance v1, Landroid/service/autofill/IFillCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IFillCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v3, "android.service.autofill.IFillCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v3, "android.service.autofill.IFillCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/autofill/IFillCallback$Stub;->onCancellable(Landroid/os/ICancellationSignal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_2
    const-string/jumbo v3, "android.service.autofill.IFillCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/service/autofill/FillResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/service/autofill/IFillCallback$Stub;->onSuccess(Landroid/service/autofill/FillResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "android.service.autofill.IFillCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v2}, Landroid/service/autofill/IFillCallback$Stub;->onFailure(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
