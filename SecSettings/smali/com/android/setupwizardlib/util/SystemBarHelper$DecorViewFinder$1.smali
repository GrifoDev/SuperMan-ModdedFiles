.class Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get4(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get0(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;->onDecorViewInstalled(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get3(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-set0(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;I)I

    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get3(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get2(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v2}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get1(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SystemBarHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot get decor view of window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder$1;->this$1:Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    invoke-static {v3}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->-get4(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
