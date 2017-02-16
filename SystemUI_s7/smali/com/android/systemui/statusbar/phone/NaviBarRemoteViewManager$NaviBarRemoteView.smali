.class public Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;
.super Ljava/lang/Object;
.source "NaviBarRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NaviBarRemoteView"
.end annotation


# instance fields
.field private mRequestClass:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->mView:Landroid/view/View;

    return-object p1
.end method

.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->this$0:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->mRequestClass:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->mView:Landroid/view/View;

    return-object v0
.end method
