.class Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;
.super Landroid/os/AsyncTask;
.source "FontPreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;
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

.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "flip_font_style"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v10

    :catch_0
    move-exception v0

    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "this is regarding debugging. it is not problem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-nez v4, :cond_0

    if-ge v5, v11, :cond_0

    add-int/lit8 v5, v5, 0x1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loop:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "flip_font_style"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "FontPreview loading dialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "this is regarding debugging. it is not problem: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v5, v11, :cond_1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->cancel(Z)Z

    goto/16 :goto_0
.end method

.method public getProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-get4(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->-wrap3(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "FlipFont dismiss/show ListLoad() - catch (Exception ex)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    const v2, 0x7f0b14a6

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
