.class public abstract Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "ISemDirectPenInputConnectionCallback.java"

# interfaces
.implements Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

.field static final TRANSACTION_onResultReceive:I = 0x1

.field static final TRANSACTION_onStatusRequest:I = 0x3

.field static final TRANSACTION_onWritingResultReceive:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;->onResultReceive(IZLandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    :goto_3
    invoke-virtual {p0, v0, v1, v4}, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;->onWritingResultReceive(ILjava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.directpeninput.ISemDirectPenInputConnectionCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;->onStatusRequest(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v6

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
