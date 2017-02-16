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

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v7, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v7

    .line 50
    :sswitch_1
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 64
    .local v5, "_arg3":I
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onTextInserted(IILjava/lang/CharSequence;I)V

    .line 65
    return v7

    .line 60
    .end local v5    # "_arg3":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg2":Ljava/lang/CharSequence;
    goto :goto_0

    .line 69
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/CharSequence;
    :sswitch_2
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onTextDeleted(III)V

    .line 77
    return v7

    .line 81
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_3
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 91
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onResultReceived(ILandroid/os/Bundle;)V

    .line 92
    return v7

    .line 89
    :cond_1
    const/4 v2, 0x0

    .local v2, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 96
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v6, "com.samsung.android.directpeninput.ISemDirectPenInputClient"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 99
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/directpeninput/ISemDirectPenInputClient$Stub;->onUpdateDialog(I)V

    .line 100
    return v7

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
