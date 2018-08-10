.class Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;
.super Ljava/lang/Object;
.source "CalendarNoEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->-get0(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;->-wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarNoEventView;)V

    return-void
.end method
