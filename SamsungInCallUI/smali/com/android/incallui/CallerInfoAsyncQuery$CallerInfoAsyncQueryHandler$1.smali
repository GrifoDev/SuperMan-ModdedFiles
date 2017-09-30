.class Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    aget-object v2, p1, v0

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v3, v1, v2, v0}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$100(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;ILjava/lang/Object;Landroid/database/Cursor;)Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 9

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    iget-boolean v0, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->needToClear:Z

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/incallui/CallerInfoAsyncQuery$1;)V

    const/4 v0, 0x3

    iput v0, v2, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/incallui/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "perf - listener.onQueryComplete: start"

    invoke-static {p0, v0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifying listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v2}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/incallui/CallerInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v2, p1, Lcom/android/incallui/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$1;->this$1:Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v3}, Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$300(Lcom/android/incallui/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V

    :goto_0
    const-string v0, "perf - listener.onQueryComplete: end"

    invoke-static {p0, v0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "listener.onQueryComplete:: cw.listener is null"

    invoke-static {p0, v0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "listener.onQueryComplete: mCallerInfo is null"

    invoke-static {p0, v0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1
.end method
