.class Lcom/android/settings/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ListDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ListDialogPreference;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iput-object p2, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->-wrap0(Lcom/android/settings/accessibility/ListDialogPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int v2, p4

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/ListDialogPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->-wrap1(Lcom/android/settings/accessibility/ListDialogPreference;Ljava/lang/String;)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->this$0:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ListDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
