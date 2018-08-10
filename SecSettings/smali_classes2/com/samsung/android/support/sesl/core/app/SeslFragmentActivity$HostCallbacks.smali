.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
.source "SeslFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
        "<",
        "Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onShouldSaveFragmentState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
