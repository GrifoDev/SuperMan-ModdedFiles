.class Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;
.super Landroid/database/ContentObserver;
.source "LockscreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    return-void
.end method
