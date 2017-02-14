.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const v1, 0x7f0b02cc

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->-get2(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
