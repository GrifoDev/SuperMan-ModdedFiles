.class Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;
.super Landroid/database/ContentObserver;
.source "NextAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;->this$0:Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;->this$0:Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;

    iget-object v1, v1, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lockscreen_alarm_text_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lockscreen_alarm_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText$AlarmObserver;->this$0:Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;

    invoke-virtual {v0}, Lcom/android/keyguard/nextalarm/GetNextAlarmTimeText;->updateAlarm()V

    return-void
.end method
