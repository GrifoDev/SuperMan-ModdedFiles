.class Lcom/android/server/power/ShutdownThread$7$2$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread$7$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/power/ShutdownThread$7$2;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$7$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->this$2:Lcom/android/server/power/ShutdownThread$7$2;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set18(Z)Z

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set8(Z)Z

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set5(Z)Z

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set20(Z)Z

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-set7(Z)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set6(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->val$ctx:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get35()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->-wrap2(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->val$ctx:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap8()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$7$2$1;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->-wrap7(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
