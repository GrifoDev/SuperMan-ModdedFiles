.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->showMainDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mMainDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$2;->val$id:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$0(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;IZ)V

    return-void
.end method
