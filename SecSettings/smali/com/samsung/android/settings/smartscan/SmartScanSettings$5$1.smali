.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
.source "SmartScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovalError with iris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-wrap1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovalSucceeded : iris deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get9(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get9(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v1, v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v2, v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "ISRV"

    const/16 v3, -0x3e8

    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/settings/biometrics/BiometricsLog;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-wrap0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;->this$1:Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    iget-object v0, v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-wrap1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    return-void
.end method
