.class Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;
.super Landroid/os/AsyncTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetSettingsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/samsung/android/settings/ResetSettingsValue;

    invoke-direct {v1}, Lcom/samsung/android/settings/ResetSettingsValue;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/ResetSettingsValue;->resetAllSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$ResetSettingsTask;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v0}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-wrap1(Lcom/samsung/android/settings/ResetSettingsConfirm;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
