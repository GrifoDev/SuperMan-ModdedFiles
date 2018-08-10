.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get0()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-set3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$9;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->notifyEventChanged()V

    :cond_0
    return-void
.end method
