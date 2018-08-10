.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field final synthetic val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "screen_resolution_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen_resolution_state"

    invoke-static {v0, p3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iput p3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:I

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->this$1:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;->-get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;)Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter$1;->val$item:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "limit_brightness_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "limit_brightness_state"

    mul-int/lit8 v1, p3, 0x5

    add-int/lit8 v1, v1, 0x50

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setCustomPSMValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
