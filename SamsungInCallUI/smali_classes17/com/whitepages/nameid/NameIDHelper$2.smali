.class final Lcom/whitepages/nameid/NameIDHelper$2;
.super Landroid/os/AsyncTask;
.source "NameIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/whitepages/nameid/NameIDHelper;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$lookupUri:Landroid/net/Uri;

.field final synthetic val$originalIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/net/Uri;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$lookupUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$originalIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    # getter for: Lcom/whitepages/nameid/NameIDHelper;->s_service:Lcom/whitepages/nameid/ILookupService;
    invoke-static {}, Lcom/whitepages/nameid/NameIDHelper;->access$000()Lcom/whitepages/nameid/ILookupService;

    move-result-object v3

    iget-object v2, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$intent:Landroid/content/Intent;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$lookupUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    invoke-interface {v3, v4, v2}, Lcom/whitepages/nameid/ILookupService;->addToContactsIntentForPhoneLookupUri(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$lookupUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "NameIDHelper"

    const-string v3, "Error calling addToContactsIntentForPhone"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/whitepages/nameid/NameIDHelper$2;->doInBackground([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$originalIntent:Landroid/content/Intent;

    const-string v1, "NameIDHelper"

    const-string v2, "name id data not found; using original intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/whitepages/nameid/NameIDHelper$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v1, "NameIDHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got new intent to start activity with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NameIDHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/whitepages/nameid/NameIDHelper$2;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
