.class Lcom/android/systemui/statusbar/car/UserGridView$1;
.super Ljava/lang/Object;
.source "UserGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/car/UserGridView;->init(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    const/16 v2, -0x2710

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/car/UserGridView;->-set0(Lcom/android/systemui/statusbar/car/UserGridView;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-wrap0(Lcom/android/systemui/statusbar/car/UserGridView;)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/car/UserGridView;->-set0(Lcom/android/systemui/statusbar/car/UserGridView;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView$1;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/car/UserGridView;->-get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    goto :goto_0
.end method
