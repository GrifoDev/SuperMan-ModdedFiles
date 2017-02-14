.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$1;,
        Lcom/android/server/enterprise/RestrictionToastManager$2;,
        Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;
    }
.end annotation


# static fields
.field private static final ACTION_RESTRICTION_TOAST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RESTRICTION_TOAST_INTERNAL"

.field private static final MSG_REMOVE_ID:I = 0x1

.field private static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field private static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mToastReceiver:Landroid/content/BroadcastReceiver;

.field private static mUser:Landroid/os/UserHandle;

.field private static mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->onUserSwitched(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;-><init>(Lcom/android/server/enterprise/RestrictionToastManager$DisplayedMessageHandler;)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUser:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/RestrictionToastManager$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/RestrictionToastManager$2;

    invoke-direct {v0}, Lcom/android/server/enterprise/RestrictionToastManager$2;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mToastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 4

    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.RESTRICTION_TOAST_INTERNAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mToastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static onUserSwitched(I)V
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static show(I)V
    .locals 4

    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RestrictionToastManager"

    const-string/jumbo v3, "Resource Id not found: will not display any restriction message toast"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .locals 8

    const-class v5, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v5

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v5

    return-void

    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_2

    monitor-exit v5

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.RESTRICTION_TOAST_INTERNAL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "message"

    invoke-virtual {v1, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "RestrictionToastManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Added message to recently displayed queue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v4, v6, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0xdac

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method
