.class Lcom/android/settings/wifi/WpsDialog$1;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const v2, 0x7f10002d

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->-get8(Lcom/android/settings/wifi/WpsDialog;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100033

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUxWithResValue(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->-get6(Lcom/android/settings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->-get6(Lcom/android/settings/wifi/WpsDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100035

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUxWithResValue(II)V

    goto :goto_0
.end method
