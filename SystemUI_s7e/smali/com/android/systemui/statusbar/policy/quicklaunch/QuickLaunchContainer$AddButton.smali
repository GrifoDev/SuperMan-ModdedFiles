.class Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;
.super Landroid/widget/TextView;
.source "QuickLaunchContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "+"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setGravity(I)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setAlpha(F)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;)Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer$AddButton;->this$0:Lcom/android/systemui/statusbar/policy/quicklaunch/QuickLaunchContainer;

    return-object v0
.end method
