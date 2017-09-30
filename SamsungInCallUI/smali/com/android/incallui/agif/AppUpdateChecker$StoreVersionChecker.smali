.class Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreVersionChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AppUpdateChecker;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AppUpdateChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;->this$0:Lcom/android/incallui/agif/AppUpdateChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "AppUpdateChecker"

    const-string v1, "[StoreVersionChecker] - doInBackground"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;->this$0:Lcom/android/incallui/agif/AppUpdateChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/agif/AppUpdateChecker;->access$200(Lcom/android/incallui/agif/AppUpdateChecker;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/agif/AppUpdateChecker;->access$102(I)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/incallui/agif/AppUpdateChecker$MarketVersionChecker;

    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;->this$0:Lcom/android/incallui/agif/AppUpdateChecker;

    invoke-direct {v1, v0}, Lcom/android/incallui/agif/AppUpdateChecker$MarketVersionChecker;-><init>(Lcom/android/incallui/agif/AppUpdateChecker;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/incallui/agif/AppUpdateChecker$MarketVersionChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/incallui/agif/AppUpdateChecker$StoreVersionChecker;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
