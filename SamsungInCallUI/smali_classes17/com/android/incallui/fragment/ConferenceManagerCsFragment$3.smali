.class Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;
.super Ljava/lang/Object;
.source "ConferenceManagerCsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->setupSeparateButtonForRow(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1, v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$102(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "separateButton is clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$100(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 390
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    iget-object v1, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->mSelectedRowId:I
    invoke-static {v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$100(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;)I

    move-result v1

    # invokes: Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->animateForSplit(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->access$200(Lcom/android/incallui/fragment/ConferenceManagerCsFragment;I)V

    .line 391
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerCsFragment$3;->this$0:Lcom/android/incallui/fragment/ConferenceManagerCsFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerCsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MPVC"

    const-string v2, "Split"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0903e9

    invoke-static {v1}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method
