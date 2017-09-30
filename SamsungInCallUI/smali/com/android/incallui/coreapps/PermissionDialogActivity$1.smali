.class Lcom/android/incallui/coreapps/PermissionDialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/PermissionDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/PermissionDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$1;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$1;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-virtual {v2}, Lcom/android/incallui/coreapps/PermissionDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$1;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/coreapps/PermissionDialogActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$1;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/PermissionDialogActivity;->finish()V

    return-void
.end method
