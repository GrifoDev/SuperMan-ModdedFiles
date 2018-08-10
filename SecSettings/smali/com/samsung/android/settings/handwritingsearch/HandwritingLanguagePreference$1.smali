.class Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$1;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return v3
.end method
