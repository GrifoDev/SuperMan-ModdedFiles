.class Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IABTGetAppInfoReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 88
    return-object v0
.end method

.method public onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.absolute.android.persistence.IABTGetAppInfoReceiver"

    .line 116
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    if-nez p3, :cond_1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    :goto_1
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 134
    return-void

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 120
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p3, v2, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 131
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
