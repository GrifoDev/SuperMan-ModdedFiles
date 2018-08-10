.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;
.super Ljava/lang/Object;
.source "SemDatePickerSpinnerLayout.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    sparse-switch p2, :sswitch_data_0

    return v4

    :sswitch_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v5, "com.sec.feature.dual_lcd"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v5, "com.sec.feature.folder_type"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v6, :cond_2

    move v2, v3

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x5

    const/4 v5, 0x5

    if-ne v2, v5, :cond_6

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->-get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v4

    invoke-virtual {v2, v4, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_5
    :goto_1
    return v3

    :cond_6
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x6

    const/4 v5, 0x6

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;->this$0:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    goto :goto_1

    :sswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_2
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
