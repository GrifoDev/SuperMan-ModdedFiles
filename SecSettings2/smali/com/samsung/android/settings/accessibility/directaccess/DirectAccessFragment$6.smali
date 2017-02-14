.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->installSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v0, 0x0

    return v0
.end method
