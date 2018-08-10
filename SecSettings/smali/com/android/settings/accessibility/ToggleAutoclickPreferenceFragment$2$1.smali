.class Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;->this$1:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;->this$1:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-wrap0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2$1;->this$1:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;

    iget-object v0, v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->-get0(Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;)Lcom/android/settings/SeekBarPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method
