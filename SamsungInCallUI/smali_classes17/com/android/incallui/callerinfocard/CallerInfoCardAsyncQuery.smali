.class public Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoCardAsyncQuery.java"


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

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 254
    :cond_0
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;Landroid/content/Context;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    .line 257
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    # setter for: Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$302(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 258
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    # setter for: Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$402(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 259
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    # setter for: Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$302(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 263
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    # setter for: Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$402(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 264
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    # setter for: Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    invoke-static {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->access$502(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 265
    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    .line 266
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 269
    if-eqz p0, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "uriString":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 272
    .local v0, "indexOfLastSlash":I
    if-lez v0, :cond_0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .end local v0    # "indexOfLastSlash":I
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    .locals 12
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "listener"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;
    .param p5, "updated"    # Z

    .prologue
    .line 167
    const-string v1, "CallerInfoCardAsyncQuery"

    const-string v2, "##### CallerInfoCardAsyncQuery startQuery()... #####"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    const-string v1, "CallerInfoCardAsyncQuery"

    const-string v2, "- number: xxxxxxx"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "CallerInfoCardAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "CallerInfoCardAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    invoke-direct {v10}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;-><init>()V

    .line 173
    .local v10, "cookieWrapper":Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;
    iput-object p3, v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;

    .line 174
    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 175
    iput p0, v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->event:I

    .line 176
    iput p0, v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->appType:I

    .line 177
    move/from16 v0, p5

    iput-boolean v0, v10, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->updated:Z

    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-static {p0, p2, v10}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->updateCookieWrapper(ILandroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;)V

    .line 188
    :cond_0
    invoke-static {p0, v10}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgsManager;->create(ILjava/lang/Object;)Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;

    move-result-object v11

    .line 190
    .local v11, "queryArgs":Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
    new-instance v9, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    invoke-direct {v9}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;-><init>()V

    .line 191
    .local v9, "callerInfoCardAsyncQuery":Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    if-eqz v11, :cond_1

    .line 192
    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelection()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, p1, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 194
    iget-object v1, v9, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->mHandler:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getToken()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getCookie()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getProjection()[Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getOrderBy()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-virtual/range {v1 .. v8}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-object v9
.end method

.method private static updateCookieWrapper(ILandroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;)V
    .locals 7
    .param p0, "token"    # I
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cookieWrapper"    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    .prologue
    const/4 v6, -0x1

    .line 204
    const/16 v3, 0x20

    if-ne p0, v3, :cond_0

    .line 205
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 206
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 208
    .local v1, "columnIndex":I
    if-eq v1, v6, :cond_0

    .line 209
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    .line 213
    .end local v1    # "columnIndex":I
    :cond_0
    const/16 v3, 0x40

    if-ne p0, v3, :cond_3

    .line 214
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 215
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 216
    .local v2, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 218
    .restart local v1    # "columnIndex":I
    if-eq v1, v6, :cond_1

    .line 219
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "address":Ljava/lang/String;
    const-string v3, "CallerInfoCardAsyncQuery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "columnIndex":I
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->emailAddresses:Ljava/util/ArrayList;

    .line 227
    .end local v2    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    const/16 v3, 0x80

    if-ne p0, v3, :cond_7

    .line 228
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 229
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 230
    .restart local v1    # "columnIndex":I
    if-eq v1, v6, :cond_4

    .line 231
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    .line 234
    :cond_4
    const-string v3, "account_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 235
    if-eq v1, v6, :cond_5

    .line 236
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->accountType:Ljava/lang/String;

    .line 239
    :cond_5
    const-string v3, "sourceid"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 240
    if-eq v1, v6, :cond_6

    .line 241
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    .line 244
    :cond_6
    const-string v3, "sync2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 245
    if-eq v1, v6, :cond_7

    .line 246
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sync2:Ljava/lang/String;

    .line 250
    .end local v1    # "columnIndex":I
    :cond_7
    return-void
.end method
