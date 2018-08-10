.class Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dismissLockStarServiceBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_servicebox_pages_KeyguardServiceBoxPage$7_30542(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_servicebox_pages_KeyguardServiceBoxPage$7_31031(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$Lambda$7_i9Rioot9QeDBpTYCv0XTH7YkY$2;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->val$pkgName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/pages/-$Lambda$7_i9Rioot9QeDBpTYCv0XTH7YkY$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    iput-object v2, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/systemui/servicebox/utils/SecTransition;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    new-instance v1, Lcom/android/systemui/servicebox/pages/-$Lambda$7_i9Rioot9QeDBpTYCv0XTH7YkY$3;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->val$pkgName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/servicebox/pages/-$Lambda$7_i9Rioot9QeDBpTYCv0XTH7YkY$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$7;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->-get0(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setFullscreenMode(Z)V

    return-void
.end method
