.class Lcom/android/launcher2/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$set:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$7;->val$set:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->val$set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
