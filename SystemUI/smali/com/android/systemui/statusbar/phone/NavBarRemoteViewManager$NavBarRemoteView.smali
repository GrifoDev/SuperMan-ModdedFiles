.class public Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;
.super Ljava/lang/Object;
.source "NavBarRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NavBarRemoteView"
.end annotation


# instance fields
.field private mRequestClass:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->mView:Landroid/view/View;

    return-object p1
.end method

.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->this$0:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->setViewLayoutParams()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->mRequestClass:Ljava/lang/String;

    return-void
.end method

.method private setViewLayoutParams()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->mView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->mView:Landroid/view/View;

    return-object v0
.end method
