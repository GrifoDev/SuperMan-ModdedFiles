.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/graphics/Rect;FI)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->lambda$-com_android_systemui_statusbar_phone_DarkIconDispatcherImpl_2306(Landroid/widget/ImageView;Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->$m$0(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public updateViews(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$PXrt0OKsNBVrAS4QahP_X8PH96Q$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateViews(F)V

    return-void
.end method
