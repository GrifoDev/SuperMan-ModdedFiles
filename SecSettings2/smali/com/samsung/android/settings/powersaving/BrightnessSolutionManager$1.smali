.class Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;
.super Landroid/database/ContentObserver;
.source "BrightnessSolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->-get0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->-set0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Z)Z

    :goto_0
    const-string/jumbo v0, "BSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh orgBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->-get1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;->this$0:Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->-get2(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->-set1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;I)I

    goto :goto_0
.end method
