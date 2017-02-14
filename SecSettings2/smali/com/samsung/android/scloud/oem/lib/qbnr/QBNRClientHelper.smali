.class public Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;
.super Ljava/lang/Object;
.source "QBNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private contentsId:Ljava/lang/String;

.field private mClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

.field private mIsFinished:Z

.field private mIsSuccess:Z

.field private mName:Ljava/lang/String;

.field private mProcNow:J

.field private mProcTotal:J

.field private final syncServiceHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    const-string/jumbo v0, "QBNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init SyncClientHelper : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->category:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->contentsId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->setHandlers()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->contentsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->init()V

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    return v0
.end method

.method static synthetic access$9(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return v0
.end method

.method private init()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide v2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;

    invoke-interface {v0, p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method setHandlers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "getClientInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "backup"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "restore"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->syncServiceHandlerMap:Ljava/util/Map;

    const-string/jumbo v1, "get_status"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
