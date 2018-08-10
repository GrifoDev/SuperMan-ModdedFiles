.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;
.super Ljava/lang/Object;
.source "LogoButton.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->showListenLogo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

.field final synthetic val$cx:I

.field final synthetic val$cy:I

.field final synthetic val$initialRadius:F


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;IIF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    iput p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$cx:I

    iput p3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$cy:I

    iput p4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$initialRadius:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$cx:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$cy:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->val$initialRadius:F

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-static {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
