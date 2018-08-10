.class Lcom/android/server/aod/AODManagerService$8;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;->startAODService(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;

.field final synthetic val$aodStartState:I


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODManagerService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$8;->this$0:Lcom/android/server/aod/AODManagerService;

    iput p2, p0, Lcom/android/server/aod/AODManagerService$8;->val$aodStartState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget v3, p0, Lcom/android/server/aod/AODManagerService$8;->val$aodStartState:I

    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.app.aodservice.AODService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/aod/AODManagerService$8;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v3}, Lcom/android/server/aod/AODManagerService;->-get10(Lcom/android/server/aod/AODManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
