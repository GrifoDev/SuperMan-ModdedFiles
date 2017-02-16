.class Lcom/samsung/android/widget/SemHoverPopupWindow$4;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemHoverPopupWindow;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$4;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$4;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap0(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    .line 1109
    return-void
.end method
