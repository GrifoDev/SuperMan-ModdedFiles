.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f5:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f6:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f0:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f2:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->lambda$-com_android_systemui_statusbar_phone_NotificationPanelView_185431(ILandroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V

    return-void
.end method

.method public synthetic constructor <init>(ZIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->-$f6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$3;->$m$0()V

    return-void
.end method
