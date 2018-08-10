.class final synthetic Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget v2, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f0:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->lambda$-com_android_systemui_statusbar_car_CarNavigationBarController_13428(Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/-$Lambda$gAZ84Xb3Qb415HO2o_U1LzYDKgw;->$m$0(Landroid/view/View;)V

    return-void
.end method
