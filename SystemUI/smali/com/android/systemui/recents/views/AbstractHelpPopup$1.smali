.class Lcom/android/systemui/recents/views/AbstractHelpPopup$1;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/AbstractHelpPopup;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-static {v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->-get2(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/HelpViewPager;->getCurrentItem()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->isPageEnd(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPersistentState(Z)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-static {v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->-get1(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-static {v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->-get0(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    iget-boolean v3, v3, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    if-nez v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    iget-object v3, v3, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;->this$0:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-static {v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->-get2(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewPager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/recents/views/HelpViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method
