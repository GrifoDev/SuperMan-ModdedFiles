.class Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    const-string/jumbo v3, "RestrictionPolicy"

    const-string/jumbo v4, "FOTAReceiver: onReceive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sec.fota.intent.MDM_REGISTER_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    const-string/jumbo v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-wrap0(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    :goto_0
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-wrap6(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "RestrictionPolicy"

    const-string/jumbo v4, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.xdm.intent.UPDATE_RESULT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v3, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "RestrictionPolicy"

    const-string/jumbo v4, "action:com.xdm.intent.UPDATE_RESULT ignore"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v3, "result"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v2, v1, 0x5

    const-string/jumbo v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "action:com.xdm.intent.UPDATE_RESULT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_4

    if-ge v2, v6, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-static {v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-wrap6(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V

    goto :goto_1
.end method
