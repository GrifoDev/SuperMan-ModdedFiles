.class Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;
.super Landroid/os/Handler;
.source "NetworkUnlockVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->-get0(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->-get1(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-virtual {v1}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vzw_network_lock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->-get0(Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01bb

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;

    invoke-virtual {v1}, Lcom/samsung/android/settings/networklock/NetworkUnlockVZW;->finish()V

    goto :goto_0
.end method
