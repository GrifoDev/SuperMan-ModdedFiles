.class Landroid/widget/SemHorizontalAbsListView$2;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;

.field final synthetic val$alwaysShow:Z


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-boolean p2, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$alwaysShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$2;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView$2;->val$alwaysShow:Z

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-wrap11(Landroid/widget/SemHorizontalAbsListView;Z)V

    return-void
.end method
