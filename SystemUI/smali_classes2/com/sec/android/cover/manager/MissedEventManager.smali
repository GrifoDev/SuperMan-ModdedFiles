.class public Lcom/sec/android/cover/manager/MissedEventManager;
.super Ljava/lang/Object;
.source "MissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/MissedEventManager$1;,
        Lcom/sec/android/cover/manager/MissedEventManager$2;,
        Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;,
        Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;,
        Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;,
        Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;,
        Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;
    }
.end annotation


# static fields
.field private static final MSG_PREFERENCE:Landroid/net/Uri;

.field private static final PACKAGE_SAMSUNG_MESSAGES:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/manager/MissedEventManager;


# instance fields
.field private mCallsContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMissedCallsCounts:[I

.field private mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

.field private mMmsSmsMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

.field private mRcsChatMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

.field private mRcsFtMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

.field private mUnreadMessagesCounts:[I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mUserIds:[I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/manager/MissedEventManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/manager/MissedEventManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/manager/MissedEventManager;)Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/manager/MissedEventManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    return-object v0
.end method

.method static synthetic -get6(Lcom/sec/android/cover/manager/MissedEventManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/manager/MissedEventManager;)[Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->queryMissedCallsCount()[Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/manager/MissedEventManager;)[Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->queryUnreadMessagesCount()[Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/manager/MissedEventManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->refreshWithCurrentValues()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->MSG_PREFERENCE:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->PACKAGE_SAMSUNG_MESSAGES:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMmsSmsMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mCallsContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsChatMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsFtMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$1;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager$2;-><init>(Lcom/sec/android/cover/manager/MissedEventManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->get2PhoneSecondUserId()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    return-void

    :cond_1
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    goto :goto_0
.end method

.method private get2PhoneSecondUserId()I
    .locals 10

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isBMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, v2

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    iget v1, v6, Landroid/content/pm/UserInfo;->id:I

    :cond_2
    sget-object v7, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get2PhoneSecondUserId : id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    sget-object v7, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error while searching for 2Phone second user"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/MissedEventManager;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->sInstance:Lcom/sec/android/cover/manager/MissedEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/MissedEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->sInstance:Lcom/sec/android/cover/manager/MissedEventManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->sInstance:Lcom/sec/android/cover/manager/MissedEventManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMissedCallUri(I)Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@logs/call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isImMessageMutedForUser(JI)Z
    .locals 11

    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isImMessageMutedForUser : threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "normal_thread_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " = ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, " AND (using_mode = ?)"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v1, 0x0

    aput-object v0, v10, v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v10, v1

    move-object v4, v10

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isImMessageMutedForUser : threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://mms-sms/im-threads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "is_mute"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    const/4 v8, 0x1

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v8

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isImMessageMutedForUser : Mute cursor null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isImMessageMutedForUser : error querying Mute count"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private isMmsSmsMessageMutedForUser(JI)Z
    .locals 17

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMmsSmsMessageMutedForUser : threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isSamsungMessagingApp()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isNotificationEnabled()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneBNotificationEnabled()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isSim2NotificationEnabled()Z

    move-result v13

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMmsSmsMessageMutedForUser : messageOwnerIsUserOwner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ownerNotificationsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isTwoPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " twoPhoneNotificationsEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sim2NotificationEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_1

    xor-int/lit8 v1, v12, 0x1

    return v1

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    xor-int/lit8 v1, v14, 0x1

    return v1

    :cond_2
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " = ?"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    if-eqz v9, :cond_3

    const-string/jumbo v1, " AND (using_mode = ?)"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v1, 0x0

    aget-object v1, v5, v1

    const/4 v2, 0x0

    aput-object v1, v16, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v16, v2

    move-object/from16 v5, v16

    :cond_3
    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMmsSmsMessageMutedForUser : threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "threads"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "is_mute"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_5

    const/4 v11, 0x1

    :goto_1
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return v11

    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isMmsSmsMessageMutedForUser : Mute cursor null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isMmsSmsMessageMutedForUser : error querying Mute count"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method private isTwoPhoneRegistered()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "two_register"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private queryMissedCallsCount()[Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v3, v3

    new-array v0, v3, [Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/sec/android/cover/manager/MissedEventManager;->queryMissedCallsCountForUser(I)Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while querying calls count for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryMissedCallsCount : callUpdates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private queryMissedCallsCountForUser(I)Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryMissedCallsCountForUser : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    invoke-direct {v6, v3}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;-><init>(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)V

    invoke-static {v6, v9}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;I)I

    invoke-static {v6, v8}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-set1(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;Z)Z

    invoke-static {v6, p1}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-set2(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;I)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/manager/MissedEventManager;->getMissedCallUri(I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    aput-object v3, v2, v9

    const-string/jumbo v3, "new"

    aput-object v3, v2, v8

    const-string/jumbo v3, "type = ? AND new = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v6, v0}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;I)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v6
.end method

.method private queryUnreadMessagesCount()[Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v3, v3

    new-array v2, v3, [Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/sec/android/cover/manager/MissedEventManager;->queryUnreadMessagesCountForUser(I)Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while querying unread messages count for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryUnreadMessagesCount : msgUpdates="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private queryUnreadMessagesCountForUser(I)Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;
    .locals 23

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, -0x1

    new-instance v20, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;-><init>(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)V

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set1(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;Z)Z

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set2(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    :try_start_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, " AND (using_mode = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x0

    aput-object v2, v22, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v22, v3

    move-object/from16 v6, v22

    :cond_0
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : whereSms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "thread_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_a

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countSms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " AND ("

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "m_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " OR "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "m_type"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    const/16 v2, 0x82

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, " AND (using_mode = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x0

    aput-object v2, v22, v3

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v3, 0x1

    aput-object v2, v22, v3

    const/4 v2, 0x2

    aget-object v2, v6, v2

    const/4 v3, 0x2

    aput-object v2, v22, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v22, v3

    move-object/from16 v6, v22

    :cond_2
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : whereMms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "thread_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_b

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countMms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v16, v2, v4

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    move-wide/from16 v18, v16

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, " AND (using_mode = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x0

    aput-object v2, v22, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v22, v3

    move-object/from16 v6, v22

    :cond_4
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : whereWapPush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "wap-push-messages"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "thread_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_c

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countWapPush="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, " AND (using_mode = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x0

    aput-object v2, v22, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v22, v3

    move-object/from16 v6, v22

    :cond_6
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : whereRcsChat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://im/chat/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "thread_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_d

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countRcsChat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v2, v12, v18

    if-lez v2, :cond_7

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read = ?"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/manager/MissedEventManager;->isTwoPhoneRegistered()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, " AND (using_mode = ?)"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v3, 0x0

    aput-object v2, v22, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v22, v3

    move-object/from16 v6, v22

    :cond_8
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : whereRcsFt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://im/ft/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string/jumbo v5, "thread_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_e

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countRcsFt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v2, v10, v18

    if-lez v2, :cond_9

    cmp-long v2, v10, v12

    if-lez v2, :cond_9

    move-wide v12, v10

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser : countSmsMms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " notify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get1(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_a
    :try_start_5
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : SMS cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : error querying SMS count"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_b
    :try_start_6
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : MMS cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v9

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : error querying MMS count"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_c
    :try_start_7
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : WAP-PUSH cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v9

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : error querying WAP-PUSH count"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_d
    :try_start_8
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : RCS/chat cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v9

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : error querying RCS/chat count"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_e
    :try_start_9
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : RCS/ft cursor null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v9

    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "queryUnreadMessagesCountForUser : error querying RCS/ft count"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_f
    cmp-long v2, v18, v12

    if-lez v2, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/sec/android/cover/manager/MissedEventManager;->isMmsSmsMessageMutedForUser(JI)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set1(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;Z)Z

    :goto_5
    sget-object v2, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryUnreadMessagesCountForUser Muted: countSmsMms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " notify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get1(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v14, v15, v1}, Lcom/sec/android/cover/manager/MissedEventManager;->isImMessageMutedForUser(JI)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-set1(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;Z)Z

    goto :goto_5
.end method

.method private refreshWithCurrentValues()V
    .locals 11

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    iget-object v6, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->queryUnreadMessagesCount()[Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    iget-object v6, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->queryMissedCallsCount()[Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;

    move-result-object v0

    sget-object v6, Lcom/sec/android/cover/manager/MissedEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUserIds:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    aget-object v7, v2, v1

    invoke-static {v7}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v7

    aput v7, v5, v1

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-get0(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I

    move-result v7

    aput v7, v5, v1

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    aget v7, v4, v1

    iget-object v8, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUnreadMessagesCounts:[I

    aget v8, v8, v1

    aget-object v9, v2, v1

    invoke-static {v9}, Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;->-get2(Lcom/sec/android/cover/manager/MissedEventManager$UnreadMessageUpdate;)I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v5, v7, v8, v10, v9}, Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;->onUnreadMessagesCountChanged(IIZI)V

    iget-object v5, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;

    aget v7, v3, v1

    iget-object v8, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedCallsCounts:[I

    aget v8, v8, v1

    aget-object v9, v0, v1

    invoke-static {v9}, Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;->-get2(Lcom/sec/android/cover/manager/MissedEventManager$MissedCallUpdate;)I

    move-result v9

    const/4 v10, 0x1

    invoke-interface {v5, v7, v8, v10, v9}, Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;->onMissedCallsCountChanged(IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public isNotificationEnabled()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->MSG_PREFERENCE:Landroid/net/Uri;

    const-string/jumbo v3, "BOOLEAN"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_enable_notifications"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    if-ne v9, v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v6, 0x0

    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNotificationEnabled : result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SQLException at isNotificationEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public isSamsungMessagingApp()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sms_default_application"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSamsungMessagingApp : defaultApplication="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " PACKAGE_SAMSUNG_MESSAGES="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/cover/manager/MissedEventManager;->PACKAGE_SAMSUNG_MESSAGES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->PACKAGE_SAMSUNG_MESSAGES:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isSim2NotificationEnabled()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->MSG_PREFERENCE:Landroid/net/Uri;

    const-string/jumbo v3, "BOOLEAN"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_enable_notifications_sim2"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    if-ne v9, v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v6, 0x0

    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSim2NotificationEnabled : result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SQLException at isSim2NotificationEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public isTwoPhoneBNotificationEnabled()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/manager/MissedEventManager;->MSG_PREFERENCE:Landroid/net/Uri;

    const-string/jumbo v3, "BOOLEAN"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_enable_notifications_two_phone_B"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v9, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    if-ne v9, v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v6, 0x0

    :cond_2
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTwoPhoneBNotificationEnabled : result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SQLException at isTwoPhoneBNotificationEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public setListener(Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;)V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/manager/MissedEventManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMissedEventListener:Lcom/sec/android/cover/manager/MissedEventManager$MissedEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public start()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/sec/android/cover/manager/MissedEventManager;->refreshWithCurrentValues()V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMmsSmsMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mCallsContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://im/chat"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsChatMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://im/ft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsFtMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mMmsSmsMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mCallsContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$CallsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsChatMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mRcsFtMessagesContentObserver:Lcom/sec/android/cover/manager/MissedEventManager$MessagesContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/manager/MissedEventManager;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method
