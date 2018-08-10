.class Lcom/samsung/android/settings/iris/IrisSettings$11;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->showIrisUnlockTurnOnDialog(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;

.field final synthetic val$needToRegister:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->val$needToRegister:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->val$needToRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    const/16 v2, 0x2c5

    invoke-static {v1, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap3(Lcom/samsung/android/settings/iris/IrisSettings;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/iris/IrisSettings;->-get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisSettings;->-get12(Lcom/samsung/android/settings/iris/IrisSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->-get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$11;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
