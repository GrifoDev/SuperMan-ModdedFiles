.class Lcom/android/systemui/recents/views/RecentsView$11$1;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/views/RecentsView$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView$11;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$11$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "voc://view/contactUs"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "com.android.systemui.recents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "53e5c21oy8"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$11$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$11;

    iget-object v2, v2, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "feedbackType"

    const-string/jumbo v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$11$1;->this$1:Lcom/android/systemui/recents/views/RecentsView$11;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsView$11;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v1}, Lcom/android/systemui/recents/views/RecentsView;->-get1(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    return v1
.end method
