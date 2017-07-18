.class final Lcom/android/incallui/util/ContactAgentUtils$1;
.super Landroid/os/AsyncTask;
.source "ContactAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/ContactAgentUtils;->startContactAgentAsync(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x1

    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: start"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/EasySignUpManager;->isJoined(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/String;

    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v4, "ContactAgentUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startContactAgentAsync: isIncoming - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isContactExists - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v3, v2, v1}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: end"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    return-object v4

    :cond_1
    invoke-static {v0, v3, v2, v1}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_2
    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: do not support"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
