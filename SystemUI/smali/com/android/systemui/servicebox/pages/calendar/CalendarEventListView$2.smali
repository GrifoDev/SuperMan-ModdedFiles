.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    move-result-object v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getEvent(I)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V

    return-void
.end method
