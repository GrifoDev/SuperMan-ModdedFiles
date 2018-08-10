.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayChanged() id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-set0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
