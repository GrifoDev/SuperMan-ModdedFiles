.class Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;
.super Landroid/os/AsyncTask;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDialogTask"
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

.field final synthetic this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/flipfont/FontListPreference;Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;-><init>(Lcom/samsung/android/settings/flipfont/FontListPreference;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-set3(Lcom/samsung/android/settings/flipfont/FontListPreference;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->savePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListPreference;->onOkButtonPressed()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v8, 0x1964

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v7}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v7, 0x32

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "com.samsung.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "com.sec.android.app.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "com.infraware.polarisoffice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisoffice4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v7, Lcom/samsung/android/settings/flipfont/FontListPreference;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "FlipFont"

    const-string/jumbo v8, "dismiss/show FontLoad() - catch (Exception ex)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "com.infraware.polarisviewer4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.PolarisOfficeStdForTablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisviewer5tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisoffice5tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisoffice4.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisoffice5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisoffice5.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisviewer5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "com.infraware.polarisviewer5.document"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-virtual {v7}, Lcom/samsung/android/settings/flipfont/FontListPreference;->restartLater()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1216bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->this$0:Lcom/samsung/android/settings/flipfont/FontListPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/flipfont/FontListPreference;->-get0(Lcom/samsung/android/settings/flipfont/FontListPreference;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/flipfont/FontListPreference$LoadDialogTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method
