.class Lcom/android/systemui/statusbar/SignalClusterView$1;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$1;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverPopupPreShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
