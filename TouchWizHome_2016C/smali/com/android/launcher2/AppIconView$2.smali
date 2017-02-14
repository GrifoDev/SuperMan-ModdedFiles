.class Lcom/android/launcher2/AppIconView$2;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;IZ)V
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

    iput-object p1, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getLineCount()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$2;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->setSingleLine(Z)V

    :cond_0
    return-void
.end method
