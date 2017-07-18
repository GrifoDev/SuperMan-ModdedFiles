.class public Lcom/orangelabs/rcs/api/connection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/orangelabs/rcs/api/connection/ConnectionManager$3;,
        Lcom/orangelabs/rcs/api/connection/ConnectionManager$IRcsServiceStartedListener;,
        Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;,
        Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;,
        Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;


# instance fields
.field private final mApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            "Lcom/gsma/services/rcs/RcsService;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientsToNotify:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mManagedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/orangelabs/rcs/api/connection/utils/LogUtils;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Set;Lcom/gsma/services/rcs/RcsServiceControl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;",
            "Lcom/gsma/services/rcs/RcsServiceControl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mManagedServices:Ljava/util/Set;

    iput-object p3, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mConnectedServices:Ljava/util/Set;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Incorrect parameter managedService!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mManagedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager$3;->$SwitchMap$com$orangelabs$rcs$api$connection$ConnectionManager$RcsServiceName:[I

    invoke-virtual {v1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/capability/CapabilityService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/capability/CapabilityService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/chat/ChatService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/chat/ChatService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/contact/ContactService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/contact/ContactService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/filetransfer/FileTransferService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/upload/FileUploadService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/upload/FileUploadService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/history/HistoryService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/history/HistoryService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/extension/MultimediaSessionService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    new-instance v4, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    sget-object v5, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-direct {p0, v5}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mManagedServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mConnectedServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;Ljava/lang/String;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->showMessageAndExit(Landroid/app/Activity;Ljava/lang/String;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/orangelabs/rcs/api/connection/ConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->connectApis()V

    return-void
.end method

.method static synthetic access$500(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->notifyDisconnection(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    return-void
.end method

.method static synthetic access$600(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->notifyConnection(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V

    return-void
.end method

.method private connectApis()V
    .locals 7

    invoke-direct {p0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->isRcsServiceStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->isServiceConnected([Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    sget-object v4, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    const-string v5, "Connect service "

    invoke-virtual {v3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/RcsService;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/RcsService;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    const-string v5, "Cannot connect service "

    invoke-virtual {v3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceControl;Ljava/util/Set;)Lcom/orangelabs/rcs/api/connection/ConnectionManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gsma/services/rcs/RcsServiceControl;",
            "Ljava/util/Set",
            "<",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;",
            ">;)",
            "Lcom/orangelabs/rcs/api/connection/ConnectionManager;"
        }
    .end annotation

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    invoke-direct {v0, p0, p2, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/gsma/services/rcs/RcsServiceControl;)V

    sput-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    goto :goto_0
.end method

.method public static varargs createInstance(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceControl;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/orangelabs/rcs/api/connection/ConnectionManager;
    .locals 6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->createInstance(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceControl;Ljava/util/Set;)Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance()Lcom/orangelabs/rcs/api/connection/ConnectionManager;
    .locals 1

    sget-object v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->sInstance:Lcom/orangelabs/rcs/api/connection/ConnectionManager;

    return-object v0
.end method

.method private isRcsServiceStarted()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mRcsServiceControl:Lcom/gsma/services/rcs/RcsServiceControl;

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isServiceStarted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "Failed to get RCS service starting state!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newRcsServiceListener(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    new-instance v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;

    invoke-direct {v0, p0, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V

    return-object v0
.end method

.method private notifyConnection(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 5

    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;

    invoke-virtual {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->notifyConnection()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDisconnection(Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V
    .locals 6

    sget-object v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->name()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;

    invoke-virtual {v0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->getMonitoredServices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;->notifyDisconnection(Lcom/gsma/services/rcs/RcsServiceListener$ReasonCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showMessageAndExit(Landroid/app/Activity;Ljava/lang/String;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/orangelabs/rcs/api/connection/utils/LockAccess;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exit activity "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ok"

    new-instance v3, Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;

    invoke-direct {v3, p0, p1}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$2;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getCapabilityApi()Lcom/gsma/services/rcs/capability/CapabilityService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CAPABILITY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/capability/CapabilityService;

    return-object v0
.end method

.method public getChatApi()Lcom/gsma/services/rcs/chat/ChatService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CHAT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatService;

    return-object v0
.end method

.method public getContactApi()Lcom/gsma/services/rcs/contact/ContactService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->CONTACT:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactService;

    return-object v0
.end method

.method public getFileTransferApi()Lcom/gsma/services/rcs/filetransfer/FileTransferService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_TRANSFER:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/filetransfer/FileTransferService;

    return-object v0
.end method

.method public getFileUploadApi()Lcom/gsma/services/rcs/upload/FileUploadService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->FILE_UPLOAD:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/upload/FileUploadService;

    return-object v0
.end method

.method public getGeolocSharingApi()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->GEOLOC_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    return-object v0
.end method

.method public getHistoryApi()Lcom/gsma/services/rcs/history/HistoryService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->HISTORY:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/history/HistoryService;

    return-object v0
.end method

.method public getImageSharingApi()Lcom/gsma/services/rcs/sharing/image/ImageSharingService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->IMAGE_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    return-object v0
.end method

.method public getMultimediaSessionApi()Lcom/gsma/services/rcs/extension/MultimediaSessionService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->MULTIMEDIA:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/extension/MultimediaSessionService;

    return-object v0
.end method

.method public getVideoSharingApi()Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mApis:Ljava/util/Map;

    sget-object v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;->VIDEO_SHARING:Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    return-object v0
.end method

.method public varargs isServiceConnected([Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)Z
    .locals 7

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mManagedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not belong to set of managed services!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mConnectedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceReceiver;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/orangelabs/rcs/api/connection/ConnectionManager$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.gsma.services.rcs.action.SERVICE_UP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->connectApis()V

    return-void
.end method

.method public varargs startMonitorApiCnx(Landroid/app/Activity;Lcom/gsma/services/rcs/RcsServiceListener;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    new-instance v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;

    invoke-direct {v1, p0, p2, p3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Lcom/gsma/services/rcs/RcsServiceListener;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs startMonitorServices(Landroid/app/Activity;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V
    .locals 2

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    new-instance v1, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/orangelabs/rcs/api/connection/ConnectionManager$ClientConnectionNotifier;-><init>(Lcom/orangelabs/rcs/api/connection/ConnectionManager;Landroid/app/Activity;Lcom/orangelabs/rcs/api/connection/utils/LockAccess;[Lcom/orangelabs/rcs/api/connection/ConnectionManager$RcsServiceName;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopMonitorApiCnx(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopMonitorServices(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/orangelabs/rcs/api/connection/ConnectionManager;->mClientsToNotify:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
