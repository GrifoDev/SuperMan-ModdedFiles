.class Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;
.super Ljava/lang/Object;
.source "BoostModeCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap4(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->-wrap1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V

    return-void
.end method
