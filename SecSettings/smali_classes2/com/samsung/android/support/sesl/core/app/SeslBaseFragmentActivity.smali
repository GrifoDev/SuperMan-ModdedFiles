.class abstract Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;
.super Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;
.source "SeslBaseFragmentActivity.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;-><init>()V

    return-void
.end method

.method static checkForValidRequestCode(I)V
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->mStartedActivityFromFragment:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->checkForValidRequestCode(I)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/support/sesl/core/app/SeslSupportActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslBaseFragmentActivity;->checkForValidRequestCode(I)V

    goto :goto_0
.end method
