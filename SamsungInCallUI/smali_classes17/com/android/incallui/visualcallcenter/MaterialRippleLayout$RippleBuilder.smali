.class public Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
.super Ljava/lang/Object;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RippleBuilder"
.end annotation


# instance fields
.field private final child:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private rippleAlpha:F

.field private rippleBackground:I

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:F

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    .line 456
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    .line 457
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    .line 458
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    .line 459
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    .line 460
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    .line 461
    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    .line 462
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    .line 463
    iput-boolean v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    .line 464
    iput v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    .line 467
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    .line 469
    return-void
.end method


# virtual methods
.method public create()Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 522
    new-instance v1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;-><init>(Landroid/content/Context;)V

    .line 523
    .local v1, "layout":Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
    iget v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleColor(I)V

    .line 524
    const/high16 v4, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    .line 525
    iget-boolean v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDelayClick(Z)V

    .line 526
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    invoke-static {v4, v5}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDiameter(I)V

    .line 527
    iget v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDuration(I)V

    .line 528
    iget v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleFadeDuration(I)V

    .line 529
    iget-boolean v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleHover(Z)V

    .line 530
    iget-boolean v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRipplePersistent(Z)V

    .line 531
    iget-boolean v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleOverlay(Z)V

    .line 532
    iget v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    invoke-virtual {v1, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleBackground(I)V

    .line 534
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 535
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 536
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .line 538
    .local v0, "index":I
    if-eqz v3, :cond_0

    .line 539
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 540
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {v3, v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 549
    :cond_1
    return-object v1
.end method

.method public rippleAlpha(F)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 497
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    .line 498
    return-object p0
.end method

.method public rippleBackground(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 517
    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    .line 518
    return-object p0
.end method

.method public rippleColor(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 472
    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    .line 473
    return-object p0
.end method

.method public rippleDelayClick(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "delayClick"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    .line 503
    return-object p0
.end method

.method public rippleDiameterDp(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 1
    .param p1, "diameterDp"    # I

    .prologue
    .line 487
    int-to-float v0, p1

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    .line 488
    return-object p0
.end method

.method public rippleDuration(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 492
    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    .line 493
    return-object p0
.end method

.method public rippleFadeDuration(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "fadeDuration"    # I

    .prologue
    .line 507
    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    .line 508
    return-object p0
.end method

.method public rippleHover(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "hover"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    .line 483
    return-object p0
.end method

.method public rippleOverlay(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "overlay"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    .line 478
    return-object p0
.end method

.method public ripplePersistent(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    .line 513
    return-object p0
.end method
