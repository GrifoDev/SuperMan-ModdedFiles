.class Lcom/android/launcher2/HomeScreenGridSelectMenu$6;
.super Ljava/lang/Object;
.source "HomeScreenGridSelectMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeScreenGridSelectMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const/4 v0, 0x4

    const/4 v3, 0x4

    :goto_0
    sget-boolean v4, Lcom/android/launcher2/HomeScreenGridChangeHelper;->mChangeGridState:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;->this$0:Lcom/android/launcher2/HomeScreenGridSelectMenu;

    # invokes: Lcom/android/launcher2/HomeScreenGridSelectMenu;->updateBtnForScreenGrid(II)V
    invoke-static {v4, v0, v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->access$000(Lcom/android/launcher2/HomeScreenGridSelectMenu;II)V

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->changeGrid(II)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    const/4 v3, 0x5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1000e6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
