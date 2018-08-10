.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "KeyguardSecurityViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public maxHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public maxWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/keyguard/R$styleable;->KeyguardSecurityViewFlipper_Layout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    iget v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    iget v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "layout:maxWidth"

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "layout:maxHeight"

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method
