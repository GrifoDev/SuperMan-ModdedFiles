.class final Lcom/android/incallui/util/GraphicResourceUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSizeWithViewWidth(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endPadding:I

.field final synthetic val$maxRippleHeight:I

.field final synthetic val$maxRippleWidth:I

.field final synthetic val$startPadding:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$startPadding:I

    iput p3, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$endPadding:I

    iput p4, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$maxRippleWidth:I

    iput p5, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$maxRippleHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$startPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$endPadding:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v2, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$maxRippleWidth:I

    iget v1, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$maxRippleHeight:I

    if-lez v0, :cond_0

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$maxRippleWidth:I

    if-le v3, v0, :cond_2

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/util/GraphicResourceUtils$1;->val$view:Landroid/view/View;

    invoke-static {v2, v1, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method
