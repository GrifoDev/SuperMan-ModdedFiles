.class Lcom/android/server/enterprise/application/ApplicationPolicy$7;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string/jumbo v9, "ApplicationPolicy"

    const-string/jumbo v10, "User switched"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v9, "android.intent.extra.user_handle"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get6(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get6(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isActivitePersona(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get6(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isCreatingPersona(I)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get6(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isDeletingPersona(I)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const-string/jumbo v9, "ApplicationPolicy"

    const-string/jumbo v10, "Persona no longer valid removing from cache"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    iget v7, v6, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get7(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v10, v10, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {v5, v9, v10, v7, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Context;II)V

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get7(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string/jumbo v9, "ApplicationPolicy"

    const-string/jumbo v10, "Persona is locked, postpone app start"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$7;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap15(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method
