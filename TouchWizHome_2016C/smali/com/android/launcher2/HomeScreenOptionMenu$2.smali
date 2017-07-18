.class Lcom/android/launcher2/HomeScreenOptionMenu$2;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$2;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/HomeScreenOptionMenu;->access$000()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
