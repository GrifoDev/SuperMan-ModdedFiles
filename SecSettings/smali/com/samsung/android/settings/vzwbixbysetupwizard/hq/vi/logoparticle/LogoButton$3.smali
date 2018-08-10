.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LogoButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->hideListenLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
