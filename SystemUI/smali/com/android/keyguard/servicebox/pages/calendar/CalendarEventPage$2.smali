.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;
.super Ljava/lang/Object;
.source "CalendarEventPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->init()V
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventPage;)V

    return-void
.end method
