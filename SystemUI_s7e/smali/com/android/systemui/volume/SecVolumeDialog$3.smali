.class Lcom/android/systemui/volume/SecVolumeDialog$3;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get16(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get17(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/SecVolumeDialog;->mShowing:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get15(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v4

    if-eqz v0, :cond_6

    const v2, 0x7f0f04bc

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-set2(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap10(Lcom/android/systemui/volume/SecVolumeDialog;Z)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap0(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    goto :goto_0

    :cond_6
    const v2, 0x7f0f04bb

    goto :goto_1
.end method
