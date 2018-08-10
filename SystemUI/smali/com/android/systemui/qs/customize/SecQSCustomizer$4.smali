.class Lcom/android/systemui/qs/customize/SecQSCustomizer$4;
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

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0x1388

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-static {v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set2(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/CustomizeTileView;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get7(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setHapticFeedbackEnabled(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set3(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    new-instance v5, Lcom/android/systemui/qs/customize/SecQSCustomizer$4$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer$4$1;-><init>(Lcom/android/systemui/qs/customize/SecQSCustomizer$4;Landroid/view/View;)V

    invoke-static {v3, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set4(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/view/View$DragShadowBuilder;)Landroid/view/View$DragShadowBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const v6, 0x7f0a03f2

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v5, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set5(Lcom/android/systemui/qs/customize/SecQSCustomizer;I)I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get1(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    iget-object v2, v3, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "custom("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get5(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get8(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileFromNewCustomTileList(Landroid/content/ComponentName;)V

    :cond_0
    const-string/jumbo v3, "SecQSCustomizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLongClick mWhereAmI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get11(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "v = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-wrap4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get10(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Landroid/view/View$DragShadowBuilder;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {p1, v7, v4, v7, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-set0(Lcom/android/systemui/qs/customize/SecQSCustomizer;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get4(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->requestLayout()V

    :cond_1
    const/4 v3, 0x1

    return v3

    :cond_2
    const/16 v3, 0x1770

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->-get2(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    goto/16 :goto_1
.end method
