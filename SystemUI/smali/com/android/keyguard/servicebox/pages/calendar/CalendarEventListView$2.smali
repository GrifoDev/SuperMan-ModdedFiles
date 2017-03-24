.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string/jumbo v0, "CalendarEventListView"

    const-string/jumbo v1, "There\'s no event"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {v1, v2, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;-><init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-set0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->notifyDataSetChanged()V

    return-void
.end method
