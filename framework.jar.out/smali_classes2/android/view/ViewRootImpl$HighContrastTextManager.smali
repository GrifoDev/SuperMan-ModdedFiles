.class final Landroid/view/ViewRootImpl$HighContrastTextManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HighContrastTextManager"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2

    iput-object p1, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isHighTextContrastEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    return-void
.end method


# virtual methods
.method public onHighTextContrastStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    sput-boolean p1, Landroid/view/ViewRootImpl;->sIsHighContrastTextEnabled:Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$HighContrastTextManager;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-wrap7(Landroid/view/ViewRootImpl;Z)V

    return-void
.end method
