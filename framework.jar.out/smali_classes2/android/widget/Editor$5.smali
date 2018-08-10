.class Landroid/widget/Editor$5;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->setDPIPositionListenerEnalbed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$5;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 3

    iget-object v1, p0, Landroid/widget/Editor$5;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semGetDirectPenInputInstance(Z)Lcom/samsung/android/directpeninput/SemDirectPenInput;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->notifyPositionChanged(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method
