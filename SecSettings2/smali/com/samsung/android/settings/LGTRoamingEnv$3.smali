.class Lcom/samsung/android/settings/LGTRoamingEnv$3;
.super Landroid/os/Handler;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LGTRoamingEnv"

    const-string/jumbo v2, "update fail time out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get2()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01c3

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set2(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "COUNTRY_UPDATE_VER_TIME_EXPIRED curSimVer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get0(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get0(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get0(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gsm.sim.version"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get2()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01c6

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LGTRoamingEnv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "after update simver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap1(Lcom/samsung/android/settings/LGTRoamingEnv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$3;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set2(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get2()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01c2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method
