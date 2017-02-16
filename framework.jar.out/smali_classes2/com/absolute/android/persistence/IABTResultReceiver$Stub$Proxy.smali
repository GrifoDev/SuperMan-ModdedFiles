.class Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IABTResultReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTResultReceiver$Stub;
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
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.absolute.android.persistence.IABTResultReceiver"

    .line 111
    return-object v0
.end method

.method public onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.absolute.android.persistence.IABTResultReceiver"

    .line 181
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 187
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    :goto_0
    if-nez p2, :cond_1

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    :goto_1
    if-nez p3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 199
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 205
    return-void

    :cond_0
    const/4 v4, 0x1

    .line 183
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p1, v2, v4}, Lcom/absolute/android/persistence/MethodSpec;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    .line 202
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    const/4 v4, 0x1

    .line 190
    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p2, v2, v4}, Lcom/absolute/android/persistence/MethodReturnValue;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 196
    goto :goto_2
.end method

.method public onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "com.absolute.android.persistence.IABTResultReceiver"

    .line 141
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    if-nez p2, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 147
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 150
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
