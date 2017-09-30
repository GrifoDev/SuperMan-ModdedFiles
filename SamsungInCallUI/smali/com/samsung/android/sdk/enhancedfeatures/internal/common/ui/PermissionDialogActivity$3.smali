.class Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0
.end method
