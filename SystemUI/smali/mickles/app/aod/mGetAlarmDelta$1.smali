.class Lmickles/app/aod/mGetAlarmDelta$1;
.super Ljava/lang/Object;
.source "mGetAlarmDelta.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmickles/app/aod/mGetAlarmDelta;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmickles/app/aod/mGetAlarmDelta;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lmickles/app/aod/mGetAlarmDelta;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iput-object p2, p0, Lmickles/app/aod/mGetAlarmDelta$1;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v1, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    # getter for: Lmickles/app/aod/mGetAlarmDelta;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmickles/app/aod/mGetAlarmDelta;->access$000(Lmickles/app/aod/mGetAlarmDelta;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmickles/app/aod/mGetAlarmDelta;->nextAlarm:Ljava/lang/String;

    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v0, v0, Lmickles/app/aod/mGetAlarmDelta;->nextAlarm:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v0, v0, Lmickles/app/aod/mGetAlarmDelta;->nextAlarm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmickles/app/aod/mGetAlarmDelta;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->val$h:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v1, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v2, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    iget-object v2, v2, Lmickles/app/aod/mGetAlarmDelta;->nextAlarm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmickles/app/aod/mGetAlarmDelta;->getAlarmText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmickles/app/aod/mGetAlarmDelta;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "kg_alarm_delta_color"

    const v9, -0xff0100

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta$1;->this$0:Lmickles/app/aod/mGetAlarmDelta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmickles/app/aod/mGetAlarmDelta;->setVisibility(I)V

    goto :goto_1
.end method
