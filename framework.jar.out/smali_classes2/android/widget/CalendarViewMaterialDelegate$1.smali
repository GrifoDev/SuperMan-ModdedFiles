.class Landroid/widget/CalendarViewMaterialDelegate$1;
.super Ljava/lang/Object;
.source "CalendarViewMaterialDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewMaterialDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewMaterialDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewMaterialDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/CalendarViewMaterialDelegate;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Landroid/icu/util/Calendar;)V
    .locals 5
    .param p1, "view"    # Landroid/widget/DayPickerView;
    .param p2, "day"    # Landroid/icu/util/Calendar;

    .prologue
    .line 115
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->-get0(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 117
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    .line 118
    .local v1, "month":I
    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 119
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->-get0(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    iget-object v4, v4, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    .line 114
    .end local v0    # "dayOfMonth":I
    .end local v1    # "month":I
    .end local v2    # "year":I
    :cond_0
    return-void
.end method
