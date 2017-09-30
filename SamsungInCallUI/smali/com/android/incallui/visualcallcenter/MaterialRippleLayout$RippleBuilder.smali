.class public Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
.super Ljava/lang/Object;


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

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    iput-boolean v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    iput v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
    .locals 7

    const/4 v6, -0x1

    new-instance v2, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;-><init>(Landroid/content/Context;)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleColor(I)V

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleAlpha(Ljava/lang/Integer;)V

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDelayClick(Z)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    invoke-static {v0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDiameter(I)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleDuration(I)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleFadeDuration(I)V

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleHover(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRipplePersistent(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleOverlay(Z)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    invoke-virtual {v2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRippleBackground(I)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->child:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v2
.end method

.method public rippleAlpha(F)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleAlpha:F

    return-object p0
.end method

.method public rippleBackground(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleBackground:I

    return-object p0
.end method

.method public rippleColor(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleColor:I

    return-object p0
.end method

.method public rippleDelayClick(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDelayClick:Z

    return-object p0
.end method

.method public rippleDiameterDp(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDiameter:F

    return-object p0
.end method

.method public rippleDuration(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleDuration:I

    return-object p0
.end method

.method public rippleFadeDuration(I)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleFadeDuration:I

    return-object p0
.end method

.method public rippleHover(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleHover:Z

    return-object p0
.end method

.method public rippleOverlay(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->rippleOverlay:Z

    return-object p0
.end method

.method public ripplePersistent(Z)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;->ripplePersistent:Z

    return-object p0
.end method
