.class Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;
.super Ljava/lang/Object;
.source "HandwritingLanguagePreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get0(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get2(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v0}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-get3(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$2;->this$0:Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;

    invoke-static {v1}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->-wrap0(Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
