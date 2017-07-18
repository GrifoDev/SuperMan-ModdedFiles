.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoostModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingAdapter"
.end annotation


# instance fields
.field private mAllItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .locals 18

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-string/jumbo v2, "key_item_max_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_1

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v15, v2, -0x5a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b01b3

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v10, 0x7f0b084c

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_1
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_2

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0598

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v9, 0x7f0b0593

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_2
    const-string/jumbo v2, "key_item_video_enhancer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0411

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2b

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_2
    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_3
    const-string/jumbo v2, "key_item_uhq_upscaler"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0977

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2b

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_4
    const-string/jumbo v2, "key_item_game_launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a78

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2b

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_5
    const-string/jumbo v2, "key_item_game_tools"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long v16, v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a7a

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v14, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2b

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_5
    move-wide v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v4, v16

    :cond_6
    return-void

    :cond_7
    invoke-static {v15}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0596

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v3, 0x7f0b0597

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2c

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2c

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2c

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    const v6, 0x7f0b0a2c

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0d0193

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x7f0d0195

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    if-nez p2, :cond_1

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-direct {v0, v2, v8}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401c3

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f110522

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f110523

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    const v2, 0x7f110524

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    const v2, 0x7f110521

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    const v2, 0x7f110520

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;

    goto :goto_0

    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;

    iput v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
