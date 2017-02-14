.class public abstract Lcom/absolute/android/logutil/LogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_DEBUG:Z = false

.field public static final LOG_INFO:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "APS"

.field static a:Ljava/lang/String;

.field private static b:Lcom/absolute/android/logutil/LogUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "APS"

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/absolute/android/logutil/LogUtil;
    .locals 2

    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    return-object v0

    :cond_0
    const-string/jumbo v0, "com.absolute.android.common.logutil.LogUtilNoPS"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/logutil/LogUtil;

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sput-object p1, Lcom/absolute/android/logutil/LogUtil;->a:Ljava/lang/String;

    sget-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ABTPersistenceService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :try_start_2
    const-string/jumbo v0, "com.absolute.android.logutil.LogUtilNoPS"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/logutil/LogUtil;

    sput-object v0, Lcom/absolute/android/logutil/LogUtil;->b:Lcom/absolute/android/logutil/LogUtil;

    invoke-virtual {v0, p0}, Lcom/absolute/android/logutil/LogUtil;->start(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "LogUtil.init: abtPersistMgr == null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception caught getting PSMgr: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.absolute.android.logutil.LogUtilWithPS"

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    return-void
.end method


# virtual methods
.method public abstract logMessage(ILjava/lang/String;)V
.end method

.method public abstract start(Landroid/content/Context;)V
.end method
