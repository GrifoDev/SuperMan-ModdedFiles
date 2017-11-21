.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;
.super Landroid/widget/BaseAdapter;
.source "PowerModeChangeProcessingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;
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
            "Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildAllItems(Landroid/content/Intent;)V
    .locals 19

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-string/jumbo v2, "key_item_brightness"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v16, 0x5a

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v18, v2, v16

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v4, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v8, 0x7f0b01b2

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v10, 0x7f0b0855

    invoke-virtual {v8, v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const/4 v8, 0x1

    aget-object v8, v17, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo v2, "key_item_resolution"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_3

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b0599

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v8, 0x7f0b0594

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v8, v17, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo v2, "key_item_device_performance"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a3f

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_4
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-wide v10, v4

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "key_item_bg_network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a40

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a37

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_5
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-wide v10, v4

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_6
    const-string/jumbo v2, "key_item_aod"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b03fc

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_7
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-wide v10, v4

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v8, 0x7f0b0a7d

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    move-object v7, v15

    goto/16 :goto_2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b0597

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f0b0598

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a37

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "key_item_restrict_network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    check-cast v17, [Ljava/lang/Object;

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0a4b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_8
    const/4 v2, 0x1

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-wide v10, v4

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;JLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0b0a37

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a37

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    aget-object v2, v17, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a37

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v6, 0x7f0b0a36

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v4, 0x0

    const v8, 0x7f0d0193

    const/16 v7, 0x8

    const/4 v6, 0x0

    const v5, 0x7f0d0195

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    if-nez p2, :cond_1

    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-direct {v0, v2, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0401c4

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v2, 0x7f110520

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f110521

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    const v2, 0x7f110522

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    const v2, 0x7f11051f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    const v2, 0x7f11051e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

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

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap0(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->time:I

    invoke-static {v3, v4, v6}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeStringWithMark(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v2, v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mCleaning:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mDot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$ViewHolder;->mTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public playItemCheckingAnim()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    iget v0, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->time:I

    invoke-static {v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-wrap1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mAllItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;

    iput v4, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingInfo;->checkingStatus:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->mSelectedPosition:I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-set1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$SavingAdapter;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get12(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x138b

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
