.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;
.super Landroid/database/ContentObserver;
.source "DirectAccessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get8(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "direct_talkback"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    :goto_0
    if-eq v5, v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get7(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "direct_s_talkback"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    if-eq v4, v2, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->updateDirectAccessMenu()V

    :cond_1
    return-void

    :cond_2
    move v4, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method
