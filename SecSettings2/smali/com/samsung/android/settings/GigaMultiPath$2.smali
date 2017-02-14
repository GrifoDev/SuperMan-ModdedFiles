.class Lcom/samsung/android/settings/GigaMultiPath$2;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get1(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get0(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set0(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get2(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set1(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get0(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set0(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaMultiPath$2;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v1}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap3(Lcom/samsung/android/settings/GigaMultiPath;Z)V

    goto :goto_0
.end method
