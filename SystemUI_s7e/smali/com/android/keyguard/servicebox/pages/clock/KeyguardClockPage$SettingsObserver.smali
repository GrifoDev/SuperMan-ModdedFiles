.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;

    # getter for: Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->access$001(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    return-void
.end method
