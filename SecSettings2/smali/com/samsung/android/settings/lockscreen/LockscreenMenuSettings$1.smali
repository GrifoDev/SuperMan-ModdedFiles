.class Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;
.super Landroid/database/ContentObserver;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    return-void
.end method
