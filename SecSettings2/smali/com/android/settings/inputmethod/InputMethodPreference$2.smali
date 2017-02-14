.class Lcom/android/settings/inputmethod/InputMethodPreference$2;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->-get0(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-interface {v0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$2;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->-wrap0(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    return-void
.end method
