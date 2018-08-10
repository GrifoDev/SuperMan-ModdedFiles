.class Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;
.super Landroid/database/ContentObserver;
.source "DirectionLockSplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->setSummary()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->toggleSettings()V

    return-void
.end method
