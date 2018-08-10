.class Landroid/widget/MultiSelectPopupWindow$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$1;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get4()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get4()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method
