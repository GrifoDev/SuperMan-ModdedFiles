.class Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "DesktopModeService.EXTRA_DESKTOP_MODE_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
