.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void
.end method
