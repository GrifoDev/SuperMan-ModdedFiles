.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f1:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f0:Z

    iget v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->lambda$-com_android_systemui_statusbar_phone_NotificationPanelView_184224(IZI)V

    return-void
.end method

.method public synthetic constructor <init>(ZIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$-v8l8c9lks_ZWHIn3kV6nLWud14$2;->$m$0()V

    return-void
.end method
