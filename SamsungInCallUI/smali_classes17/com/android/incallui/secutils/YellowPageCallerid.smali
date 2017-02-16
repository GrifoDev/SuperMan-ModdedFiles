.class public Lcom/android/incallui/secutils/YellowPageCallerid;
.super Ljava/lang/Object;
.source "YellowPageCallerid.java"


# static fields
.field private static final CHINA_ECC_LIST:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "YellowPageCallerid_Call"

.field private static checkserviceConnection:Landroid/content/ServiceConnection;

.field private static myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

.field private static sMe:Lcom/android/incallui/secutils/YellowPageCallerid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    .line 18
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "110"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "119"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "999"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "120"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "122"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "08"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "118"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "112"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "911"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->CHINA_ECC_LIST:[Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/android/incallui/secutils/YellowPageCallerid$1;

    invoke-direct {v0}, Lcom/android/incallui/secutils/YellowPageCallerid$1;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->checkserviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize_3rdlib(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    :try_start_0
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v1}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->initialize_3rdlib()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    const-string v1, "YellowPageCallerid_Call"

    const-string v2, "phone - initialize_3rdlib =  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "YellowPageCallerid_Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize_3rdlib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/app/yellowpage/IYellowpageInterface;)Lcom/sec/android/app/yellowpage/IYellowpageInterface;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    .prologue
    .line 14
    sput-object p0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    return-object p0
.end method

.method public static callIntent(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.yellowpage.InterceptYellowpageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.yellowpage"

    const-string v3, "com.sec.android.app.yellowpage.InterceptYellowpageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/secutils/YellowPageCallerid;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/android/incallui/secutils/YellowPageCallerid;->init()Lcom/android/incallui/secutils/YellowPageCallerid;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    goto :goto_0
.end method

.method public static getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cityid"    # Ljava/lang/String;
    .param p2, "CallNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 89
    :goto_0
    return-object v2

    .line 67
    :cond_0
    sget-object v4, Lcom/android/incallui/secutils/YellowPageCallerid;->CHINA_ECC_LIST:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 68
    .local v1, "eccNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    const-string v3, "YellowPageCallerid_Call"

    const-string v4, "do not support for emergency call numbers"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "eccNumber":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/secutils/YellowPageCallerid;->callIntent(Landroid/content/Context;)V

    .line 74
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/incallui/secutils/YellowPageCallerid$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/secutils/YellowPageCallerid$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "ypName":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v3, :cond_3

    .line 84
    sget-object v3, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v3, p2}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->getShopNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_3
    const-string v3, "YellowPageCallerid_Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone - shop name =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "YellowPageCallerid_Call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getYellowPageNameFromNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init()Lcom/android/incallui/secutils/YellowPageCallerid;
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/android/incallui/secutils/YellowPageCallerid;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/incallui/secutils/YellowPageCallerid;

    invoke-direct {v0}, Lcom/android/incallui/secutils/YellowPageCallerid;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    .line 29
    :goto_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    monitor-exit v1

    return-object v0

    .line 27
    :cond_0
    const-string v0, "YellowPageCallerid_Call"

    const-string v2, "init "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initContactService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/secutils/YellowPageCallerid$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/secutils/YellowPageCallerid$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    :cond_0
    return-void
.end method

.method public static unInitialize_3rdlib()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v1}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->unInitialize_3rdlib()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const-string v1, "YellowPageCallerid_Call"

    const-string v2, "phone - uninitialize_3rdlib =  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 118
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 119
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "YellowPageCallerid_Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInitialize_3rdlib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
