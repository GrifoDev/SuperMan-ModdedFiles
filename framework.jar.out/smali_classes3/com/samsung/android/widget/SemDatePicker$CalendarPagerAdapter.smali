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

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

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

    check-cast p1, Lcom/android/internal/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const-string/jumbo v1, "finishUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v2

    sub-int v0, v1, v2

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

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->-wrap1(Lcom/samsung/android/widget/SemDatePicker;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->-set6(Lcom/samsung/android/widget/SemDatePicker;I)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v1}, Lcom/samsung/android/widget/SemDatePicker;->-get27(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v1

    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 16

    new-instance v1, Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;)V

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

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get4(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    add-int v13, p2, v5

    div-int/lit8 v5, v13, 0xc

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    add-int v4, v5, v6

    rem-int/lit8 v3, v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/samsung/android/widget/SemDatePicker;->-wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v15

    iget v4, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->year:I

    iget v3, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->month:I

    iget-boolean v14, v15, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->isLeapMonth:Z

    :cond_0
    const/4 v2, -0x1

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

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get18(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v5}, Lcom/samsung/android/widget/SemDatePicker;->-get17(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v6, v6, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v5, v14, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

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

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->getNumDays()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->-set5(Lcom/samsung/android/widget/SemDatePicker;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->getWeekStart()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemDatePicker;->-set7(Lcom/samsung/android/widget/SemDatePicker;I)I

    check-cast p1, Lcom/android/internal/widget/ViewPager;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    if-ne p1, p2, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    const-string/jumbo v1, "startUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->-wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V

    return-void
.end method
