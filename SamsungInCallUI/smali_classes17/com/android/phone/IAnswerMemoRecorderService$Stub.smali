.class public abstract Lcom/android/phone/IAnswerMemoRecorderService$Stub;
.super Landroid/os/Binder;
.source "IAnswerMemoRecorderService.java"

# interfaces
.implements Lcom/android/phone/IAnswerMemoRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IAnswerMemoRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IAnswerMemoRecorderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.phone.IAnswerMemoRecorderService"

.field static final TRANSACTION_getRecordTime:I = 0x7

.field static final TRANSACTION_isPaused:I = 0x6

.field static final TRANSACTION_isVoiceRecording:I = 0x5

.field static final TRANSACTION_pauseRecord:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x9

.field static final TRANSACTION_resumeRecord:I = 0x4

.field static final TRANSACTION_setCallerNumber:I = 0x8

.field static final TRANSACTION_startRecord:I = 0x1

.field static final TRANSACTION_stopRecord:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/phone/IAnswerMemoRecorderService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/phone/IAnswerMemoRecorderService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/phone/IAnswerMemoRecorderService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
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

    const/4 v1, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->startRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_2
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->stopRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->pauseRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->resumeRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->isVoiceRecording()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_6
    const-string v5, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->isPaused()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_7
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->getRecordTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :sswitch_8
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->setCallerNumber(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_9
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "com.android.phone.IAnswerMemoRecorderService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/IAnswerMemoRecorderServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
