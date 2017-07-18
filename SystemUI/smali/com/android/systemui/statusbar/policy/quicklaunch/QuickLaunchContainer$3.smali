.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->showAppDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

.field private final synthetic val$change:Z

.field private final synthetic val$id:I

.field private final synthetic val$mAppsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Ljava/util/List;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$mAppsList:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$change:Z

    iput p4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$mAppsList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$change:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->val$id:I

    aget-object v5, v1, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$3(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;ILjava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->mAppDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$4(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$4(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v0, v3, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v4, v1, v5

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$5(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$6(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$7(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$3;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$4(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
