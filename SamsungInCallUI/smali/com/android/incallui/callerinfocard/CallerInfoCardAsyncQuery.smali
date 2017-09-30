.class public Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoCardAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;Landroid/content/Context;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-static {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$302(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-static {v0, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$402(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method private release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$302(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$402(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$502(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/xxxxxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    .locals 9

    const-string v0, "CallerInfoCardAsyncQuery"

    const-string v1, "##### CallerInfoCardAsyncQuery startQuery()... #####"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CallerInfoCardAsyncQuery"

    const-string v1, "- number: xxxxxxx"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoCardAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CallerInfoCardAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;-><init>()V

    iput-object p3, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iput p0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->event:I

    iput p0, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    iput-boolean p5, v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->updated:Z

    if-eqz p2, :cond_0

    invoke-static {p0, p2, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->updateCookieWrapper(ILandroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;)V

    :cond_0
    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgsManager;->create(ILjava/lang/Object;)Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;

    move-result-object v7

    new-instance v8, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    invoke-direct {v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;-><init>()V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelection()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v8, p1, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, v8, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getToken()I

    move-result v1

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getCookie()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v8
.end method

.method private static updateCookieWrapper(ILandroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;)V
    .locals 6

    const/4 v5, -0x1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    :cond_0
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallerInfoCardAsyncQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- email address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->emailAddresses:Ljava/util/ArrayList;

    :cond_3
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    :cond_4
    const-string v0, "account_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->accountType:Ljava/lang/String;

    :cond_5
    const-string v0, "sourceid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    :cond_6
    const-string v0, "sync2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sync2:Ljava/lang/String;

    :cond_7
    return-void
.end method
