.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v1, p2, Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get6(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-wrap1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    goto :goto_0
.end method
