.class Lcom/android/server/enterprise/kioskmode/KioskModeService$5;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap0(Lcom/android/server/enterprise/kioskmode/KioskModeService;ZI)Z

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap8(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    return-void
.end method
