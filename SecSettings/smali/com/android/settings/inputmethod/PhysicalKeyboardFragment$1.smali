.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;
.super Ljava/lang/Object;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setShowImeWithHardKeyboard(Z)V

    const-string/jumbo v0, "show_virtual_keyboard_switch_for_dex"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "keyboard_dex"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v4}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get2(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
