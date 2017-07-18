.class Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RemoteCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11

    const/4 v5, 0x3

    :try_start_0
    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;

    move-object v10, v0

    if-nez v10, :cond_1

    const-string v1, "RemoteCallerInfoAsyncQuery"

    const-string v2, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget v1, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;

    invoke-static {v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;->access$100(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v1, :cond_5

    :cond_3
    new-instance v1, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$QueryPoolException;

    const-string v2, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v1, v2}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    :try_start_3
    iget-object v9, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    if-eqz v9, :cond_9

    instance-of v1, v9, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    check-cast v9, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    invoke-static {v4, v9}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/remotecall/remotecall/RemoteCall;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v4

    invoke-static {v1, v2, p3, v4}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    :goto_1
    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Got mCallerInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    iget-object v2, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    :cond_6
    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructing CallerInfo object for token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$1;)V

    const/4 v1, 0x3

    iput v1, v3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v1, :cond_8

    const-string v1, "RemoteCallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifying listener: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v2, v10, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    invoke-interface {v1, p1, v2, v4}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    iget-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v1, v2, p3}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "RemoteCallerInfoAsyncQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InCall: startQuery: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " projection=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " args=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
