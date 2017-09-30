.class Lcom/android/incallui/coreapps/PermissionDialogActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$4;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/PermissionDialogActivity$4;->this$0:Lcom/android/incallui/coreapps/PermissionDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/PermissionDialogActivity;->finish()V

    return-void
.end method
