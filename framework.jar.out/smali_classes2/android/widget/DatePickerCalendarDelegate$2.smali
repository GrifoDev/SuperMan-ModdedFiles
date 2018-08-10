.class Landroid/widget/DatePickerCalendarDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/YearPickerView$OnYearSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYearChanged(Landroid/widget/YearPickerView;I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v3, v3, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v3, v3, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2, p2}, Landroid/widget/DatePickerCalendarDelegate;->getDaysInMonth(II)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v3, v3, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    :cond_0
    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v3, v3, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v3, v5, p2}, Landroid/icu/util/Calendar;->set(II)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {v3, v5, v5}, Landroid/widget/DatePickerCalendarDelegate;->-wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    iget-object v3, p0, Landroid/widget/DatePickerCalendarDelegate$2;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {v3}, Landroid/widget/DatePickerCalendarDelegate;->-get0(Landroid/widget/DatePickerCalendarDelegate;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
