.class public Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.super Ljava/lang/Object;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;,
        Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;
    }
.end annotation


# static fields
.field private static isSimLocked:Z


# instance fields
.field private final CMD:[B

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I

.field resp:[B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->getOemSimLock()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    iput-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iput-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$2;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$3;-><init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V

    iput-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x2t
        0x0t
        0x4t
    .end array-data
.end method

.method private getOemSimLock()Z
    .locals 6

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "getOemSimLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x6d

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->sendRilRequest([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "getOemSimLock exception occured during operation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v3

    :catch_2
    move-exception v2

    const-string/jumbo v4, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v2

    const-string/jumbo v4, "network_lock"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetSimLockResponse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "response is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget-byte v1, v0, v4

    if-nez v1, :cond_2

    const-string/jumbo v1, "sprnetwork_lock"

    const-string/jumbo v2, "checklock lock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkLocked(Landroid/content/Context;)V

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGetSimLockResponse buf.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " buf is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v1, "sprnetwork_lock"

    const-string/jumbo v2, "checklock unlock: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setSPRNetworkUnLocked(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "network_lock"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isSPRNetworkUnLocked(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "spr_network_lock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "network_lock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSPRNetworkUnLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ro.boot.carrierid"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "not support sprSimLock always unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Setting_SupportSimUnlock"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSprBootCarrierId()Z

    move-result v1

    :cond_3
    if-nez v1, :cond_0

    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "not support sprSimLock always unlocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isSprBootCarrierId()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "SPR"

    aput-object v2, v1, v4

    const-string/jumbo v2, "VMU"

    aput-object v2, v1, v5

    const-string/jumbo v2, "BST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "XAS"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "ro.boot.carrierid"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    return v4
.end method

.method public static isVzwNetworkUnLocked(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vzw_network_lock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "network_lock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVzwNetworkUnLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRilRequest([BII)V
    .locals 3

    const-string/jumbo v0, "network_lock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mWaitingMessage:I

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public static setSPRNetworkLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spr_network_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setSPRNetworkLocked to 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setSPRNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "spr_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setSPRNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setVzwNetworkUnLocked(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vzw_network_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "network_lock"

    const-string/jumbo v1, "setVzwNetworkUnLocked to 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkLockStatus()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->CMD:[B

    iget-object v4, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "check lock fail: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    sget-boolean v4, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;->onChangeLockStatus(Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->resp:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-ne v3, v5, :cond_4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "checklock lock: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    sget-boolean v4, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;->onChangeLockStatus(Z)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->isSimLocked:Z

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "checklock unlock: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "can not check lock "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public checkLockStatus(Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mLockStatusListener:Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->checkLockStatus()V

    return-void
.end method

.method public getSPROemSimLock(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "network_lock"

    const-string/jumbo v2, "getSPROemSimLock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
