.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->sendDataToExternal()V
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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get4(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$12;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    monitor-exit v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/aod/AODManager;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
