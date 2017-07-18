.class Lcom/android/server/pm/PersonaManagerService$6;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string/jumbo v1, "PersonaManagerService"

    const-string/jumbo v2, "registerReceiver for ACTION_USER_SWITCHED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.intent.action.IRIS_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.knox.container.INTENT_ACTION_RESET_PWD_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get23(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.container.ACCESS_RECEIVER"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "sys.knox.store"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$6;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->-wrap52(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    return-void
.end method
