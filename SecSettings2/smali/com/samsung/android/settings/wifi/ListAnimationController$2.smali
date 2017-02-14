.class Lcom/samsung/android/settings/wifi/ListAnimationController$2;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onAdd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-wrap0(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V

    goto :goto_0
.end method

.method public onAnimationEnd(Z)V
    .locals 3

    const-string/jumbo v0, "WifiSettings.VI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnimationEnd listCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get6(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeToUpdateAccessPoint()V

    return-void
.end method

.method public onAnimationStart(Z)V
    .locals 2

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDelete()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-get1(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->isInsertDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onAddDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-wrap1(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-wrap0(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WifiSettings.VI"

    const-string/jumbo v1, "onDelete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$2;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->-wrap1(Lcom/samsung/android/settings/wifi/ListAnimationController;Z)V

    goto :goto_0
.end method
