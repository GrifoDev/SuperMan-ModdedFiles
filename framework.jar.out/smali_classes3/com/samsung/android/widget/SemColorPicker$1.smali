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
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemColorPicker;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemColorPicker;->-get4(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemColorPicker;->-get2(Lcom/samsung/android/widget/SemColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v3}, Lcom/samsung/android/widget/SemColorPicker;->-get4(Lcom/samsung/android/widget/SemColorPicker;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->setColor(I)V

    .line 285
    iget-object v3, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemColorPicker$1;->this$0:Lcom/samsung/android/widget/SemColorPicker;

    invoke-static {v4}, Lcom/samsung/android/widget/SemColorPicker;->-get1(Lcom/samsung/android/widget/SemColorPicker;)Lcom/samsung/android/widget/SemColorPicker$PickedColor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemColorPicker$PickedColor;->getColor()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->-wrap0(Lcom/samsung/android/widget/SemColorPicker;I)V

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "button":Landroid/view/View;
    :cond_1
    return-void
.end method
