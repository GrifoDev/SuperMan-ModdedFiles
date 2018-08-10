.class final synthetic Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->lambda$-com_android_systemui_statusbar_car_CarStatusBar_3482(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;->$m$0(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
