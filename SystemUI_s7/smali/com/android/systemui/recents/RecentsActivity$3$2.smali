.class Lcom/android/systemui/recents/RecentsActivity$3$2;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$3;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$3$2;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$3$2;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const-class v3, Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "update_focus"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$3$2;->this$1:Lcom/android/systemui/recents/RecentsActivity$3;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity$3;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/RecentsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
