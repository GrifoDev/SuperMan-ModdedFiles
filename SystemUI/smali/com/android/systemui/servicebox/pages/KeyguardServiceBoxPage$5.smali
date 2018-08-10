.class Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showLockStarServiceBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage$5;->this$0:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setVisibility(I)V

    return-void
.end method
