.class Lcom/android/systemui/qs/QSTileView$1;
.super Ljava/lang/Object;
.source "QSTileView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSTileView;->createLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileView$1;->this$0:Lcom/android/systemui/qs/QSTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    sub-int v1, p4, p2

    sub-int v0, p8, p6

    if-eq v1, v0, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileView$1;->this$0:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, v1, v3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/qs/QSTileView;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    :cond_0
    return-void
.end method
