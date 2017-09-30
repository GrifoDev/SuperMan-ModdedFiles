.class public Lcom/android/incallui/secutils/YellowPageCallerid;
.super Ljava/lang/Object;


# static fields
.field private static final CHINA_ECC_LIST:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "YellowPageCallerid_Call"

.field private static checkserviceConnection:Landroid/content/ServiceConnection;

.field private static myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

.field private static sMe:Lcom/android/incallui/secutils/YellowPageCallerid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

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

    new-instance v0, Lcom/android/incallui/secutils/YellowPageCallerid$1;

    invoke-direct {v0}, Lcom/android/incallui/secutils/YellowPageCallerid$1;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->checkserviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize_3rdlib(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v0}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->initialize_3rdlib()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "YellowPageCallerid_Call"

    const-string v1, "phone - initialize_3rdlib =  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "YellowPageCallerid_Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize_3rdlib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/app/yellowpage/IYellowpageInterface;)Lcom/sec/android/app/yellowpage/IYellowpageInterface;
    .locals 0

    sput-object p0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    return-object p0
.end method

.method public static callIntent(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.yellowpage.InterceptYellowpageService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.yellowpage"

    const-string v3, "com.sec.android.app.yellowpage.InterceptYellowpageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/secutils/YellowPageCallerid;
    .locals 1

    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secutils/YellowPageCallerid;->init()Lcom/android/incallui/secutils/YellowPageCallerid;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    goto :goto_0
.end method

.method public static getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/incallui/secutils/YellowPageCallerid;->CHINA_ECC_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "YellowPageCallerid_Call"

    const-string v2, "do not support for emergency call numbers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/incallui/secutils/YellowPageCallerid;->callIntent(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/incallui/secutils/YellowPageCallerid$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/secutils/YellowPageCallerid$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v1, p2}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->getShopNameFromNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "YellowPageCallerid_Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone - shop name =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "YellowPageCallerid_Call"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getYellowPageNameFromNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static init()Lcom/android/incallui/secutils/YellowPageCallerid;
    .locals 3

    const-class v1, Lcom/android/incallui/secutils/YellowPageCallerid;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/secutils/YellowPageCallerid;

    invoke-direct {v0}, Lcom/android/incallui/secutils/YellowPageCallerid;-><init>()V

    sput-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    :goto_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->sMe:Lcom/android/incallui/secutils/YellowPageCallerid;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "YellowPageCallerid_Call"

    const-string v2, "init "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static initContactService(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/secutils/YellowPageCallerid$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/secutils/YellowPageCallerid$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static unInitialize_3rdlib()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/secutils/YellowPageCallerid;->myService:Lcom/sec/android/app/yellowpage/IYellowpageInterface;

    invoke-interface {v0}, Lcom/sec/android/app/yellowpage/IYellowpageInterface;->unInitialize_3rdlib()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "YellowPageCallerid_Call"

    const-string v1, "phone - uninitialize_3rdlib =  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v1, "YellowPageCallerid_Call"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInitialize_3rdlib: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
