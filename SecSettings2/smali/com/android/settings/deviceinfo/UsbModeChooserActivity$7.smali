.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$disallowedByAdmin:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$disallowedByAdmin:Z

    iput p3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$disallowedByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get3(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-eq v0, v1, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get9(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "UsbModeChooserActivity"

    const-string/jumbo v1, "onClick() : return doing role swap to supplying power"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "UsbModeChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick() - click current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->checkSmartSwtichTransfer()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbBackend;->setMode(I)V

    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0, v3}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set5(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;Z)Z

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->val$mode:I

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-set0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)I

    const-string/jumbo v0, "UsbModeChooserActivity"

    const-string/jumbo v1, "Finish by set mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$7;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-wrap1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    goto :goto_0
.end method
