.class Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRemoveOldNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;Landroid/net/wifi/WifiConfiguration;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->getUsedTime(Landroid/net/wifi/WifiConfiguration;)J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V

    return-void
.end method

.method private getUsedTime(Landroid/net/wifi/WifiConfiguration;)J
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    return-wide v0

    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semUpdateTime:J

    return-wide v0

    :cond_1
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->semCreationTime:J

    return-wide v0

    :cond_2
    return-wide v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v8, "WifiStatusReceiver"

    const-string/jumbo v9, "AsyncRemoveOldNetworks.doInBackground()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-static {v8}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "WifiStatusReceiver"

    const-string/jumbo v9, "mContext is null, return"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;->this$0:Lcom/android/systemui/wifi/WifiStatusReceiver;

    invoke-static {v8}, Lcom/android/systemui/wifi/WifiStatusReceiver;->-get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_1

    const-string/jumbo v8, "WifiStatusReceiver"

    const-string/jumbo v9, "wifiManager is null, return"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1
    aget-object v2, p1, v10

    new-instance v8, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "sorted order : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "WifiStatusReceiver"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x32

    invoke-interface {v2, v10, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v8, "WifiStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "networkId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is removed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-object v11
.end method
