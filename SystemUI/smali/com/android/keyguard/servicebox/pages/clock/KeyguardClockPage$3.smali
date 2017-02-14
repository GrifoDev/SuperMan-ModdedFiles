.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;
.super Ljava/lang/Object;
.source "KeyguardClockPage.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get0()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get0()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-get0()[Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-wrap1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    goto :goto_0
.end method
