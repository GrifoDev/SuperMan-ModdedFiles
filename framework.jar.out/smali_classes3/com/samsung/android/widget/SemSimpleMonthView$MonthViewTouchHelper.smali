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

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get17(Lcom/samsung/android/widget/SemSimpleMonthView;)I

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

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get21(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v10

    div-int v1, v9, v10

    add-int/lit8 v9, p1, -0x1

    iget-object v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v10

    add-int v3, v9, v10

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v9

    div-int v6, v3, v9

    iget-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I

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
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get1(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    const/16 v20, 0x16

    invoke-static/range {v17 .. v20}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get11(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get18(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v7

    if-gtz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x0

    :goto_0
    sub-int v14, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get13(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v7

    if-gez v14, :cond_0

    add-int/lit8 v16, v16, -0x1

    const/16 v14, 0xb

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v14, v1, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v17

    add-int p1, p1, v17

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get20(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get2(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v19

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v22, 0x3

    aput-object v21, v20, v22

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get20(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get7(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get20(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get6(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get20(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get5(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v0, v12, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    instance-of v0, v11, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    instance-of v0, v10, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v18

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    :try_start_0
    const-string/jumbo v9, "com.android.calendar.event.widget.datetimepicker.LunarDateUtils"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get18(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v9, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-nez v8, :cond_6

    const-string/jumbo v17, "SemSimpleMonthView"

    const-string/jumbo v18, "getItemDescription, Calendar LunarDateUtils class is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2
    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x0

    :goto_2
    add-int v14, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v7

    const/16 v17, 0xb

    move/from16 v0, v17

    if-le v14, v0, :cond_4

    add-int/lit8 v16, v16, 0x1

    const/4 v14, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v17

    sub-int p1, p1, v17

    goto/16 :goto_1

    :cond_5
    const/16 v17, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const-string/jumbo v17, "SemSimpleMonthView"

    const-string/jumbo v18, "getItemDescription, Calendar LunarDateUtils class not found"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    const-string/jumbo v18, "buildLunarDateString"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const-class v20, Ljava/util/Calendar;

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const-class v20, Landroid/content/Context;

    const/16 v21, 0x1

    aput-object v20, v19, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v8, v1, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap4(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x1

    aput-object v19, v18, v20

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v13, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v0, v15, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v5, v15

    check-cast v5, Ljava/lang/CharSequence;

    :cond_7
    return-object v5
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

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

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get8(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get4(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/high16 v1, -0x80000000

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get9(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get3(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 10

    const/16 v7, 0xb

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    sub-int/2addr p1, v5

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get8(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get4(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    if-ge p1, v5, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get9(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get3(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    if-gt p1, v5, :cond_0

    :cond_2
    if-gtz p1, :cond_6

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get11(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    sub-int v1, v5, v3

    if-gez v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v6

    invoke-static {v3, v7, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    add-int v6, v2, p1

    invoke-static {v3, v5, v1, v6, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    :goto_1
    return v4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v6

    invoke-static {v3, v1, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    add-int v6, v2, p1

    invoke-static {v3, v5, v1, v6, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    invoke-virtual {v0, v3, v5, v4}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v8, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v3, v5, v6, v7, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    if-le p1, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get11(Lcom/samsung/android/widget/SemSimpleMonthView;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    if-le v1, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    sub-int v7, p1, v7

    invoke-static {v5, v6, v3, v7, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    sub-int v7, p1, v7

    invoke-static {v5, v6, v1, v7, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v0, v8, v5}, Ljava/util/Calendar;->add(II)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v5}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v6

    invoke-static {v3, v5, v6, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap5(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->-wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    sub-int/2addr p1, v0

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

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get19(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->-get19(Lcom/samsung/android/widget/SemSimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/widget/SemSimpleMonthView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
