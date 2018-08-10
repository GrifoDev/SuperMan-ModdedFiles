.class public abstract Lcom/absolute/android/persistence/IABTResultReceiver$Stub;
.super Landroid/os/Binder;
.source "IABTResultReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.absolute.android.persistence.IABTResultReceiver"

.field static final TRANSACTION_onInvokeResult:I = 0x2

.field static final TRANSACTION_onOperationResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTResultReceiver;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1

    :cond_1
    return-object v1

    :cond_2
    instance-of v1, v0, Lcom/absolute/android/persistence/IABTResultReceiver;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/absolute/android/persistence/IABTResultReceiver;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v8, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_1
    const-string/jumbo v8, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v3, v4, v6}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_0
    move v3, v7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-nez v8, :cond_3

    move v5, v3

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/absolute/android/persistence/IABTResultReceiver$Stub;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_1
    sget-object v8, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/MethodSpec;

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/absolute/android/persistence/MethodReturnValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/absolute/android/persistence/MethodReturnValue;

    goto :goto_2

    :cond_3
    move v5, v7

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
