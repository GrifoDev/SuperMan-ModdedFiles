.class Lcom/android/launcher2/HomeScreenOptionMenu$15;
.super Ljava/lang/Object;
.source "HomeScreenOptionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionMenu;->startAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

.field final synthetic val$alpha:Landroid/view/animation/AlphaAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionMenu;Landroid/view/animation/AlphaAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$15;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object p2, p0, Lcom/android/launcher2/HomeScreenOptionMenu$15;->val$alpha:Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$15;->val$alpha:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionMenu$15;->this$0:Lcom/android/launcher2/HomeScreenOptionMenu;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenOptionMenu$15;->val$alpha:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
