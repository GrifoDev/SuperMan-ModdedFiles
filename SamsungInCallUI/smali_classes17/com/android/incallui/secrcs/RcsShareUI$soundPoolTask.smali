.class Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;
.super Landroid/os/AsyncTask;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "soundPoolTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Landroid/media/SoundPool;",
        "Landroid/media/SoundPool;",
        ">;"
    }
.end annotation


# instance fields
.field soundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method private constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;-><init>(Lcom/android/incallui/secrcs/RcsShareUI;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Landroid/media/SoundPool;
    .locals 8

    const/4 v7, 0x1

    const/16 v0, 0x7d0

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    const/high16 v5, 0x7f080000

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load SoundPool :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SoundID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    new-instance v4, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;I)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    return-object v3

    :catch_0
    move-exception v1

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception to play beep: "

    invoke-static {v3, v4, v1, v7}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    iget-object v3, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    # invokes: Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V
    invoke-static {v3, v4}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1400(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->doInBackground([Landroid/content/Context;)Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/media/SoundPool;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    # invokes: Lcom/android/incallui/secrcs/RcsShareUI;->releaseSoundPool(Landroid/media/SoundPool;)V
    invoke-static {v0, p1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1400(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/media/SoundPool;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/media/SoundPool;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->onPostExecute(Landroid/media/SoundPool;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create SoundPool :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
