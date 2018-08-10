.class public abstract Lcom/sec/ims/volte2/IImsVideoListener$Stub;
.super Landroid/os/Binder;
.source "IImsVideoListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.ims.volte2.IImsVideoListener"

.field static final TRANSACTION_onCallDownGraded:I = 0xb

.field static final TRANSACTION_onCameraEvent:I = 0x2

.field static final TRANSACTION_onCameraFirstFrameReady:I = 0x3

.field static final TRANSACTION_onCameraStopEvent:I = 0x8

.field static final TRANSACTION_onCameraSwitchFailure:I = 0x7

.field static final TRANSACTION_onCameraSwitchSuccess:I = 0x6

.field static final TRANSACTION_onCaptureFailure:I = 0x5

.field static final TRANSACTION_onCaptureSuccess:I = 0x4

.field static final TRANSACTION_onNoFarFrame:I = 0xc

.field static final TRANSACTION_onVideoAttemped:I = 0xd

.field static final TRANSACTION_onVideoAvailable:I = 0x1

.field static final TRANSACTION_onVideoHeld:I = 0x9

.field static final TRANSACTION_onVideoResumed:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.sec.ims.volte2.IImsVideoListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsVideoListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/ims/volte2/IImsVideoListener;

    return-object v0

    :cond_1
    new-instance v1, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoAvailable(I)V

    return v5

    :sswitch_2
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraEvent(IZ)V

    return v5

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraFirstFrameReady(I)V

    return v5

    :sswitch_4
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCaptureSuccess(IZLjava/lang/String;)V

    return v5

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCaptureFailure(IZ)V

    return v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :sswitch_6
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraSwitchSuccess(II)V

    return v5

    :sswitch_7
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraSwitchFailure(II)V

    return v5

    :sswitch_8
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCameraStopEvent(IZ)V

    return v5

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :sswitch_9
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoHeld(I)V

    return v5

    :sswitch_a
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoResumed(I)V

    return v5

    :sswitch_b
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onCallDownGraded(I)V

    return v5

    :sswitch_c
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onNoFarFrame(I)V

    return v5

    :sswitch_d
    const-string/jumbo v4, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub;->onVideoAttemped(I)V

    return v5

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
