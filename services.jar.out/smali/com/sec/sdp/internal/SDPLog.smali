.class public Lcom/sec/sdp/internal/SDPLog;
.super Ljava/lang/Object;
.source "SDPLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sdp/internal/SDPLog$CallerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = ",D,"

.field private static final DEBUG_ON:Z = false

.field private static final INFO:Ljava/lang/String; = ",I,"

.field private static final PARAM:Ljava/lang/String; = ",P,"

.field private static final SUFFIX:Ljava/lang/String; = ".SDPLog"

.field private static final TAG:Ljava/lang/String; = "SDPLog"

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyy-MM-dd HH:mm:ss.SSS"

.field private static final TOKEN:Ljava/lang/String; = ","

.field private static isInitialized:Z

.field private static mSdpLogService:Landroid/os/ISdpLogService;


# direct methods
.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/sdp/internal/SDPLog;->makeSequence([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-nez v1, :cond_1

    const-string/jumbo v1, "sdp_log"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ISdpLogService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISdpLogService;

    move-result-object v1

    sput-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertTime(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    const-string/jumbo v1, "SDPLog.d"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",D,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".SDPLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static enqPayload(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/sdp/internal/SDPLog;->mSdpLogService:Landroid/os/ISdpLogService;

    invoke-interface {v1, p0}, Landroid/os/ISdpLogService;->enqPayload(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SDPLog"

    const-string/jumbo v2, "Failed to talk with sdp log service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/sdp/internal/SDPLog;->convertTime(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i()V
    .locals 2

    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v1}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/sec/sdp/internal/SDPLog;->isInitialized:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lcom/sec/sdp/internal/SDPLog$CallerInfo;

    invoke-direct {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;-><init>()V

    invoke-virtual {v2}, Lcom/sec/sdp/internal/SDPLog$CallerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->enqPayload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static varargs makeSequence([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const-string/jumbo v1, ""

    const/4 v4, 0x0

    array-length v5, p0

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v0, p0, v4

    if-nez v0, :cond_0

    const-string/jumbo v2, "null"

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    return-object v1
.end method

.method public static varargs p([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
