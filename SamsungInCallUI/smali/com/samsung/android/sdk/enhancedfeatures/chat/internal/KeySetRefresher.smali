.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_APP_ID:Ljava/lang/String; = "key_app_id"

.field private static final KEY_MY_DUID:Ljava/lang/String; = "key_my_duid"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;


# instance fields
.field private _listener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private onKeyUpdateListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->_listener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;)Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->onKeyUpdateListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;

    return-object v0
.end method


# virtual methods
.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;)V
    .locals 3

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->onKeyUpdateListener:Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/listener/KeyUpdateLister;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start. myDuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/util/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_my_duid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_app_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/internal/KeySetRefresher;->_listener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-static {v1, p3, v2, v0}, Lcom/samsung/android/sdk/ssf/message/MessageSecurity;->getKey(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/Object;)V

    return-void
.end method
