.class Lcom/android/launcher2/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onClickPopupMenuButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getEditButtonText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
