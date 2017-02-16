.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)V

    return-void
.end method
