.class Lcom/samsung/android/settings/iris/IrisSettings$5;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_iris_firstlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-get2(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisSettings;->-get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method
