.class Lcom/samsung/android/widget/SemColorPicker$1;
.super Ljava/lang/Object;
.source "SemColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemColorPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get5(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get4(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemColorPicker;->-set0(Lcom/samsung/android/widget/SemColorPicker;Z)Z

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get5(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get3(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4, v1}, Lcom/samsung/android/widget/SemColorPicker;->-wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
