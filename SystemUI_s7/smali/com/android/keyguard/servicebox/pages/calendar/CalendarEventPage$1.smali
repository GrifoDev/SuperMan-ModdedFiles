.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CalendarEventPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo()V

    :cond_0
    return-void
.end method
