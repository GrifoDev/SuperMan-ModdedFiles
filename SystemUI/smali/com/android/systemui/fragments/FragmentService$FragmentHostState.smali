.class Lcom/android/systemui/fragments/FragmentService$FragmentHostState;
.super Ljava/lang/Object;
.source "FragmentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentHostState"
.end annotation


# instance fields
.field private mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentService;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;)Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentService;->-get0(Lcom/android/systemui/fragments/FragmentService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mView:Landroid/view/View;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;-><init>(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method private handleSendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public getFragmentHostManager()Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_fragments_FragmentService$FragmentHostState_2673(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->handleSendConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public sendConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->this$0:Lcom/android/systemui/fragments/FragmentService;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentService;->-get1(Lcom/android/systemui/fragments/FragmentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/fragments/-$Lambda$Orft6iZeSCGwvUDlDavecgztrvw;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fragments/-$Lambda$Orft6iZeSCGwvUDlDavecgztrvw;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
