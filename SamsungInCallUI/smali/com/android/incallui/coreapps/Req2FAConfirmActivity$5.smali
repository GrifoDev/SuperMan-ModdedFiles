.class Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/coreapps/PermissionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/Req2FAConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Some permissions are missing..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/android/incallui/coreapps/Req2FAConfirmActivity$5;->this$0:Lcom/android/incallui/coreapps/Req2FAConfirmActivity;

    invoke-virtual {v0}, Lcom/android/incallui/coreapps/Req2FAConfirmActivity;->finish()V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 0

    return-void
.end method
