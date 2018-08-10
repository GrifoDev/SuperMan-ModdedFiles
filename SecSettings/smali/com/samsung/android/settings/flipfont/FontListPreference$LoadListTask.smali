.class Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private privState:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    new-instance v1, Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set1(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get1(Lcom/samsung/android/settings/flipfont/FontListPreference;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlipFont"

    const-string/jumbo v2, "dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListPreference;->mState:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->privState:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
