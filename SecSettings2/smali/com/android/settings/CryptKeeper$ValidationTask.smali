.class Lcom/android/settings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
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
.field state:I

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$ValidationTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v4}, Lcom/android/settings/CryptKeeper;->-wrap0(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    :try_start_0
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Validating encryption state."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    iput v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v3, :cond_0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_0
    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Data partition is damaged during en/decryption"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    :goto_0
    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_2
    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 v5, -0x6

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CryptKeeper"

    const-string/jumbo v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_3
    :try_start_1
    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->state:I

    const/4 v5, -0x7

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->-set4(Lcom/android/settings/CryptKeeper;Z)Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap12(Lcom/android/settings/CryptKeeper;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$ValidationTask;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
