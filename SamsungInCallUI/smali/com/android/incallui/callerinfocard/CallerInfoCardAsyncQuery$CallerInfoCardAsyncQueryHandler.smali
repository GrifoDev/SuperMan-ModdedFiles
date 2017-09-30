.class Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoCardAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;Landroid/content/Context;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### onQueryComplete() #####   query complete for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    if-nez p2, :cond_0

    const-string v0, "Cookie is null, ignoring onQueryComplete() request."

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoCardAsyncQuery already released."

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, p3, p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItemManager;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==> Got mCallerInfoCardItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructing CallerInfoExpanded object for token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;

    iget-object v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->mCallerInfoCardItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete: cursor is not closed yet : token - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CallerInfoCardAsyncQueryHandler;->this$0:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;)V

    goto/16 :goto_0
.end method
