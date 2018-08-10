.class Lcom/samsung/android/settings/iris/IrisLockSettings$7;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;


# virtual methods
.method public onBottomReached()V
    .locals 2

    const-string/jumbo v0, "IrisLockSettings"

    const-string/jumbo v1, "onBottomReached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$7;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get0(Lcom/samsung/android/settings/iris/IrisLockSettings;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$7;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-get0(Lcom/samsung/android/settings/iris/IrisLockSettings;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
