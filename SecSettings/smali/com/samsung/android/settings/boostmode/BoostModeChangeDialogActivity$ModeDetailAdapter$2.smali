.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field final synthetic val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_video_enhancer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pbm_video_enhancer"

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v5

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    if-eqz p2, :cond_8

    :goto_2
    iput v1, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mStatus:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pbm_uhq_upscaler"

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v5

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getUhqUpscalerLatestLevel(Landroid/content/Context;)I

    move-result v0

    :goto_3
    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_game_launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pbm_game_launcher"

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v5

    if-eqz p2, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->val$item:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    const-string/jumbo v3, "pbm_game_tools"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "pbm_game_tools"

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter$2;->this$1:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I

    move-result v5

    if-eqz p2, :cond_7

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v5, v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v1, v2

    goto/16 :goto_2
.end method
