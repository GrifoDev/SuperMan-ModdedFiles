.class Lcom/android/systemui/fragments/FragmentHostManager$1;
.super Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fragments/FragmentHostManager;->createFragmentHost(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$1;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-direct {p0}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 1

    const-class v0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    return-void
.end method

.method public onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$1;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p2}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap4(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/app/Fragment;)V

    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$1;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p2}, Lcom/android/systemui/fragments/FragmentHostManager;->-wrap5(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/app/Fragment;)V

    return-void
.end method
