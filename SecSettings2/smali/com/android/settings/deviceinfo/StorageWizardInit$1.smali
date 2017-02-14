.class Lcom/android/settings/deviceinfo/StorageWizardInit$1;
.super Ljava/lang/Object;
.source "StorageWizardInit.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageWizardInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageWizardInit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->-get0(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->-get1(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setIllustrationType(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->getNextButton()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->-get1(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageWizardInit;->-get0(Lcom/android/settings/deviceinfo/StorageWizardInit;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardInit$1;->this$0:Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardInit;->setIllustrationType(I)V

    goto :goto_0
.end method
