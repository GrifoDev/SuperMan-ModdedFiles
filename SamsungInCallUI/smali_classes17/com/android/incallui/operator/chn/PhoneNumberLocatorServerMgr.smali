.class public Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorServerMgr.java"


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

    .prologue
    const/4 v2, 0x0

    .line 19
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    .line 20
    sput-object v2, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    .line 21
    sput-object v2, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$1;-><init>(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    .line 27
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;)Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;
    .locals 0
    .param p0, "x0"    # Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    .prologue
    .line 16
    sput-object p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->init()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    return-object v0
.end method

.method private static init()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    invoke-direct {v0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mInstance:Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "PhoneNumberLocatorServerMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method


# virtual methods
.method public addBindServiceListener(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V
    .locals 1
    .param p1, "bindListener"    # Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public bindService(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 94
    const-string v3, "bindService, mContext is null!!!"

    invoke-static {v3}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v3, "bind - intent start"

    invoke-static {v3}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sgmc.phonenumberlocatorservice.location.IPhoneNumberLocatorService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sgmc.phonenumberlocatorservice"

    const-string v5, "com.sgmc.phonenumberlocatorservice.location.PhoneNumberLocatorService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    iget-object v3, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 107
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind - intent :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "PhoneNumberLocatorServerMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public checkAndBindService()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->bindService(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 124
    if-eqz p1, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkAndBindService()Z

    move-result v8

    if-nez v8, :cond_3

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    const-string v6, "getPhoneNumberLocator, isServiceConnected is false!!!"

    invoke-static {v6}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    .line 128
    :cond_1
    const-string v1, ""

    .line 147
    :cond_2
    :goto_0
    return-object v1

    .line 130
    :cond_3
    sget-boolean v8, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v8, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 133
    .local v4, "startTime":J
    :goto_1
    :try_start_0
    sget-object v8, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    invoke-interface {v8, p1}, Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 143
    .local v1, "location":Ljava/lang/String;
    :goto_2
    sget-boolean v8, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v8, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    .local v2, "endTime":J
    :goto_3
    sget-boolean v6, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->DBG:Z

    if-eqz v6, :cond_2

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhoneNumberLocator, time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "endTime":J
    .end local v4    # "startTime":J
    :cond_4
    move-wide v4, v6

    .line 130
    goto :goto_1

    .line 134
    .restart local v4    # "startTime":J
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/DeadObjectException;
    const-string v1, ""

    .line 136
    .restart local v1    # "location":Ljava/lang/String;
    const/4 v8, 0x0

    sput-object v8, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    .line 138
    const-string v8, "PhoneNumberLocatorServerMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v1    # "location":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    .line 141
    .restart local v1    # "location":Ljava/lang/String;
    const-string v8, "PhoneNumberLocatorServerMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move-wide v2, v6

    .line 143
    goto :goto_3
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 42
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
    .param p1, "bindListener"    # Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public unbind()V
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "unbind"

    invoke-static {v1}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->log(Ljava/lang/String;)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->mIsConnected:Z

    .line 121
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PhoneNumberLocatorServerMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->myService:Lcom/sgmc/phonenumberlocatorservice/location/IPhoneNumberLocatorService;

    goto :goto_0
.end method
