.class Lcom/android/incallui/agif/AppUpdateDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/incallui/agif/AppUpdateDialog$3;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AppUpdateDialog$3;->this$0:Lcom/android/incallui/agif/AppUpdateDialog;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AppUpdateDialog;->finish()V

    return-void
.end method
