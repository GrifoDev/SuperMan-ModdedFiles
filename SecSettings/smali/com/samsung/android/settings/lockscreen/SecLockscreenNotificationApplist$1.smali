.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;
.super Landroid/database/ContentObserver;
.source "SecLockscreenNotificationApplist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->-wrap1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    return-void
.end method
