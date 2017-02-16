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
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1581
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1586
    return-void
.end method

.method public onPageSelected(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x5

    .line 1592
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get19(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1593
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set2(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    .line 1595
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get16(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1596
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set3(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    .line 1597
    return-void

    .line 1601
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, p1}, Lcom/samsung/android/widget/SemDatePicker;->-set0(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 1603
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    add-int v0, p1, v9

    .line 1605
    .local v0, "currentMonth":I
    div-int/lit8 v9, v0, 0xc

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v10

    add-int v8, v9, v10

    .line 1606
    .local v8, "year":I
    rem-int/lit8 v4, v0, 0xc

    .line 1607
    .local v4, "month":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1609
    .local v1, "day":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1610
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9, p1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v3

    .line 1611
    .local v3, "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    iget v8, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 1612
    iget v4, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 1613
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-boolean v10, v3, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set4(Lcom/samsung/android/widget/SemDatePicker;Z)Z

    .line 1617
    .end local v3    # "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    :cond_2
    const/4 v2, 0x0

    .line 1619
    .local v2, "isYearChanged":Z
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 1620
    const/4 v2, 0x1

    .line 1623
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 1624
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 1625
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1626
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v9

    if-le v1, v9, :cond_4

    .line 1627
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 1629
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 1631
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1632
    .local v5, "msg":Landroid/os/Message;
    const/16 v9, 0x3e8

    iput v9, v5, Landroid/os/Message;->what:I

    .line 1633
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1634
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1636
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 1637
    .local v6, "msg1":Landroid/os/Message;
    const/16 v9, 0x3e9

    iput v9, v6, Landroid/os/Message;->what:I

    .line 1638
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1641
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get3(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-result-object v9

    iget-object v7, v9, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1642
    .local v7, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->clearAccessibilityFocus()V

    .line 1643
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

    .line 1644
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

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

    .line 1591
    :cond_7
    return-void
.end method
