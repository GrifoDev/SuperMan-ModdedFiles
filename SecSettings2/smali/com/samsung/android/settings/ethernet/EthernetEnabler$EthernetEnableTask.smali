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
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget-object v0, p1, v3

    aget-object v1, p1, v4

    const-string/jumbo v2, "enabling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/ethernet/EthernetEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/ethernet/EthernetEnabler;->-get0(Lcom/samsung/android/settings/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/EthernetManager;->setUserDisabled(Z)V

    goto :goto_0
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
