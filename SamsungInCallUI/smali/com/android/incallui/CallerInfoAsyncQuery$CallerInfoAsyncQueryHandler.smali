.class Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/incallui/CallerInfo;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/incallui/CallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/CallerInfoAsyncQuery$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->onQueryCompleteAsync(ILjava/lang/Object;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/incallui/CallerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method private onQueryCompleteAsync(ILjava/lang/Object;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    if-nez p2, :cond_2

    const-string v2, "onQueryCompleteAsync: Cookie is null, ignoring onQueryComplete() request."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object p2, v1

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    :try_start_1
    iget v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const-string v2, "onQueryCompleteAsync: release"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/incallui/CallerInfoAsyncQuery;

    invoke-static {v2}, Lcom/android/incallui/CallerInfoAsyncQuery;->access$400(Lcom/android/incallui/CallerInfoAsyncQuery;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object p2, v1

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v1, "perf - onQueryCompleteAsync: start"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v1, :cond_7

    :cond_5
    new-instance v1, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;

    const-string v2, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v1, v2}, Lcom/android/incallui/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    :try_start_3
    iget v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    new-instance v1, Lcom/android/incallui/CallerInfo;

    invoke-direct {v1}, Lcom/android/incallui/CallerInfo;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallerInfo;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    :cond_8
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructing CallerInfo object for token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "support_twophone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/CallerInfo;->twophoneNumber:Ljava/lang/String;

    const-string v1, "query complete mCallerInfo.twophoneNumber : "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->needToClear:Z

    :cond_a
    const-string v1, "perf - onQueryCompleteAsync: end"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_b
    :try_start_4
    iget v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    new-instance v1, Lcom/android/incallui/CallerInfo;

    invoke-direct {v1}, Lcom/android/incallui/CallerInfo;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;Ljava/lang/String;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    goto :goto_1

    :cond_c
    iget-object v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v2, :cond_10

    instance-of v1, v2, Lcom/android/incallui/Call;

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Lcom/android/incallui/Call;

    move-object v1, v0

    invoke-static {v5, v1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    invoke-static {v3, v4, p3, v1}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> Got mCallerInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-static {v1, v3, v4}, Lcom/android/incallui/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    :cond_d
    if-eqz v2, :cond_11

    instance-of v1, v2, Lcom/android/incallui/Call;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    check-cast v2, Lcom/android/incallui/Call;

    invoke-static {v1, v3, v4, v2}, Lcom/android/incallui/CallerInfo;->doTwoPhoneLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    :cond_e
    :goto_3
    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    if-eq v1, v2, :cond_f

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####async contact look up with numeric username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/CallerInfo;->queryNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "disable_format_number"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v1, v3, p3}, Lcom/android/incallui/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    goto/16 :goto_2

    :cond_11
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/CallerInfo;->doTwoPhoneLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    goto :goto_3

    :cond_12
    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->a(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentIso"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v4, v4, Lcom/android/incallui/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/incallui/util/NameNumberUtils;->isKorIsoWithNationalNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v3, p2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "originalNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo;->originalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/CallerInfo;

    iget-object v2, v2, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener.onQueryComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
