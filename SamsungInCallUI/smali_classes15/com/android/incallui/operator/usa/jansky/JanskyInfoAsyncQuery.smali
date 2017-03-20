.class public Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "JanskyInfoAsyncQuery.java"


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

    .prologue
    .line 12
    const-class v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 17
    sput-object p1, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-class v1, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;

    .line 26
    :cond_0
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->sMe:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public janskyMultiLinestartQuery(Ljava/lang/String;Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;)V
    .locals 8
    .param p1, "lineMsisdn"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 30
    sget-object v3, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Lines;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    .local v3, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 32
    .local v5, "selection":Ljava/lang/String;
    new-array v6, v7, [Ljava/lang/String;

    .line 33
    .local v6, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 34
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_0
    const-string v5, "status= 1 AND msisdn =?"

    .line 37
    aput-object p1, v6, v1

    .line 43
    :goto_0
    new-instance v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    invoke-direct {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;-><init>()V

    .line 44
    .local v2, "cookieWrapper":Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;
    iput-object p2, v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    .line 45
    iput-object p1, v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->lineMsisdn:Ljava/lang/String;

    move-object v0, p0

    move-object v7, v4

    .line 46
    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 40
    .end local v2    # "cookieWrapper":Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;
    :cond_1
    const-string v5, "account_id = 0 AND is_native = ?"

    .line 41
    const-string v0, "1"

    aput-object v0, v6, v1

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 52
    sget-object v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onQueryComplete()"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    instance-of v2, p2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 55
    check-cast v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;

    .line 56
    .local v0, "cookieWrapper":Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;
    if-nez v0, :cond_1

    .line 69
    .end local v0    # "cookieWrapper":Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "cookieWrapper":Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;
    :cond_1
    if-eqz p3, :cond_2

    .line 60
    sget-object v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v1

    .line 61
    .local v1, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;
    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->lineMsisdn:Ljava/lang/String;

    invoke-virtual {v1, p3, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->setJanskyInfo(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 62
    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$multiLineCookieWrapper;->listener:Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;

    invoke-interface {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery$OnQueryCompleteListenerMultiLine;->onQueryCompleteMultiLine()V

    goto :goto_0

    .line 66
    .end local v1    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;
    :cond_2
    sget-object v2, Lcom/android/incallui/operator/usa/jansky/JanskyInfoAsyncQuery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
