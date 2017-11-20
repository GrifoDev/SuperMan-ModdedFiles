.class public Lcom/android/incallui/coreapps/CoreAppsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;,
        Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;,
        Lcom/android/incallui/coreapps/CoreAppsManager$Listener;
    }
.end annotation


# static fields
.field public static final LOG_HEADER:Ljava/lang/String; = "Agifflow-"

.field static final LOG_TAG:Ljava/lang/String; = "Agifflow-CoreAppsManager"

.field static sInstance:Lcom/android/incallui/coreapps/CoreAppsManager;


# instance fields
.field private final MESSAGE_CHANGE_ENABLE_STATE:I

.field private isDeregisterRunning:Z

.field private isRegisterRunning:Z

.field private mContactUri:Landroid/net/Uri;

.field private mContactUriforSend:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mEnableList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mIsNeedToSendAskMessage:Z

.field private mIsRegistered:Z

.field private mLatestInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/coreapps/AgifLatestInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLatestPermissionHandler:Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/coreapps/CoreAppsManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMessageShareListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

.field private mPermissionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileSharingStatus:I

.field private mRegisterReapeatCount:I


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->MESSAGE_CHANGE_ENABLE_STATE:I

    iput-object v5, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mListeners:Ljava/util/Set;

    iput-object v5, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUri:Landroid/net/Uri;

    iput-object v5, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsRegistered:Z

    iput v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mRegisterReapeatCount:I

    iput-boolean v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegisterRunning:Z

    iput-boolean v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isDeregisterRunning:Z

    iput-boolean v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsNeedToSendAskMessage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mProfileSharingStatus:I

    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsManager$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/coreapps/CoreAppsManager$3;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMessageShareListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsManager$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager$4;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mHandler:Landroid/os/Handler;

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "CoreAppsManager created"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/coreapps/CoreAppsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->changeEnableState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/net/Uri;Lcom/android/incallui/Call;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/coreapps/CoreAppsManager;->notifyMessageWithSound(Landroid/net/Uri;Lcom/android/incallui/Call;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendChangeEnableStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private changeEnableState(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEnableState - callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEnableAgif:Z

    invoke-direct {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->notifyEnableStateChanged()V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_AgifAvailable()V

    invoke-direct {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isNeedToSendAskMessage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v1, "check_opponent_ask"

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendMessage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsNeedToSendAskMessage:Z

    :cond_0
    return-void
.end method

.method private changeMessageIfNeeded(Lcom/android/incallui/coreapps/AgifShareMessage;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/coreapps/AgifShareMessage;->isAckType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMessageIfNeeded - entry.recentSendingUrl is not null url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->setImgUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->setImgUrl(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    if-eqz v0, :cond_3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "changeMessageIfNeeded - mContactUriforSend change null"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/coreapps/AgifShareMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkProfileAndCapability(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "checkProfileAndCapability()"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "checkProfileAndCapability() - entry is null"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "checkProfileAndCapability() - agifNumber is null"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProfileAndCapability() - contactExists : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkProfileAndCapability() - changenum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->toLogSafePhoneNumberforAgif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/provider/agifcallprovider/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendChangeEnableStateMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager$ProfileCapabilityListener;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getProfileAndCapabilityfromEFServer(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;
    .locals 2

    const-class v1, Lcom/android/incallui/coreapps/CoreAppsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;-><init>()V

    sput-object v0, Lcom/android/incallui/coreapps/CoreAppsManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsManager;

    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->init()V

    :cond_0
    sget-object v0, Lcom/android/incallui/coreapps/CoreAppsManager;->sInstance:Lcom/android/incallui/coreapps/CoreAppsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAgifFeatureEnabled()Z
    .locals 1

    const-string v0, "agif_calling_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isNeedToSendAskMessage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsNeedToSendAskMessage:Z

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeMessageShareRequest(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/coreapps/AgifShareMessage;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->countryCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nationalNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRecipientData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;-><init>()V

    invoke-virtual {p2}, Lcom/android/incallui/coreapps/AgifShareMessage;->makeSendMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->setMessage(Ljava/lang/String;)V

    const-string v2, "Agifflow-CoreAppsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeMessageShareRequest - full msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/incallui/coreapps/AgifShareMessage;->makeSendMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->setRecipientList(Ljava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->HIGH:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;->setGcmPriority(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)V

    return-object v1
.end method

.method private notifyEnableStateChanged()V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "notifyEnableStateChanged"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    invoke-interface {v0}, Lcom/android/incallui/coreapps/CoreAppsManager$Listener;->onEnableStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyMessageWithSound(Landroid/net/Uri;Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->notifyMessageWithSound(Landroid/net/Uri;Lcom/android/incallui/Call;Ljava/io/File;)V

    return-void
.end method

.method private notifyMessageWithSound(Landroid/net/Uri;Lcom/android/incallui/Call;Ljava/io/File;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p2, p1}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/incallui/Call;->setAgifImageFile(Ljava/io/File;)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isAlertOnCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->playMediaSound()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/incallui/coreapps/CoreAppsManager;->notifyReceivedMessage(Landroid/net/Uri;Ljava/io/File;Lcom/android/incallui/Call;)V

    :cond_2
    return-void

    :cond_3
    sget-object p1, Lcom/android/incallui/agif/AgifCallContract;->AGIF_DUMMY_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Lcom/android/incallui/Call;->setAgifImageFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method private notifyReceivedMessage(Landroid/net/Uri;Ljava/io/File;Lcom/android/incallui/Call;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "notifyReceivedMessage"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/CoreAppsManager$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/coreapps/CoreAppsManager$Listener;->onReceveShareMessage(Landroid/net/Uri;Ljava/io/File;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendChangeEnableStateMessage(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateAgifImage(Lcom/android/incallui/Call;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_2

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "receiveMessage - call is spam"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    const-string v0, "support_sticker_download"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->downloadAgifImage(Ljava/lang/String;Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/incallui/agif/AgifCallContract;->AGIF_DUMMY_URI:Landroid/net/Uri;

    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->notifyMessageWithSound(Landroid/net/Uri;Lcom/android/incallui/Call;)V

    goto :goto_0
.end method


# virtual methods
.method public addCheckedPermission(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mPermissionList:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCheckedPermissions([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->addCheckedPermission(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "addListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeDownloadAgifFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDownloadAgifFileName before fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    const-string v2, "gif"

    aput-object v2, v3, v0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v3, v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    const-string v2, "gif"

    aput-object v2, v4, v0

    array-length v0, v4

    add-int/lit8 v0, v0, -0x3

    const-string v2, "lg"

    aput-object v2, v4, v0

    aget-object v0, v4, v6

    move-object v2, v0

    move v0, v1

    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    aput-object v2, v3, v0

    aget-object v0, v3, v6

    move-object v2, v0

    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeDownloadAgifFileName after fileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object p1, v2

    goto/16 :goto_0
.end method

.method public checkOpponentState(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOpponentState() callID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iput v4, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mRegisterReapeatCount:I

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->tryRegister()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "checkOpponentState() - this is already checked id"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->checkProfileAndCapability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "clear()..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifStartTime:J

    iput-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->recentSendingUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->syncAgifEnableState()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    iput-object v4, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    return-void
.end method

.method public downloadAgifImage(Ljava/lang/String;Lcom/android/incallui/Call;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "downloadAgifImage isRegistered is false"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->changeDownloadAgifFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/incallui/coreapps/CoreAppsManager$AgifDownloadListener;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;Ljava/lang/String;J)V

    invoke-static {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsUtils;->downloadFile(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    return-void
.end method

.method public getLatestInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/incallui/coreapps/AgifLatestInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLatestUrl(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/coreapps/AgifLatestInfo;

    iget-object v0, v0, Lcom/android/incallui/coreapps/AgifLatestInfo;->mUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init()... agifFeature enable state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifFeatureEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->initEnhancedFeatures()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mPermissionList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->setIsRegistered(Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsManager$1;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->addAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V

    :cond_0
    return-void
.end method

.method public initWithFirstCall()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "initWithFirstCall()..."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mEnableList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsRegistered:Z

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->resetProfileSharingStatus()V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->setIsRegistered(Z)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsManager$2;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->addAuthListener(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountAuthListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->isNeedCheckDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "default dialer is changed"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->tryDeregister()V

    :cond_1
    return-void
.end method

.method public isAgifEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAgifEnabledWithOpponent(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEnableAgif:Z

    goto :goto_0
.end method

.method public isCheckedPermission(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mPermissionList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mPermissionList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCheckedPermissions([Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/incallui/coreapps/CoreAppsManager;->isCheckedPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedtoCheckGeoDescription()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isProfileSharingServiceOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->tryDeregister()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileSharingServiceOn()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mProfileSharingStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getProfilSharingServiceStatus()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mProfileSharingStatus:I

    :cond_0
    iget v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mProfileSharingStatus:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsRegistered:Z

    return v0
.end method

.method public onFailDeregister()V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "onFailDeregister()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isDeregisterRunning:Z

    return-void
.end method

.method public onFailRegister(Z)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "onFailRegister()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegisterRunning:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mRegisterReapeatCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mRegisterReapeatCount:I

    iget v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mRegisterReapeatCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->tryRegister()V

    :cond_0
    return-void
.end method

.method public onSuccessDeregister()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "onSuccessDeregister()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isDeregisterRunning:Z

    invoke-virtual {p0, v3}, Lcom/android/incallui/coreapps/CoreAppsManager;->setIsRegistered(Z)V

    return-void
.end method

.method public onSuccessRegister()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "onSuccessRegister()"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegisterRunning:Z

    invoke-virtual {p0, v3}, Lcom/android/incallui/coreapps/CoreAppsManager;->setIsRegistered(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->checkOpponentState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public playMediaSound()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "content://settings/system/notification_sound"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "playMediaSound"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsManager$5;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/coreapps/CoreAppsManager$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsManager$6;-><init>(Lcom/android/incallui/coreapps/CoreAppsManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playCameraSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playCameraSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public receiveContactUri(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveContactUri message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setAgifUri(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContactUriforSend:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public receiveMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveMessage message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/coreapps/CoreAppsUtils;->toLogSafePhoneNumberforAgif(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/coreapps/AgifShareMessage;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/incallui/coreapps/AgifShareMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/SharePushResponse;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getCallByAgifNumber(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Agifflow-CoreAppsManager"

    const-string v2, "receiveMessage - call = null"

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "receiveMessage - mIsNeedToSendAskMessage = true"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsNeedToSendAskMessage:Z

    goto :goto_0

    :cond_2
    const-string v2, "Agifflow-CoreAppsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveMessage callId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->isAckType()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->isValidData()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->isAskType()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/coreapps/CoreAppsManager;->isNeedToSendAskMessage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "check_opponent_answer"

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendMessage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/incallui/coreapps/AgifShareMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->updateAgifImage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removeListener(Lcom/android/incallui/coreapps/CoreAppsManager$Listener;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "removeListener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetEnableState(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "resetEnableState"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEnableAgif:Z

    return-void
.end method

.method public resetProfileSharingStatus()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mProfileSharingStatus:I

    return-void
.end method

.method public sendMessage(Lcom/android/incallui/Call;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "sendMessage - call or message = null"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "sendMessage - entry is null"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->countryCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-wide v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nationalNumber:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    :cond_4
    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "sendMessage - there are no countryCode or nationalNumber"

    invoke-static {v0, v1, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->setAgifImageFile(Ljava/io/File;)V

    new-instance v1, Lcom/android/incallui/coreapps/AgifShareMessage;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->agifNumber:Ljava/lang/String;

    invoke-direct {v1, v2, p2, v3}, Lcom/android/incallui/coreapps/AgifShareMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->changeMessageIfNeeded(Lcom/android/incallui/coreapps/AgifShareMessage;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->makeMessageShareRequest(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/coreapps/AgifShareMessage;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMessageShareListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/EnhancedShare;->shareMessage(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/MessageShareRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ShareListener;)V

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendMessage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    return-void
.end method

.method public sendPermissionStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestPermissionHandler:Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestPermissionHandler:Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendUriMessage(Landroid/net/Uri;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/agif/AgifLoader;->getAgifUniqueId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setIsRegistered(Z)V
    .locals 3

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRegistered value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mIsRegistered:Z

    return-void
.end method

.method public setPermissionHandler(Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mLatestPermissionHandler:Lcom/android/incallui/coreapps/PermissionUtils$PermissionHandler;

    return-void
.end method

.method public stopMediaSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public syncAgifEnableState()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getAgifEnableState(Landroid/content/Context;)I

    move-result v0

    const-string v1, "Agifflow-CoreAppsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncAgifEnableState() - enableState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/incallui/coreapps/CoreAppsUtils;->setAgifEnableState(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsUtils;->setAgifEnableState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public tryDeregister()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isDeregisterRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "deregister is running"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isDeregisterRunning:Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->deRegister()V

    goto :goto_0
.end method

.method public tryRegister()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegister()"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegister() - feature is disalbed"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->isNeedCheckDefaultDialer()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->isDefaultDialer(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegister() - this is not default dialer"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isProfileSharingServiceOn()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegister() - profile sharing is false"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegisterRunning:Z

    if-eqz v0, :cond_4

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "register is running"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getEnhancedAccount()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/EnhancedAccount;->isRegistered()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/coreapps/CoreAppsManager;->setIsRegistered(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isAgifEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegisterRunning:Z

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsUtils;->register()V

    goto :goto_0
.end method

.method public tryRegisterWithSyncEnableState()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getAgifEnableState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegisterWithSyncEnableState() - change enable state on"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/incallui/coreapps/CoreAppsUtils;->setAgifEnableState(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/coreapps/CoreAppsManager;->tryRegister()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/coreapps/CoreAppsUtils;->getAgifEnableState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "Agifflow-CoreAppsManager"

    const-string v1, "tryRegisterWithSyncEnableState() - change enable state off"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/CoreAppsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/coreapps/CoreAppsUtils;->setAgifEnableState(Landroid/content/Context;I)V

    goto :goto_0
.end method
