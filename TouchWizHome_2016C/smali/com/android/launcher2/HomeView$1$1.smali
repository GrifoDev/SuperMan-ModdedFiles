.class Lcom/android/launcher2/HomeView$1$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeView$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView$1$1;->this$1:Lcom/android/launcher2/HomeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$1$1;->this$1:Lcom/android/launcher2/HomeView$1;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$1;->this$0:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/HomeView$1$1;->this$1:Lcom/android/launcher2/HomeView$1;

    iget-boolean v1, v1, Lcom/android/launcher2/HomeView$1;->val$moveToDefaultScreen:Z

    invoke-static {v0, v1}, Lcom/android/launcher2/HomeView;->access$100(Lcom/android/launcher2/HomeView;Z)V

    return-void
.end method
