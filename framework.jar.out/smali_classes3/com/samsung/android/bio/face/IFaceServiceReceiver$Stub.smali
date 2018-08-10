.class public abstract Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IFaceServiceReceiver.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bio.face.IFaceServiceReceiver"

.field static final TRANSACTION_onAcquired:I = 0x2

.field static final TRANSACTION_onAuthenticationFailed:I = 0x4

.field static final TRANSACTION_onAuthenticationSucceeded:I = 0x3

.field static final TRANSACTION_onEnrollResult:I = 0x1

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onRemoved:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v0

    :cond_1
    new-instance v1, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_0
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onEnrollResult(JIII)V

    return v9

    :sswitch_2
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAcquired(JILjava/lang/String;)V

    return v9

    :sswitch_3
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bio/face/SemBioFace;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v2, v3, v0, v8}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationSucceeded(JLcom/samsung/android/bio/face/SemBioFace;[B)V

    return v9

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onAuthenticationFailed(J)V

    return v9

    :sswitch_5
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onError(JILjava/lang/String;)V

    return v9

    :sswitch_6
    const-string/jumbo v1, "com.samsung.android.bio.face.IFaceServiceReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/bio/face/IFaceServiceReceiver$Stub;->onRemoved(JII)V

    return v9

    nop

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
