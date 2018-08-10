.class Landroid/support/v17/leanback/app/VerticalGridFragment$3;
.super Ljava/lang/Object;
.source "VerticalGridFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnChildLaidOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$3;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 1

    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridFragment$3;->this$0:Landroid/support/v17/leanback/app/VerticalGridFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/VerticalGridFragment;->showOrHideTitle()V

    :cond_0
    return-void
.end method
