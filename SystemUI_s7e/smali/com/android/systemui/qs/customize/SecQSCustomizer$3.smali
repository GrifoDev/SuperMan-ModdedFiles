.class Lcom/android/systemui/qs/customize/SecQSCustomizer$3;
.super Ljava/lang/Object;
.source "SecQSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set2(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get6(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setHapticFeedbackEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set3(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    new-instance v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer$3;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set4(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f13036e

    if-ne v1, v3, :cond_1

    const/16 v1, 0x1388

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set5(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I

    const-string/jumbo v1, "SecQSCustomizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLongClick mWhereAmI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get9(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;

    move-result-object v2

    invoke-virtual {p1, v5, v2, v5, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set0(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->requestLayout()V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/16 v1, 0x1770

    goto :goto_0
.end method
