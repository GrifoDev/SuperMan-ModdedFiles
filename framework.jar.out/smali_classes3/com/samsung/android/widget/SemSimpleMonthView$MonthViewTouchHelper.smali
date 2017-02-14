.class Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SemSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemSimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/widget/SemSimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 11

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get11(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get1(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v10

    div-int v1, v9, v10

    add-int/lit8 v9, p1, -0x1

    iget-object v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v10

    add-int v3, v9, v10

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v9

    div-int v6, v3, v9

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v9

    rem-int v2, v3, v9

    mul-int v9, v2, v1

    add-int v7, v4, v9

    mul-int v9, v6, v0

    add-int v8, v5, v9

    add-int v9, v7, v1

    add-int v10, v8, v0

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get8(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v14

    move/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get1(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const/16 v13, 0x16

    invoke-static {v12, v14, v15, v13}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get7(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get2(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get8(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get6(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get5(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get4(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get3(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v12, v9, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    instance-of v12, v8, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    instance-of v12, v7, Ljava/lang/Integer;

    if-eqz v12, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    nop

    nop

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2, v12, v13, v14}, Ljava/util/Calendar;->set(III)V

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "com.android.calendar.lunarDatePicker.LunarDateUtils"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v12}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v6, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v12, "SemSimpleMonthView"

    const-string/jumbo v13, "getItemDescription, Calendar LunarDateUtils class is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v4

    const-string/jumbo v12, "SemSimpleMonthView"

    const-string/jumbo v13, "getItemDescription, Calendar LunarDateUtils class not found"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    const-string/jumbo v13, "buildLunarDateString"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const-class v15, Ljava/util/Calendar;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const-class v15, Landroid/content/Context;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v12, v5, v13, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-static {v12, v14, v10, v13}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/String;

    if-eqz v12, :cond_1

    move-object v3, v11

    nop

    nop

    :cond_1
    return-object v3
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap1(Lcom/samsung/android/widget/SemSimpleMonthView;FF)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get9(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap4(Lcom/samsung/android/widget/SemSimpleMonthView;I)V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get13(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
