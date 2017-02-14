.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v1

    const/4 v0, 0x0

    const-string/jumbo v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRefreshCarrierInfo(pre, now): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-set1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Ljava/util/Locale;)Ljava/util/Locale;

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    :cond_2
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void
.end method
