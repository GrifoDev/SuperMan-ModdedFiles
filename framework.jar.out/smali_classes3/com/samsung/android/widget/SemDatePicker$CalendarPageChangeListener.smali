.class Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SemDatePicker.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get19(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set1(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get14(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set2(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    return-void

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, p1}, Lcom/samsung/android/widget/SemDatePicker;->-set0(Lcom/samsung/android/widget/SemDatePicker;I)I

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    add-int v0, p1, v9

    div-int/lit8 v9, v0, 0xc

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v10

    add-int v8, v9, v10

    rem-int/lit8 v4, v0, 0xc

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get6(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, p1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v3

    iget v8, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iget v4, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get20(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-boolean v10, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set4(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    :cond_2
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-eq v8, v9, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v12, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    if-le v1, v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get38(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/16 v9, 0x3e8

    iput v9, v5, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/16 v9, 0x3e9

    iput v9, v6, Landroid/os/Message;->what:I

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get3(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-result-object v9

    iget-object v7, v9, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->clearAccessibilityFocus()V

    :cond_5
    if-eqz p1, :cond_6

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->clearAccessibilityFocus()V

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get35(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq p1, v9, :cond_7

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->clearAccessibilityFocus()V

    :cond_7
    return-void
.end method
