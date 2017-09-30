.class public Lcom/android/incallui/sns/SecLinkedInHelper;
.super Lcom/android/incallui/sns/SecAsyncQueryHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;,
        Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;,
        Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;,
        Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;,
        Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;
    }
.end annotation


# static fields
.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final LAST_UPDATED_TIMESTAMP:Ljava/lang/String; = "last_updated_timestamp"

.field public static final LINKEDIN_PEOPLE_LOOKUP_REQUESTED_ACTION:Ljava/lang/String; = "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_REQUESTED"

.field public static final LINKEDIN_PEOPLE_LOOKUP_UPDATED_ACTION:Ljava/lang/String; = "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_UPDATED"

.field public static final LINKEDIN_TYPE:Ljava/lang/String; = "com.linkedin.android"

.field private static final MAX_COOKIE_LENGTH:I = 0x3

.field public static final PERMISSION_SNS_REQUEST_PEOPLE_LOOKUP:Ljava/lang/String; = "com.sec.android.app.sns3.permission.REQUEST_PEOPLE_LOOKUP"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PICTURE_URL:Ljava/lang/String; = "picture_url"

.field private static final SNS_INTENT_RECEIVED:I


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private final SELECTION:Ljava/lang/String;

.field private final TOKEN:I

.field public final URI:Landroid/net/Uri;

.field private cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mAppId:I

.field private mContext:Landroid/content/Context;

.field private mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

.field private mEmailHelper:Lcom/android/incallui/sns/SecEmailHelper;

.field private mEmalListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

.field private mHandler:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

.field private mLinkedinListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

.field private mReceiver:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

.field private mSnsCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

.field private mSnsConnection:Landroid/content/ServiceConnection;

.field private mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/sns/SecAsyncQueryHelper;-><init>(Landroid/content/ContentResolver;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mAppId:I

    iput v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->TOKEN:I

    const-string v0, "content://com.sec.android.app.sns3.sp.linkedin/people_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->URI:Landroid/net/Uri;

    const-string v0, "email = ?"

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->SELECTION:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "picture_url"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "last_updated_timestamp"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    const-string v0, "SecLinkedInHelper..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/sns/SecLinkedInHelper;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/sns/SecLinkedInHelper;->onSnsQueryCameBack()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/incallui/sns/SecLinkedInHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mAppId:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/incallui/sns/SecLinkedInHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mAppId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mHandler:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    return-object v0
.end method

.method private declared-synchronized addCookie(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bindSnsService()V
    .locals 4

    const-string v0, "bindSnsService..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.snsimagecache"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSnsService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mReceiver:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mReceiver:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$EmailQueryListener;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmalListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mHandler:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;

    new-instance v0, Lcom/android/incallui/sns/SecEmailHelper;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/sns/SecEmailHelper;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmailHelper:Lcom/android/incallui/sns/SecEmailHelper;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmailHelper:Lcom/android/incallui/sns/SecEmailHelper;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmalListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/sns/SecEmailHelper;->setQueryListener(Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;)V

    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;

    invoke-direct {v0, p0, v3}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinQueryListener;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mLinkedinListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mLinkedinListener:Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;

    invoke-virtual {p0, v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->setQueryListener(Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;)V

    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/sns/SecLinkedInHelper$1;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/sns/SecLinkedInHelper$2;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/android/incallui/sns/SecLinkedInHelper;->bindSnsService()V

    goto :goto_0
.end method

.method private onSnsQueryCameBack()V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "onSnsQueryCameBack"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-nez v0, :cond_0

    const-string v0, "cache entry is null after SNS intent arrived"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "start query for getting Linkedin account"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget-object v3, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->PROJECTION:[Ljava/lang/String;

    const-string v5, "email = ?"

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget-object v0, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->email:Ljava/lang/String;

    aput-object v0, v6, v1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/sns/SecLinkedInHelper;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized popCookie(I)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget v3, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->reqId:I

    if-ne v3, p1, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->cookies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 3

    const-string v0, "finish..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->setQueryListener(Lcom/android/incallui/sns/SecAsyncQueryHelper$QueryListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mReceiver:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mReceiver:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    invoke-interface {v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mSnsConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public searchLinkedInAccount(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmailHelper:Lcom/android/incallui/sns/SecEmailHelper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    invoke-direct {v0}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;-><init>()V

    iput-object p1, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->callId:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    iget-object v1, p0, Lcom/android/incallui/sns/SecLinkedInHelper;->mEmailHelper:Lcom/android/incallui/sns/SecEmailHelper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/sns/SecEmailHelper;->startQuery(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V

    goto :goto_0
.end method
