.class Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->runRefreshDialpadMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

.field final synthetic val$menu:Lcom/android/incallui/InCallMenu;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/manager/DialpadFragmentManager;Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iput-object p2, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->val$menu:Lcom/android/incallui/InCallMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->val$menu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    const-string v1, "DialpadFragmentManager - Menu is closed"

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->showInCallMenu()V

    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    const-string v1, "DialpadFragmentManager - Now Menu is opened"

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v0, v0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/fragment/manager/DialpadFragmentManager$3;->this$0:Lcom/android/incallui/fragment/manager/DialpadFragmentManager;

    iget-object v1, v1, Lcom/android/incallui/fragment/manager/DialpadFragmentManager;->mMenuObserver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
