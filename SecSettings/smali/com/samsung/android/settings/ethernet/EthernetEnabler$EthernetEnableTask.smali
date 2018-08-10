.class Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;
.super Landroid/os/AsyncTask;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-object v1, p1, v4

    aget-object v2, p1, v5

    const-string/jumbo v3, "enabling"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_0
    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get1(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v3}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get1(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-wrap0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-wrap0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;Z)V

    goto :goto_0
.end method
