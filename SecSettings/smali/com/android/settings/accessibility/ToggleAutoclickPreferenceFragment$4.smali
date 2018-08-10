.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->showAutoClickExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$4;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return v2
.end method
