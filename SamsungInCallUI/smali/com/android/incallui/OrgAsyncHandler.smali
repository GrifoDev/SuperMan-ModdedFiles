.class public Lcom/android/incallui/OrgAsyncHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OrgAsyncHandler"

.field private static final projection:[Ljava/lang/String;

.field private static sMe:Lcom/android/incallui/OrgAsyncHandler; = null

.field private static final selection:Ljava/lang/String; = "raw_contact_id = ? AND mimetype = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/OrgAsyncHandler;->projection:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/OrgAsyncHandler;->sMe:Lcom/android/incallui/OrgAsyncHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static getCompany(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data1"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDepartment(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data5"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/OrgAsyncHandler;
    .locals 3

    const-class v1, Lcom/android/incallui/OrgAsyncHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/OrgAsyncHandler;->sMe:Lcom/android/incallui/OrgAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/OrgAsyncHandler;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/incallui/OrgAsyncHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/OrgAsyncHandler;->sMe:Lcom/android/incallui/OrgAsyncHandler;

    :cond_0
    sget-object v0, Lcom/android/incallui/OrgAsyncHandler;->sMe:Lcom/android/incallui/OrgAsyncHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getJobTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "data4"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    check-cast p2, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {p0, p3, v0}, Lcom/android/incallui/OrgAsyncHandler;->setOrgInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallOrgInfoController;->getInstance()Lcom/android/incallui/CallOrgInfoController;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallOrgInfoController;->notifyListenersOfOrgInfoQueryComplete(Ljava/lang/String;)V

    return-void
.end method

.method public setOrgInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getJobTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getCompany(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getDepartment(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-eqz v0, :cond_2

    if-nez v1, :cond_5

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    const-string v0, "OrgAsyncHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrgInfoCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    iput-object v8, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iput-object v8, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public startQuery(JLjava/lang/String;IJ)V
    .locals 9

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/organization"

    aput-object v1, v6, v0

    new-instance v2, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;

    invoke-direct {v2}, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;-><init>()V

    iput-object p3, v2, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getKnoxId(Landroid/content/Context;)I

    move-result v0

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1

    cmp-long v1, p5, v4

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x2

    cmp-long v1, p5, v4

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x3

    cmp-long v1, p5, v4

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, -0x1

    if-le p4, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@com.android.contacts/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_0
    const/4 v1, 0x0

    sget-object v4, Lcom/android/incallui/OrgAsyncHandler;->projection:[Ljava/lang/String;

    const-string v5, "raw_contact_id = ? AND mimetype = ?"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/OrgAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    move p4, v0

    goto :goto_0
.end method
