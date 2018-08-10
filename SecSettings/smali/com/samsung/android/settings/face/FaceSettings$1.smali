.class Lcom/samsung/android/settings/face/FaceSettings$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v1, 0x7f120abf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onRemovalSucceeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceSettings;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onRemovalSucceeded : skip update screen after destory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap2(Lcom/samsung/android/settings/face/FaceSettings;)V

    return-void
.end method
