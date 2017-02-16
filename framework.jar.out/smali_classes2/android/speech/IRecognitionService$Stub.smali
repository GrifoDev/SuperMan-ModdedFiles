.class public abstract Landroid/speech/IRecognitionService$Stub;
.super Landroid/os/Binder;
.source "IRecognitionService.java"

# interfaces
.implements Landroid/speech/IRecognitionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionService"

.field static final TRANSACTION_cancel:I = 0x3

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string/jumbo v0, "android.speech.IRecognitionService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    const-string/jumbo v1, "android.speech.IRecognitionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/speech/IRecognitionService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/speech/IRecognitionService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 39
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/speech/IRecognitionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v4, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 51
    :sswitch_0
    const-string/jumbo v3, "android.speech.IRecognitionService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return v4

    .line 56
    :sswitch_1
    const-string/jumbo v3, "android.speech.IRecognitionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 65
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v2

    .line 66
    .local v2, "_arg1":Landroid/speech/IRecognitionListener;
    invoke-virtual {p0, v0, v2}, Landroid/speech/IRecognitionService$Stub;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V

    .line 67
    return v4

    .line 62
    .end local v2    # "_arg1":Landroid/speech/IRecognitionListener;
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/content/Intent;
    :sswitch_2
    const-string/jumbo v3, "android.speech.IRecognitionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v1

    .line 74
    .local v1, "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p0, v1}, Landroid/speech/IRecognitionService$Stub;->stopListening(Landroid/speech/IRecognitionListener;)V

    .line 75
    return v4

    .line 79
    .end local v1    # "_arg0":Landroid/speech/IRecognitionListener;
    :sswitch_3
    const-string/jumbo v3, "android.speech.IRecognitionService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/speech/IRecognitionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Landroid/speech/IRecognitionListener;
    invoke-virtual {p0, v1}, Landroid/speech/IRecognitionService$Stub;->cancel(Landroid/speech/IRecognitionListener;)V

    .line 83
    return v4

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
