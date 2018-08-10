.class Lcom/absolute/android/persistservice/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/n;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/n;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/n;Lcom/absolute/android/persistservice/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/o;-><init>(Lcom/absolute/android/persistservice/n;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    if-eq v8, v11, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    invoke-static {v8}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistservice/n;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    iget-object v8, v8, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-static {v8}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v8, 0x3e8

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    iget-object v8, v8, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v8, v0}, Lcom/absolute/android/persistservice/l;->c(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, v11, v0}, Lcom/absolute/android/persistservice/o;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v11, v0}, Lcom/absolute/android/persistservice/o;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {p0, v8, v10, v11}, Lcom/absolute/android/persistservice/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    iget-object v8, v8, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v8, v8, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Application: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is no longer being monitored via running services check."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/absolute/android/persistservice/o;->a:Lcom/absolute/android/persistservice/n;

    iget-object v8, v8, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v8, v0, v12}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    goto :goto_2
.end method
