.class Lcom/android/systemui/qs/QSDualTileLabel$2;
.super Ljava/lang/Object;
.source "QSDualTileLabel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDualTileLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    sub-int v0, p8, p6

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel$2;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDualTileLabel;->-wrap0(Lcom/android/systemui/qs/QSDualTileLabel;)V

    :cond_0
    return-void
.end method
