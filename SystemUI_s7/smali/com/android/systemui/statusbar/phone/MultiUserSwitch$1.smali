.class Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "MultiUserSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->-wrap0(Lcom/android/systemui/statusbar/phone/MultiUserSwitch;)V

    return-void
.end method
