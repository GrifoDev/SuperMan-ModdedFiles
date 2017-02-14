.class public Landroid/net/wifi/hs20/WifiHs20Manager$Channel;
.super Ljava/lang/Object;
.source "WifiHs20Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;
    }
.end annotation


# static fields
.field private static final INVALID_LISTENER_KEY:I


# instance fields
.field private mAnqpRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mAnqpRequestLock:Ljava/lang/Object;

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;)Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mHandler:Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;IZ)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->getListener(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->peekListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->anqpRequestFinish(Landroid/net/wifi/ScanResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerKey:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequest:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;-><init>(Landroid/net/wifi/hs20/WifiHs20Manager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mHandler:Landroid/net/wifi/hs20/WifiHs20Manager$Channel$PasspointHandler;

    iput-object p3, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mChannelListener:Landroid/net/wifi/hs20/WifiHs20Manager$ChannelListener;

    iput-object p1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private anqpRequestFinish(Landroid/net/wifi/ScanResult;)V
    .locals 5

    const-string/jumbo v2, "Hs20Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "anqpRequestFinish sr.bssid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private anqpRequestStart(Landroid/net/wifi/ScanResult;)V
    .locals 3

    const-string/jumbo v0, "Hs20Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "anqpRequestStart sr.bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mAnqpRequest:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getListener(IZ)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "Hs20Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getListener() key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p2, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "Hs20Manager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    monitor-exit v2

    return-object v5

    :cond_1
    :try_start_1
    const-string/jumbo v1, "Hs20Manager"

    const-string/jumbo v3, "remove key"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private peekListener(I)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "Hs20Manager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "peekListener() key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->putListener(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private putListener(Ljava/lang/Object;I)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_2
    :try_start_0
    iget v0, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerKey:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hs20/WifiHs20Manager$Channel;->mListenerMapCount:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
