.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton$1;
.super Ljava/lang/Object;
.source "QuickLaunchContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton$1;->this$1:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton$1;->this$1:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->access$0(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;)Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;->access$0(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;IZ)V

    return-void
.end method
