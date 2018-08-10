.class Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.source "SmartScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/smartscan/SmartScanSettings;->deleteSmartScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemovalError with face : "

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

    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "onRemovalSucceeded : face deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get3(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get3(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "deleteSmartScan : getEnrolledIrises is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get3(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/iris/Iris;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;->this$0:Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->-get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I

    move-result v3

    new-instance v4, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    return-void
.end method
