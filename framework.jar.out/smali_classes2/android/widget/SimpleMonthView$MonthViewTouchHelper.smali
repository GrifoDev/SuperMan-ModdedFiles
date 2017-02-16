.class Landroid/widget/SimpleMonthView$MonthViewTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "SimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Landroid/icu/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/SimpleMonthView;


# direct methods
.method public constructor <init>(Landroid/widget/SimpleMonthView;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/SimpleMonthView;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 1038
    iput-object p1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    .line 1039
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1035
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1036
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 1038
    return-void
.end method

.method private getDayDescription(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1112
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap2(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-get4(Landroid/widget/SimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-get3(Landroid/widget/SimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/icu/util/Calendar;->set(III)V

    .line 1114
    const-string/jumbo v0, "dd MMMM yyyy"

    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1117
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getDayText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap2(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0}, Landroid/widget/SimpleMonthView;->-get1(Landroid/widget/SimpleMonthView;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1044
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    add-float v2, p1, v3

    float-to-int v2, v2

    add-float/2addr v3, p2

    float-to-int v3, v3

    invoke-static {v1, v2, v3}, Landroid/widget/SimpleMonthView;->-wrap4(Landroid/widget/SimpleMonthView;II)I

    move-result v0

    .line 1045
    .local v0, "day":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1046
    return v0

    .line 1048
    :cond_0
    const/high16 v1, -0x80000000

    return v1
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    .line 1053
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v1}, Landroid/widget/SimpleMonthView;->-get2(Landroid/widget/SimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 1054
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1097
    packed-switch p2, :pswitch_data_0

    .line 1102
    const/4 v0, 0x0

    return v0

    .line 1099
    :pswitch_0
    iget-object v0, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v0, p1}, Landroid/widget/SimpleMonthView;->-wrap3(Landroid/widget/SimpleMonthView;I)Z

    move-result v0

    return v0

    .line 1097
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1065
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    iget-object v3, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v2, p1, v3}, Landroid/widget/SimpleMonthView;->-wrap0(Landroid/widget/SimpleMonthView;ILandroid/graphics/Rect;)Z

    move-result v0

    .line 1067
    .local v0, "hasBounds":Z
    if-nez v0, :cond_0

    .line 1069
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1070
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1072
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 1073
    return-void

    .line 1076
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->getDayDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1080
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v2, p1}, Landroid/widget/SimpleMonthView;->-wrap1(Landroid/widget/SimpleMonthView;I)Z

    move-result v1

    .line 1081
    .local v1, "isDayEnabled":Z
    if-eqz v1, :cond_1

    .line 1082
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1085
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1087
    iget-object v2, p0, Landroid/widget/SimpleMonthView$MonthViewTouchHelper;->this$0:Landroid/widget/SimpleMonthView;

    invoke-static {v2}, Landroid/widget/SimpleMonthView;->-get0(Landroid/widget/SimpleMonthView;)I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 1089
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 1064
    :cond_2
    return-void
.end method
