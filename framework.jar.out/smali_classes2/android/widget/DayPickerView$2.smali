.class Landroid/widget/DayPickerView$2;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-get3(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v1, -0x1

    :goto_0
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-get0(Landroid/widget/DayPickerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-get4(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v3

    add-int v2, v3, v1

    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-get4(Landroid/widget/DayPickerView;)Lcom/android/internal/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v3}, Landroid/widget/DayPickerView;->-get1(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v3

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
