.class Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->close(Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;->this$1:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;->this$1:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->access$3300(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim$3;->this$1:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-static {v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->access$3300(Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;)V

    return-void
.end method
