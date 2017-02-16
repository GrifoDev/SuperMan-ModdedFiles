.class Lcom/android/server/policy/GlobalActions$46;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get29()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$46;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get30()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    return v1
.end method
