.class Lcom/android/launcher2/AppIconView$1;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "BGCR"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->removeFolderBadge()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->access$000(Lcom/android/launcher2/AppIconView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$1;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->removeBadge(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
