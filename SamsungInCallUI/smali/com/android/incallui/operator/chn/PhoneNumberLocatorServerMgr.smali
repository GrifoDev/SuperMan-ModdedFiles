.class public Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneNumberLocatorServerMgr"

.field private static mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

.field private static myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;


# instance fields
.field private checkserviceConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsConnected:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    sput-object v2, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    sput-object v2, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;-><init>(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;
    .locals 0

    sput-object p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->init()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    return-object v0
.end method

.method private static init()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
    .locals 2

    const-class v1, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    invoke-direct {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneNumberLocatorServerMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bindService(Landroid/content/Context;)V
    .locals 6

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "bindService, mContext is null!!!"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "bind - intent start"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sgmc.phonenumberlocatorservice"

    const-string v3, "com.sgmc.phonenumberlocatorservice.location.PhoneNumberLocatorService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind - intent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_2
    const-string v2, "PhoneNumberLocatorServerMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public checkAndBindService()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->bindService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkAndBindService()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getPhoneNumberLocator, isServiceConnected is false!!!"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    :cond_1
    const-string v4, ""

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    sget-boolean v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    :try_start_0
    sget-object v4, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    invoke-interface {v4, p1}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_2
    sget-boolean v5, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_4
    sget-boolean v5, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneNumberLocator, time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception v4

    move-object v5, v4

    const-string v4, ""

    const/4 v6, 0x0

    sput-object v6, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    const-string v6, "PhoneNumberLocatorServerMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v5, v4

    const-string v4, ""

    const-string v6, "PhoneNumberLocatorServerMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method public unbind()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "unbind"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneNumberLocatorServerMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    goto :goto_0
.end method
