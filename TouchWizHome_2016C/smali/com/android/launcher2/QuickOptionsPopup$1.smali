.class Lcom/android/launcher2/QuickOptionsPopup$1;
.super Ljava/lang/Object;
.source "QuickOptionsPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickOptionsPopup;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickOptionsPopup;

.field final synthetic val$optionItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickOptionsPopup;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    iput-object p2, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->val$optionItems:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->val$optionItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup$2;->$SwitchMap$com$android$launcher2$QuickOptionsPopup$OptionItem$OPTION:[I

    # getter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$400(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doClearBadge()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$600(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doAddToSecureFolder()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$700(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doPutToSleep()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$800(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doUninstall()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$900(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doShowAppInfo()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$1000(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup$1;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    # invokes: Lcom/android/launcher2/QuickOptionsPopup;->doAddApps()Z
    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->access$1100(Lcom/android/launcher2/QuickOptionsPopup;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
