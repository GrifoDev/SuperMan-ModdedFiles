.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;
.super Landroid/content/BroadcastReceiver;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-set1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;I)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$8;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    :cond_0
    return-void
.end method
