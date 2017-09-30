.class Lcom/android/incallui/agif/AppUpdateDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AppUpdateDialog;->showAppUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AppUpdateDialog;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AppUpdateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AppUpdateDialog$1;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/agif/AppUpdateChecker;->isAppUpdateToGalaxyApps()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateDialog$1;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-static {v0}, Lcom/android/incallui/agif/AppUpdateDialog;->access$000(Lcom/android/incallui/agif/AppUpdateDialog;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateDialog$1;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AppUpdateDialog;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/agif/AppUpdateChecker;->isAppUpdateToPlayStore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateDialog$1;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-static {v0}, Lcom/android/incallui/agif/AppUpdateDialog;->access$100(Lcom/android/incallui/agif/AppUpdateDialog;)V

    goto :goto_0
.end method
