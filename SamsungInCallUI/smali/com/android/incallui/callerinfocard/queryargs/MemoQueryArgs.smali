.class public Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "memo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILEPATH_ACTIONMEMO:Ljava/lang/String; = "sec_custom1"

.field public static final LASTMODIFIEDAT:Ljava/lang/String; = "lastModifiedAt"

.field public static final STRIPPEDCONTENT:Ljava/lang/String; = "strippedContent"

.field private static final TAG:Ljava/lang/String; = "MemoQueryArgs"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _PHONENUM:Ljava/lang/String; = "_phoneNum"

.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mHandler:Landroid/os/Handler;

.field private static mObserverUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "content://com.samsung.android.memo/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mObserverUri:Landroid/net/Uri;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mUri:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sec_custom1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "number=? AND sec_custom1 IS NOT NULL"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mSelection:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    const-string v0, "sec_custom1 DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mOrderBy:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mUri:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lastModifiedAt"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "strippedContent"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "_phoneNum=? AND lastModifiedAt>=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mSelection:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    const-string v0, "lastModifiedAt DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mOrderBy:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static registerContentObserver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mObserverUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "MemoQueryArgs"

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mObserverUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public static unregisterContentObserver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "MemoQueryArgs"

    const-string v1, "unregisterContentObserver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
