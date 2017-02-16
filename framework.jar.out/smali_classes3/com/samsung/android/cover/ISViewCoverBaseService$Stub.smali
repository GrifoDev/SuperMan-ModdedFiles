.class public abstract Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.super Landroid/os/Binder;
.source "ISViewCoverBaseService.java"

# interfaces
.implements Lcom/samsung/android/cover/ISViewCoverBaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ISViewCoverBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cover.ISViewCoverBaseService"

.field static final TRANSACTION_isCoverViewShowing:I = 0x5

.field static final TRANSACTION_onCoverAppCovered:I = 0x6

.field static final TRANSACTION_onSViewCoverHide:I = 0x3

.field static final TRANSACTION_onSViewCoverShow:I = 0x2

.field static final TRANSACTION_onSystemReady:I = 0x1

.field static final TRANSACTION_updateCoverState:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ISViewCoverBaseService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cover/ISViewCoverBaseService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v5

    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSystemReady()V

    .line 50
    return v5

    .line 54
    :sswitch_2
    const-string/jumbo v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverShow()V

    .line 56
    return v5

    .line 60
    :sswitch_3
    const-string/jumbo v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onSViewCoverHide()V

    .line 62
    return v5

    .line 66
    :sswitch_4
    const-string/jumbo v4, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    sget-object v4, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/CoverState;

    .line 74
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v5

    .line 72
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Lcom/samsung/android/cover/CoverState;
    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Lcom/samsung/android/cover/CoverState;
    :sswitch_5
    const-string/jumbo v6, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->isCoverViewShowing()Z

    move-result v3

    .line 82
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    return v5

    .line 88
    .end local v3    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "com.samsung.android.cover.ISViewCoverBaseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 91
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;->onCoverAppCovered(Z)I

    move-result v2

    .line 92
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v5

    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :cond_2
    move v1, v4

    .line 90
    goto :goto_1

    .line 39
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
