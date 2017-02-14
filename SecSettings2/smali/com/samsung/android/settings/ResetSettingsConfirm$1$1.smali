.class Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;
.super Ljava/util/TimerTask;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/ResetSettingsConfirm$1;

.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;->this$1:Lcom/samsung/android/settings/ResetSettingsConfirm$1;

    iput-object p2, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;->val$finalContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "reset settings"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
