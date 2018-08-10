.class public abstract Landroid/media/ICas$Stub;
.super Landroid/os/Binder;
.source "ICas.java"

# interfaces
.implements Landroid/media/ICas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ICas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICas$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.ICas"

.field static final TRANSACTION_closeSession:I = 0x3

.field static final TRANSACTION_openSession:I = 0x2

.field static final TRANSACTION_processEcm:I = 0x5

.field static final TRANSACTION_processEmm:I = 0x6

.field static final TRANSACTION_provision:I = 0x8

.field static final TRANSACTION_refreshEntitlements:I = 0x9

.field static final TRANSACTION_release:I = 0xa

.field static final TRANSACTION_sendEvent:I = 0x7

.field static final TRANSACTION_setPrivateData:I = 0x1

.field static final TRANSACTION_setSessionPrivateData:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.ICas"

    invoke-virtual {p0, p0, v0}, Landroid/media/ICas$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/ICas;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.media.ICas"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/ICas;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/media/ICas;

    return-object v0

    :cond_1
    new-instance v1, Landroid/media/ICas$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/ICas$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_0
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_1
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/ICas$Stub;->setPrivateData([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_2
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/ICas$Stub;->openSession()[B

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeByteArray([B)V

    return v10

    :sswitch_3
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/ICas$Stub;->closeSession([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_4
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Landroid/media/ICas$Stub;->setSessionPrivateData([B[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_5
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Landroid/media/MediaCas$ParcelableCasData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaCas$ParcelableCasData;

    :goto_0
    invoke-virtual {p0, v3, v5}, Landroid/media/ICas$Stub;->processEcm([BLandroid/media/MediaCas$ParcelableCasData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :sswitch_6
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Landroid/media/MediaCas$ParcelableCasData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCas$ParcelableCasData;

    :goto_1
    invoke-virtual {p0, v1}, Landroid/media/ICas$Stub;->processEmm(Landroid/media/MediaCas$ParcelableCasData;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_7
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v0, v4, v7}, Landroid/media/ICas$Stub;->sendEvent(II[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_8
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/ICas$Stub;->provision(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_9
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Landroid/media/ICas$Stub;->refreshEntitlements(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_a
    const-string/jumbo v9, "android.media.ICas"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/ICas$Stub;->release()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
