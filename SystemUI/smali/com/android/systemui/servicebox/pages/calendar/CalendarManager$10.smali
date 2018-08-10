.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$10;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap6(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    return-void
.end method
