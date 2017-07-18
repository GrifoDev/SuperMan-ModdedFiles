.class public Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "RemoteCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteCallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$602(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    iput-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

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

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;
    .locals 13

    const-string v1, "RemoteCallerInfoAsyncQuery"

    const-string v2, "##### CallerInfoAsyncQuery startQuery()... #####"

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- number: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p2, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- cookie: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- normalizeNumber: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "phone_lookup_enterprise"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "INCLUDE_PROFILE"

    const-string v6, "true"

    invoke-virtual {v1, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sip"

    invoke-static {v12}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> contactRef: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;

    invoke-direct {v10}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;-><init>()V

    invoke-direct {v10, p1, v4}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$1;)V

    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v1, p2, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    iput-object v1, v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->event:I

    const-string v9, "data_id"

    const/16 v1, 0xd

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v5, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v5, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v5, v1

    const/4 v1, 0x3

    const-string v2, "number"

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const-string v2, "normalized_number"

    aput-object v2, v5, v1

    const/4 v1, 0x5

    const-string v2, "label"

    aput-object v2, v5, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v5, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v5, v1

    const/16 v1, 0x8

    const-string v2, "photo_uri"

    aput-object v2, v5, v1

    const/16 v1, 0x9

    const-string v2, "custom_ringtone"

    aput-object v2, v5, v1

    const/16 v1, 0xa

    const-string v2, "send_to_voicemail"

    aput-object v2, v5, v1

    const/16 v1, 0xb

    const-string v2, "photo_thumb_uri"

    aput-object v2, v5, v1

    const/16 v1, 0xc

    const-string v2, "photo_file_id"

    aput-object v2, v5, v1

    iget-object v1, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->mHandler:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method
