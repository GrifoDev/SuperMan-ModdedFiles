.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->onDestroy()V

    return-void
.end method
