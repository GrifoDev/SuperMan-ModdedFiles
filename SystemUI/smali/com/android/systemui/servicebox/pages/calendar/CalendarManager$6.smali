.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;
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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$6;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    return-void
.end method
