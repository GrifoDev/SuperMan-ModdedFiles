.class public abstract Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;
.super Landroid/os/Binder;
.source "ISemDirectPenInputClient.java"

# interfaces
.implements Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.directpeninput.ISemDirectPenInputClient"

.field static final TRANSACTION_onResultReceived:I = 0x3

.field static final TRANSACTION_onTextDeleted:I = 0x2

.field static final TRANSACTION_onTextInserted:I = 0x1

.field static final TRANSACTION_onUpdateDialog:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onTextInserted(IILjava/lang/CharSequence;I)V

    return v7

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onTextDeleted(III)V

    return v7

    :sswitch_3
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onResultReceived(ILandroid/os/Bundle;)V

    return v7

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onUpdateDialog(I)V

    return v7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
