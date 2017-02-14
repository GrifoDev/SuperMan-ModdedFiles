.class Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    iget-boolean v2, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    iget v4, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->-set1(Lcom/android/server/pm/PersonaManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    goto :goto_0
.end method
