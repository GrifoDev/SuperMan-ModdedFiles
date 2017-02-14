.class public Lcom/android/incallui/OrgAsyncHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OrgAsyncHandler.java"


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

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data1"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getDepartment(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data5"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
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

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "data4"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    if-eqz p3, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;

    iget-object v1, v0, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {p0, p3, v1}, Lcom/android/incallui/OrgAsyncHandler;->setOrgInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/incallui/CallOrgInfoController;->getInstance()Lcom/android/incallui/CallOrgInfoController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/incallui/OrgAsyncHandler$CookieWrapper;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallOrgInfoController;->notifyListenersOfOrgInfoQueryComplete(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "OrgAsyncHandler"

    const-string v2, "cursor is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrgInfoCache(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getJobTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getCompany(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/OrgAsyncHandler;->getDepartment(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_1

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_2
    if-eqz v5, :cond_3

    if-nez v4, :cond_6

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v5, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    const-string v7, "OrgAsyncHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setOrgInfoCache : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callOrgInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public startQuery(JLjava/lang/String;IJ)V
    .locals 11

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

    move-result-object v8

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v8, :cond_1

    iget-boolean v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_1

    iget-wide v0, v8, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->getKnoxId(Landroid/content/Context;)I

    move-result v9

    const-string v0, "support_twophone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    move v9, p4

    :cond_0
    const/4 v0, -0x1

    if-le v9, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@com.android.contacts/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    const/4 v1, 0x0

    sget-object v4, Lcom/android/incallui/OrgAsyncHandler;->projection:[Ljava/lang/String;

    const-string v5, "raw_contact_id = ? AND mimetype = ?"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/OrgAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
