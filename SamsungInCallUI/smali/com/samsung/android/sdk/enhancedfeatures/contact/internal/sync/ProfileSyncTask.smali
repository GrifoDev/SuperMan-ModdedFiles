.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactSyncAdapter;->onPerformSync(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->doInBackground([Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;->resultCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileBaseResponse;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;

    iget v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;->resultCode:I

    iget-object v3, p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;->errorMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileErrorResponse;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->onPostExecute(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/response/ContactSyncResponse;)V

    return-void
.end method
