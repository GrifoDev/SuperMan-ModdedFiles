.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->showCalendarActivity(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)V

    :cond_0
    return-void
.end method
