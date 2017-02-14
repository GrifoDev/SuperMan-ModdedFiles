.class Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SecRestrictedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-get0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-set1(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/SecRestrictedSettingsFragment$1;->this$0:Lcom/samsung/android/settings/SecRestrictedSettingsFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->-set0(Lcom/samsung/android/settings/SecRestrictedSettingsFragment;Z)Z

    :cond_0
    return-void
.end method
