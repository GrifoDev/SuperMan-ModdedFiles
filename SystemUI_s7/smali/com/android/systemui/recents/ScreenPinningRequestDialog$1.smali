.class Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-virtual {v0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    :cond_1
    return-void
.end method
