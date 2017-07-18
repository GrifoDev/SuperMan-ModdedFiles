.class Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;
.super Ljava/lang/Object;
.source "MinitClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->access$300(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->access$400(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->access$300(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->access$600(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem$1;->this$1:Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;->access$500(Lcom/android/systemui/statusbar/policy/MinitClock$ClockItem;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
