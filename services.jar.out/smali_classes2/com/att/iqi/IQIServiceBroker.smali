.class public Lcom/att/iqi/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/IQIServiceBroker$1;,
        Lcom/att/iqi/IQIServiceBroker$2;,
        Lcom/att/iqi/IQIServiceBroker$3;,
        Lcom/att/iqi/IQIServiceBroker$4;,
        Lcom/att/iqi/IQIServiceBroker$5;,
        Lcom/att/iqi/IQIServiceBroker$BinderService;,
        Lcom/att/iqi/IQIServiceBroker$ServiceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field private static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field private static final IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_IQI_STATE_BROADCAST"

.field private static final MSG_CHECK_VALID:I = 0x2

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field private static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field private static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"


# instance fields
.field private mApplicationEnabled:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field private mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mServicePublished:Z

.field private mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field private final mServiceStubForFailure:Lcom/att/iqi/IIQIService;

.field private mStateChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/att/iqi/IQIServiceBroker;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method

.method static synthetic -set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/att/iqi/IQIServiceBroker;I)I
    .locals 0

    iput p1, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$ServiceState;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/att/iqi/IQIServiceBroker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->appEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/att/iqi/IQIServiceBroker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->checkPkgValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/att/iqi/IQIServiceBroker;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->maybeIsValidKeyCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/att/iqi/IQIServiceBroker;)Z
    .locals 1

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 1

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/att/iqi/IQIServiceBroker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->unregisterReceivers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.att.iqi"

    const-string/jumbo v2, "com.att.iqi.service.IQService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    sget-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    iput-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    iput-boolean v1, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$1;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$2;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$3;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$4;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$5;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$5;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->registerPackageMonitor()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/att/iqi/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method private appEnabled()Z
    .locals 5

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v4, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    iget-boolean v4, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    return v4

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private checkPkgValidity()Z
    .locals 12

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v6, 0x40

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_2

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v5, v8, v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    iput v10, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v7

    :cond_1
    monitor-exit p0

    return v4

    :catch_0
    move-exception v0

    :try_start_1
    iget v6, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v8, 0xa

    if-ge v6, v8, :cond_2

    iget v6, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    iget-object v6, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0xbb8

    invoke-virtual {v6, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return v7

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .locals 1

    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v0

    return-object v0
.end method

.method private getOrConnectService()Lcom/att/iqi/IIQIService;
    .locals 11

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v6, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v6, :cond_0

    monitor-exit p0

    return-object v10

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long v2, v6, v8

    const-wide/16 v4, 0xbb8

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/att/iqi/IQIServiceBroker;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/att/iqi/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method private maybeIsValidKeyCode(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "^#\\*47[\\d]+#$"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 4

    new-instance v0, Lcom/att/iqi/IQIServiceBroker$6;

    invoke-direct {v0, p0}, Lcom/att/iqi/IQIServiceBroker$6;-><init>(Lcom/att/iqi/IQIServiceBroker;)V

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method private registerReceivers(Z)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.att.iqi.permission.RECEIVE_IQI_STATE_BROADCAST"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shouldConnect()Z
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceState:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mApplicationEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public final getBrokeredService()Lcom/att/iqi/IIQIService;
    .locals 2

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->shouldConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getOrConnectService()Lcom/att/iqi/IIQIService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    return-object v1
.end method

.method public onBootPhase(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "iqi"

    new-instance v1, Lcom/att/iqi/IQIServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/att/iqi/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IQIServiceBroker$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/IQIServiceBroker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/att/iqi/IQIServiceBroker;->mServicePublished:Z

    return-void
.end method

.method public final tryConnecting()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/att/iqi/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/att/iqi/IQIBridgeLoader;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/att/iqi/IQIServiceBroker;->mRetryCount:I

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/att/iqi/IQIServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final tryDisconnecting()V
    .locals 2

    const-string/jumbo v0, "IQIServiceBroker"

    const-string/jumbo v1, "Disconnecting from implementation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "IQIServiceBroker"

    const-string/jumbo v1, "Already disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/att/iqi/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
