.class public Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;,
        Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    sput-object p1, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
    .locals 2

    const-class v1, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    :cond_0
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public janskyMultiLinestartQuery(Ljava/lang/String;Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v2, [Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v5, "status= 1 AND msisdn =?"

    aput-object p1, v6, v1

    :goto_0
    new-instance v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    invoke-direct {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;-><init>()V

    iput-object p2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    iput-object p1, v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->lineMsisdn:Ljava/lang/String;

    move-object v0, p0

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v5, "account_id = 0 AND is_native = ?"

    const-string v0, "1"

    aput-object v0, v6, v1

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onQueryComplete()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->lineMsisdn:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->setJanskyInfo(Landroid/database/Cursor;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    invoke-interface {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;->onQueryCompleteMultiLine()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
