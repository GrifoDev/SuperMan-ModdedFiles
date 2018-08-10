.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;
.super Landroid/app/Activity;
.source "ForcedResizableInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;
    }
.end annotation


# instance fields
.field private final mFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->isTaskRoot()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    :cond_0
    const v3, 0x103013b

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->setTheme(I)V

    invoke-virtual {p0, v4, v4}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->overridePendingTransition(II)V

    const v3, 0x7f0d0049

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->setContentView(I)V

    const v3, 0x102000b

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "extra_forced_resizeable_reason"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, ""

    packed-switch v0, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected forced resizeable reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const v3, 0x7f1202d0

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v3, 0x7f1301b7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_1
    const v3, 0x7f1203cb

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v3, 0x7f1203cc

    invoke-virtual {p0, v3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->mFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method
