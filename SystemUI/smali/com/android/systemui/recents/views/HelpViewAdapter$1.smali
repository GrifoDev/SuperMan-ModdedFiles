.class Lcom/android/systemui/recents/views/HelpViewAdapter$1;
.super Ljava/lang/Object;
.source "HelpViewPager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/HelpViewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/HelpViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->setPersistentState(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/HelpViewAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/views/HelpViewAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.MULTI_WINDOW_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
