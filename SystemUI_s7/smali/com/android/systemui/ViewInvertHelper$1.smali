.class Lcom/android/systemui/ViewInvertHelper$1;
.super Ljava/lang/Object;
.source "ViewInvertHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ViewInvertHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/systemui/ViewInvertHelper;->-wrap0(Lcom/android/systemui/ViewInvertHelper;F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v1}, Lcom/android/systemui/ViewInvertHelper;->-get1(Lcom/android/systemui/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v1}, Lcom/android/systemui/ViewInvertHelper;->-get1(Lcom/android/systemui/ViewInvertHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/ViewInvertHelper$1;->this$0:Lcom/android/systemui/ViewInvertHelper;

    invoke-static {v2}, Lcom/android/systemui/ViewInvertHelper;->-get0(Lcom/android/systemui/ViewInvertHelper;)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
