.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "ToggleMagnifierPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    goto :goto_0
.end method
