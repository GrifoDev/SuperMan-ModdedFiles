.class Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;

.field views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/widget/SemSimpleMonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 1487
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1488
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    .line 1553
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 1554
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1551
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const-string/jumbo v1, "finishUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v2

    sub-int v0, v1, v2

    .line 1500
    .local v0, "diffYear":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->-set6(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 1502
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1503
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->-wrap1(Lcom/samsung/android/widget/SemDatePicker;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->-set6(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1494
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 16
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1511
    new-instance v1, Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 1512
    .local v1, "v":Lcom/samsung/android/widget/SemSimpleMonthView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "instantiateItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    .line 1513
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get4(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    add-int v13, p2, v5

    .line 1519
    .local v13, "currentMonth":I
    div-int/lit8 v5, v13, 0xc

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    add-int v4, v5, v6

    .line 1520
    .local v4, "year":I
    rem-int/lit8 v3, v13, 0xc

    .line 1523
    .local v3, "month":I
    const/4 v14, 0x0

    .line 1524
    .local v14, "isLeapMonth":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1525
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/samsung/android/widget/SemDatePicker;->-wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v15

    .line 1526
    .local v15, "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    iget v4, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    .line 1527
    iget v3, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    .line 1528
    iget-boolean v14, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    .line 1532
    .end local v14    # "isLeapMonth":Z
    .end local v15    # "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    :cond_0
    const/4 v2, -0x1

    .line 1533
    .local v2, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1534
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1537
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get18(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1538
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v6, v6, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v5, v14, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 1541
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->-get22(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->-get21(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->-get29(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->-get14(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v6}, Lcom/samsung/android/widget/SemDatePicker;->-get23(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v12

    const/4 v6, 0x1

    const/16 v7, 0x1f

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->getNumDays()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->-set5(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 1543
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->getWeekStart()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->-set7(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 1544
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1545
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1547
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1559
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isViewFromObject : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    .line 1560
    if-ne p1, p2, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1559
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1560
    goto :goto_1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1564
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const-string/jumbo v1, "startUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    .line 1566
    return-void
.end method
