.class Lcom/android/settings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

.field final synthetic val$currentSci:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-get0(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-wrap2(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-wrap0(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->this$0:Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->-get0(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;->val$currentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
